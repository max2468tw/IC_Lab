module MS(
	rst_n,
	clk,
	in_valid,
	maze,
	player_x,
	player_y,
	prize_x_1,
	prize_y_1,
	prize_x_2,
	prize_y_2,
	prize_x_3,
	prize_y_3,
	out_valid,
	out_x,
	out_y
);


input rst_n, clk, in_valid;
input [14:0] maze;
input [3:0] player_x, player_y;
input [3:0] prize_x_1, prize_y_1;
input [3:0] prize_x_2, prize_y_2;
input [3:0] prize_x_3, prize_y_3;
output reg out_valid;
output reg [3:0] out_x, out_y ;

parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_INIT		= 	'd2,
			ST_UP		= 	'd3,
			ST_DOWN		=	'd4,
			ST_RIGHT	=	'd5,
			ST_LEFT		=	'd6,
			ST_EXE		=	'd7,
			ST_PATH		=	'd8,
			ST_OUTPUT	=	'd9;
			
reg	[3:0] cs,ns;
reg [3:0] px, py;
reg [3:0] px_1, py_1;
reg [3:0] px_2, py_2;
reg [3:0] px_3, py_3;
reg [224:0]	m;
reg [224:0] visited;
reg [135:0] queue;


wire [7:0] Q_1,Q_2;
wire CEN;
reg WEN_1;
reg WEN_2;
reg [7:0] A_1, A_2;
reg [7:0] D_1, D_2;
wire OEN;

reg [7:0] start;
reg [7:0] last_start;


reg [5:0]count_q;
reg [1:0] count_prize;
reg [7:0] count_path;
reg [7:0] count_output;
reg finished_1,finished_2,finished_3;
reg [7:0] first_finished_address;
reg [7:0] second_finished_address;
reg [7:0] third_finished_address;
reg success;

/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) m <= 'd0;
	else if(in_valid) m <= {maze,m[224:15]};
	else  m <= m;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		px <= 'd0;
		py <= 'd0;
	end
	else if(in_valid) begin
		px <= player_x;
		py <= player_y;
	end
	else begin
		px <= px;
		py <= py;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		px_1 <= 'd0;
		py_1 <= 'd0;
	end
	else if(in_valid) begin
		px_1 <= prize_x_1;
		py_1 <= prize_y_1;
	end
	else if (finished_1) begin
		px_1 <= 8'hff;
		py_1 <= 8'hff;
	end
	else begin
		px_1 <= px_1;
		py_1 <= py_1;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		px_2 <= 'd0;
		py_2 <= 'd0;
	end
	else if(in_valid) begin
		px_2 <= prize_x_2;
		py_2 <= prize_y_2;
	end
	else if(finished_2) begin
		px_2 <= 8'hff;
		py_2 <= 8'hff;
	end
	else begin
		px_2 <= px_2;
		py_2 <= py_2;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		px_3 <= 'd0;
		py_3 <= 'd0;
	end
	else if(in_valid) begin
		px_3 <= prize_x_3;
		py_3 <= prize_y_3;
	end
	else if(finished_3) begin
		px_3 <= 8'hff;
		py_3 <= 8'hff;
	end
	else begin
		px_3 <= px_3;
		py_3 <= py_3;
	end
end
/////////////////
//Execute Logic//
/////////////////
wire [7:0] cur = queue[7:0];

