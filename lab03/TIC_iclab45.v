module TIC(
        // input signals
	clk,
	rst_n,
	in_valid_1,
	in_valid_2,
	in_stone,
	in_action,
	in_starting_pos,
        // output signals
    out_valid,
	out_combo
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
//input signals
input clk;
input rst_n;
input in_valid_1;
input in_valid_2;
input [2:0] in_stone;
input [2:0] in_action;
input [5:0] in_starting_pos;
//output signals
output reg out_valid;
output reg [3:0] out_combo;

//---------------------------------------------------------------------
// PARAMETER DECLARATION
//---------------------------------------------------------------------
parameter	ST_IDLE	= 'd0,
			ST_INPUT_1 = 'd1,
			ST_INPUT_2 = 'd2,
			ST_EXE = 'd3,
			ST_OUTPUT = 'd4;

//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION                             
//---------------------------------------------------------------------
reg	[2:0] cs,ns;
reg [89:0] in;
reg [4:0] comapre_horizon;
reg [3:0] comapre_vertical;
reg [2:0] action;
reg [5:0] in_pos;
reg [89:0] pos;
reg [17:0] row;
reg [14:0] col;
reg [3:0] combo_horizon;
reg [3:0] combo_vertical;
reg [3:0] count;

//---------------------------------------------------------------------
//   DATA INPUT                             
//---------------------------------------------------------------------
/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in <= 90'd0;
	else if(ns == ST_INPUT_1) in <= {in_stone, in[89:3]};
	else if(cs == ST_INPUT_2)
	begin
		case(action)
			0: // up
			begin
				if (in_pos[5:3] != 0)
				begin
					in <= (in & (~(90'b111000000000000000111 << ((pos-6)*3)))) | 
						((in >> 18) & (90'b111 << ((pos-6)*3))) |
						((in << 18) & (90'b111 << (pos*3)));
				end
				else in <= in;
			end
			1: // down
			begin
				if (in_pos[5:3] != 4)
				begin
					in <= (in & (~(90'b111000000000000000111 << ((pos)*3)))) |
						((in >> 18) & (90'b111 << (pos*3))) |
						((in << 18) & (90'b111 << ((pos+6)*3)));
				end
				else in <= in;
			end
			2: // left
			begin
				if (in_pos[2:0] != 0)
				begin
					in <= (in & (~(90'b111111 << ((pos-1)*3)))) |
						((in >> 3) & (90'b111 << ((pos-1)*3))) |
						((in << 3) & (90'b111 << (pos*3)));
				end
				else in <= in;
			end
			3: // right
			begin
				if (in_pos[2:0] != 5)
				begin
					in <= (in & (~(90'b111111 << (pos*3)))) |
						((in >> 3) & (90'b111 << (pos*3))) |
						((in << 3) & (90'b111 << ((pos+1)*3)));
				end
				else in <= in;
			end
			4: // up right
			begin
				if (in_pos[5:3] != 0 && in_pos[2:0] != 5)
				begin
					in <= (in & (~(90'b111000000000000111 << ((pos-5)*3)))) |
						((in >> 15) & (90'b111 << ((pos-5)*3))) |
						((in << 15) & (90'b111 << (pos*3)));
				end
				else in <= in;
			end
			5: // down left
			begin
				if (in_pos[5:3] != 4 && in_pos[2:0] != 0)
				begin
					in <= (in & (~(90'b111000000000000111 << (pos*3)))) |
						((in >> 15) & (90'b111 << (pos*3))) |
						((in << 15) & (90'b111 << ((pos+5)*3)));
				end
				else in <= in;
			end
			6: // up left
			begin
				if (in_pos[5:3] != 0 && in_pos[2:0] != 0)
				begin
					in <= (in & (~(90'b111000000000000000000111 << ((pos-7)*3)))) |
						((in >> 21) & (90'b111 << ((pos-7)*3))) |
						((in << 21) & (90'b111 << (pos*3)));
				end
				else in <= in;
			end
			7: // down right
			begin
				if (in_pos[5:3] != 4 && in_pos[2:0] != 5)
				begin
					in <= (in & (~(90'b111000000000000000000111 << (pos*3)))) |
						((in >> 21) & (90'b111 << (pos*3))) |
						((in << 21) & (90'b111 << ((pos+7)*3)));
				end
				else in <= in;
			end
		endcase
	end
	else in <= in;
end
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count <= 'd0;
	else if(ns == ST_EXE || ns == ST_OUTPUT) count <= count + 1;
	else count <= 0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) row <= 'd0;
	else if(cs == ST_EXE && count > 0 &&count < 6)
		row <= (in >> (count-1)*18);
	else row <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) col <= 'd0;
	else if(cs == ST_EXE && count > 0 && count < 7)
		case((count-1))
			0: col <= {in[2:0],in[20:18],in[38:36],in[56:54],in[74:72]};
			1: col <= {in[5:3],in[23:21],in[41:39],in[59:57],in[77:75]};
			2: col <= {in[8:6],in[26:24],in[44:42],in[62:60],in[80:78]};
			3: col <= {in[11:9],in[29:27],in[47:45],in[65:63],in[83:81]};
			4: col <= {in[14:12],in[32:30],in[50:48],in[68:66],in[86:84]};
			5: col <= {in[17:15],in[35:33],in[53:51],in[71:69],in[89:87]};
			default: col <= 'd0;
		endcase
	else col <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) comapre_horizon <= 'd0;
	else 
		comapre_horizon <= {row[2:0] == row[5:3],
				row[5:3] == row[8:6],
				row[8:6] == row[11:9],
				row[11:9] == row[14:12],
				row[14:12] == row[17:15]};
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) comapre_vertical <= 'd0;
	else
		comapre_vertical <= {col[2:0] == col[5:3],
				col[5:3] == col[8:6],
				col[8:6] == col[11:9],
				col[11:9] == col[14:12]};
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) combo_horizon <= 0;
	else if (cs == ST_EXE && count > 2 && count < 8) begin
		case(comapre_horizon)
			5'b11011: combo_horizon <= combo_horizon + 2;
			5'b11000,5'b01100,5'b00110,5'b00011,
			5'b11100,5'b01110,5'b00111,5'b11001,5'b10011,5'b11010,5'b01011,5'b01101,5'b10110,
			5'b11110,5'b01111,5'b11101,5'b10111,
			5'b11111: combo_horizon<=combo_horizon+1;
			default: combo_horizon <= combo_horizon;
		endcase
	end
	else if(ns == ST_IDLE)
		combo_horizon <= 0;
	else
		combo_horizon <= combo_horizon;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) combo_vertical <= 0;
	else if (cs == ST_EXE && count > 2 && count < 9) begin
		case(comapre_vertical)
			4'b1100,4'b0110,4'b0011,
			4'b1110,4'b0111,4'b1101,4'b1011,
			4'b1111: combo_vertical <= combo_vertical + 1;
			default: combo_vertical <= combo_vertical;
		endcase
	end
	else if(ns == ST_IDLE)
		combo_vertical <= 0;
	else
		combo_vertical <= combo_vertical;
end
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) action <= 3'd0;
	else if(ns == ST_INPUT_2) action <= in_action;
	else action <= 3'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in_pos <= 6'd0;
	else if(cs == ST_IDLE && ns == ST_INPUT_2) in_pos <= in_starting_pos;
	else if(cs == ST_INPUT_2) begin
		case(action)
		3'd0: in_pos <= {((in_pos[5:3] > 3'd0)?(in_pos[5:3]-1):3'd0),in_pos[2:0]}; // up
		3'd1: in_pos <= {((in_pos[5:3] < 3'd4)?(in_pos[5:3]+1):3'd4),in_pos[2:0]}; // down
		3'd2: in_pos <= {in_pos[5:3],((in_pos[2:0] > 3'd0)?(in_pos[2:0]-3'd1):3'd0)}; // left
		3'd3: in_pos <= {in_pos[5:3],((in_pos[2:0] < 3'd5)?(in_pos[2:0]+3'd1):3'd5)}; // right
		3'd4: in_pos <= (in_pos[5:3]>3'd0 && in_pos[2:0]<3'd5)?{(in_pos[5:3]-3'd1),(in_pos[2:0]+3'd1)}:in_pos; // up right
		3'd5: in_pos <= (in_pos[5:3]<3'd4 && in_pos[2:0]>3'd0)?{(in_pos[5:3]+3'd1),(in_pos[2:0]-3'd1)}:in_pos; // down left
		3'd6: in_pos <= (in_pos[5:3]>3'd0 && in_pos[2:0]>3'd0)?{(in_pos[5:3]-3'd1),(in_pos[2:0]-3'd1)}:in_pos; // up left
		3'd7: in_pos <= (in_pos[5:3]<3'd4 && in_pos[2:0]<3'd5)?{(in_pos[5:3]+3'd1),(in_pos[2:0]+3'd1)}:in_pos; // down right
		endcase
	end
	else in_pos <= 6'd0; 
end

always@(*) begin
	pos = in_pos[5:3]*6 + in_pos[2:0];
end

//---------------------------------------------------------------------
//   Finite-State Mechine                                          
//---------------------------------------------------------------------
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs <= ns;
end

always@(*)begin
	case(cs)
		ST_IDLE:
		begin
			if(in_valid_1) ns = ST_INPUT_1;
			else if(in_valid_2) ns = ST_INPUT_2;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT_1:
		begin
			if(!in_valid_1) ns = ST_IDLE;
			else ns	= ST_INPUT_1;
		end
		
		ST_INPUT_2:
		begin
			if(!in_valid_2) ns = ST_EXE;
			else ns	= ST_INPUT_2;
		end
		
		ST_EXE:
		begin
			if(count == 8) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end
		
		ST_OUTPUT:
		begin
			if(count == 10) ns = ST_IDLE;
			else ns = ST_OUTPUT;
		end
		
		default:
		begin
			ns = ST_IDLE;
		end
	endcase
end
/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_valid <= 'd0;
	else if(ns == ST_OUTPUT) out_valid <= 'd1;
	else out_valid <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_combo <= 'd0;
	else if(ns == ST_OUTPUT)
	begin
		case(count)
		4'd8: out_combo <= combo_horizon;
		4'd9: out_combo <= combo_vertical;
		default:
			out_combo <= 'd0;
		endcase
	end
	else out_combo <= 'd0;
end
endmodule