wire [7:0] up = {cur[7:4],cur[3:0]-4'b1};
wire [7:0] down = {cur[7:4],cur[3:0]+4'b1};
wire [7:0] left = {cur[7:4]-4'b1,cur[3:0]};
wire [7:0] right = {cur[7:4]+4'b1,cur[3:0]};

wire [7:0] up_position = {up[3:0],up[7:4]}-up[3:0];
wire [7:0] down_position = {down[3:0],down[7:4]}-down[3:0];
wire [7:0] left_position = {left[3:0],left[7:4]}-left[3:0];
wire [7:0] right_position = {right[3:0],right[7:4]}-right[3:0];

wire up_valid = (((m>>up_position)&225'b1)==0)&&(((visited>>up_position)&225'b1)==0)&&(cur[3:0]!=4'd0);
wire down_valid = (((m>>down_position)&225'b1)==0)&&(((visited>>down_position)&225'b1)==0)&&(cur[3:0]!=4'd14);
wire left_valid = (((m>>left_position)&225'b1)==0)&&(((visited>>left_position)&225'b1)==0)&&(cur[7:4]!=4'd0);
wire right_valid = (((m>>right_position)&225'b1)==0)&&(((visited>>right_position)&225'b1)==0)&&(cur[7:4]!=4'd14);

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) visited <= 0;
	else if(ns == ST_INIT) visited <= (225'b1 << ({start[3:0],start[7:4]}-start[3:0]));
	else if(ns == ST_UP) visited <= visited|(225'b1<<up_position);
	else if(ns == ST_DOWN) visited <= visited|(225'b1<<down_position);
	else if(ns == ST_RIGHT) visited <= visited|(225'b1<<right_position);
	else if(ns == ST_LEFT) visited <= visited|(225'b1<<left_position);
	else visited <= visited;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) start <= 0;
	else if(ns == ST_INPUT) start <= {px,py};
	else if(finished_1) start <= {px_1,py_1};
	else if(finished_2) start <= {px_2,py_2};
	else if(finished_3) start <= {px_3,py_3};
	else start <= start;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) queue <= 0;
	else if(ns == ST_INIT) queue <= {128'b0,start};
	else if(ns == ST_EXE) queue <= queue >> 8;
	else if(ns == ST_UP) queue <= queue | ({128'b0,up} << (count_q*8));
	else if(ns == ST_DOWN) queue <= queue| ({128'b0,down} << (count_q*8));
	else if(ns == ST_RIGHT) queue <= queue| ({128'b0,right} << (count_q*8));
	else if(ns == ST_LEFT) queue <= queue| ({128'b0,left} << (count_q*8));
	else queue <= queue;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) count_q <= 0;
	else if(ns == ST_INIT) count_q <= 1;
	else if(ns == ST_EXE) count_q <= count_q-1;
	else if(ns==ST_UP||ns==ST_DOWN||ns==ST_RIGHT||ns==ST_LEFT) count_q <= count_q+1;
	else count_q <= count_q;
end

always@(*) begin
	if(A_1 == last_start && WEN_2 == 0) success = 1;
	else success = 0;
end

always@(*) begin
	if({px_1,py_1}==cur) finished_1 = 1;
	else finished_1 = 0;
end

always@(*) begin
	if({px_2,py_2}==cur) finished_2 = 1;
	else finished_2 = 0;
end

always@(*) begin
	if({px_3,py_3}==cur) finished_3 = 1;
	else finished_3 = 0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) count_path <= 0;
	else if(ns == ST_PATH) count_path <= count_path + 1;
	else count_path <= 0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) count_output <= 0;
	else if(ns == ST_OUTPUT) count_output <= count_output + 1;
	else count_output <= 0;
end

RA1SH U1(.Q(Q_1),.CLK(clk),.CEN(CEN),.WEN(WEN_1),.A(A_1),.D(D_1),.OEN(OEN));
RA1SH U2(.Q(Q_2),.CLK(clk),.CEN(CEN),.WEN(WEN_2),.A(A_2),.D(D_2),.OEN(OEN));

assign CEN = 0;
assign OEN = 0;

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) A_1 <= 8'hff;
	else if(ns == ST_UP) A_1 <= up;
	else if(ns == ST_DOWN) A_1 <= down;
	else if(ns == ST_RIGHT) A_1 <= right;
	else if(ns == ST_LEFT) A_1 <= left;
	else if(ns == ST_PATH && count_path == 0) A_1 <= cur;
	else if(ns == ST_PATH && (count_path&8'b1) == 0) A_1 <= Q_1;
	else A_1 <= 8'hff;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) D_1 <= 0;
	else if(ns==ST_UP||ns==ST_DOWN||ns==ST_RIGHT||ns==ST_LEFT) D_1 <= cur;
	else D_1 <= 0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) WEN_1 <= 1;
	else if(ns==ST_UP||ns==ST_DOWN||ns==ST_RIGHT||ns==ST_LEFT) WEN_1 <= 0;
	else WEN_1 <= 1;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) A_2 <= 0;
	else if(ns == ST_IDLE) A_2 <= 0;
	else if(ns == ST_PATH && (count_path&8'b1) == 0) A_2 <= A_2 + 1;
	else if(ns == ST_OUTPUT && count_output == 0) A_2 <= first_finished_address;
	else if(ns == ST_OUTPUT && count_output == first_finished_address) A_2 <= second_finished_address - 1;
	else if(ns == ST_OUTPUT && count_output == second_finished_address-1) A_2 <= third_finished_address - 1;
	else if(ns == ST_OUTPUT) A_2 <= A_2-1;
	else A_2 <= A_2;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) D_2 <= 0;
	else if(ns == ST_PATH && count_path == 0) D_2 <= cur;
	else if(ns == ST_PATH && (count_path&8'b1) == 0) D_2 <= Q_1;
	else D_2 <= 0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) WEN_2 <= 1;
	else if(ns == ST_PATH && (count_path&8'b1) == 0) WEN_2 <= 0;
	else WEN_2 <= 1;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) first_finished_address <= 0;
	else if(success && count_prize == 0) first_finished_address <= A_2;
	else first_finished_address <= first_finished_address;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) second_finished_address <= 0;
	else if(success && count_prize == 1) second_finished_address <= A_2;
	else second_finished_address <= second_finished_address;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) third_finished_address <= 0;
	else if(success && count_prize == 2) third_finished_address <= A_2;
	else third_finished_address <= third_finished_address;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count_prize <= 0;
	else if(ns == ST_IDLE) count_prize <= 0;
	else if(success) count_prize <= count_prize + 1;
	else count_prize <= count_prize;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) last_start <= 0;
	else if(finished_1|finished_2|finished_3) last_start <= start;
	else last_start <= last_start;
end
////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs <= ns;
end

always@(*)	begin
	case(cs)
		ST_IDLE: begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT: begin
			if(!in_valid) ns = ST_INIT;
			else ns	= ST_INPUT;
		end
		
		ST_INIT: begin
			if(up_valid) ns = ST_UP;
			else if(down_valid) ns = ST_DOWN;
			else if(right_valid) ns = ST_RIGHT;
			else if(left_valid) ns = ST_LEFT;
			else ns	= ST_EXE;
		end
		
		ST_UP: begin
			if(down_valid) ns = ST_DOWN;
			else if(right_valid) ns = ST_RIGHT;
			else if(left_valid) ns = ST_LEFT;
			else ns	= ST_EXE;
		end
		
		ST_DOWN: begin
			if(right_valid) ns = ST_RIGHT;
			else if(left_valid) ns = ST_LEFT;
			else ns	= ST_EXE;
		end
		
		ST_RIGHT: begin
			if(left_valid) ns = ST_LEFT;
			else ns	= ST_EXE;
		end
		
		ST_LEFT: begin
			ns = ST_EXE;
		end
		
		ST_EXE: begin
			if(finished_1|finished_2|finished_3) ns = ST_PATH;
			else if(up_valid) ns = ST_UP;
			else if(down_valid) ns = ST_DOWN;
			else if(right_valid) ns = ST_RIGHT;
			else if(left_valid) ns = ST_LEFT;
			else ns	= ST_EXE;
		end
		
		ST_PATH: begin
			if(success && count_prize == 2) ns = ST_OUTPUT;
			else if(success) ns = ST_INIT;
			else ns = ST_PATH;
		end
		
		ST_OUTPUT: begin
			if(count_output > third_finished_address-1) ns = ST_IDLE;
			else ns	= ST_OUTPUT;
		end
		
		default: begin
			ns = ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_valid <= 'd0;
	else if(ns == ST_OUTPUT && count_output >= 2) out_valid	<= 'd1;
	else out_valid <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_x <= 'd0;
	else if(ns == ST_OUTPUT && count_output >= 2) out_x	<= Q_2[7:4];
	else out_x <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_y <= 'd0;
	else if(ns == ST_OUTPUT && count_output >= 2) out_y	<= Q_2[3:0];
	else out_y <= 'd0;
end

endmodule