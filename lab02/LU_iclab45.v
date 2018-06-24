module LU(
	//input signals
	clk,
	rst_n,
	in_valid,
	in_data,
	//output signals
    out_valid, 
	invertible,
	decomposable,
	out_l,
	out_u
);
//---------------------------------------------------------------------
// INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
//input signals
input clk;
input rst_n;
input in_valid;
input in_data;
//input signals
output reg out_valid;
output reg invertible;
output reg decomposable;
output reg signed[2:0] out_l;
output reg signed[2:0] out_u;
//---------------------------------------------------------------------
// PARAMETER DECLARATION
//---------------------------------------------------------------------
parameter	ST_IDLE	= 'd0,
			ST_INPUT = 'd1,
			ST_NOT_INVERTIBLE = 'd2,
			ST_EXE = 'd3,
			ST_OUTPUT = 'd4;
			
//---------------------------------------------------------------------
//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION                             
//---------------------------------------------------------------------
reg	[2:0]	cs,ns;
reg [8:0]	in;
reg signed [2:0] u22, u23, u32, u33, l32;
reg l21, l31;
reg [4:0]	count;
wire signed [2:0] det;
assign det = {2'b0,in[0]&in[4]&in[8]}+{2'b0,in[1]&in[5]&in[6]}+{2'b0,in[2]&in[3]&in[7]}
			-{2'b0,in[2]&in[4]&in[6]}-{2'b0,in[1]&in[3]&in[8]}-{2'b0,in[0]&in[5]&in[7]};
						
//---------------------------------------------------------------------
//   DATA INPUT                             
//---------------------------------------------------------------------
/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[8] <= 1'd0;
	else if(count < 9) in[8] <= in_data;
	else if(count == 9 && in[0] == 0 && in[3] == 0 && in[6] == 1) in[8] <= in[2]; // switch r1, r3
	else in[8] <= in[8];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[7] <= 1'd0;
	else if(count < 9) in[7] <= in[8];
	else if(count == 9 && in[0] == 0 && in[3] == 0 && in[6] == 1) in[7] <= in[1]; // switch r1, r3
	else in[7] <= in[7];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[6] <= 1'd0;
	else if(count < 9) in[6] <= in[7];
	else if(count == 9 && in[0] == 0 && in[3] == 0 && in[6] == 1) in[6] <= in[0]; // switch r1, r3
	else in[6] <= in[6];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[5] <= 1'd0;
	else if(count < 9) in[5] <= in[6];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[5] <= in[2]; // switch r1, r2
	else in[5] <= in[5];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[4] <= 1'd0;
	else if(count < 9) in[4] <= in[5];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[4] <= in[1]; // switch r1, r2
	else in[4] <= in[4];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[3] <= 1'd0;
	else if(count < 9) in[3] <= in[4];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[3] <= in[0]; // switch r1, r2
	else in[3] <= in[3];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[2] <= 1'd0;
	else if(count < 9) in[2] <= in[3];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[2] <= in[5]; // switch r1, r2
	else if(count == 9 && in[0] == 0 && in[6] == 1) in[2] <= in[8]; // switch r1, r3
	else in[2] <= in[2];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[1] <= 1'd0;
	else if(count < 9) in[1] <= in[2];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[1] <= in[4]; // switch r1, r2
	else if(count == 9 && in[0] == 0 && in[6] == 1) in[1] <= in[7]; // switch r1, r3
	else in[1] <= in[1];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) in[0] <= 1'd0;
	else if(count < 9) in[0] <= in[1];
	else if(count == 9 && in[0] == 0 && in[3] == 1) in[0] <= in[3]; // switch r1, r2
	else if(count == 9 && in[0] == 0 && in[6] == 1) in[0] <= in[6]; // switch r1, r3
	else in[0] <= in[0];
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count <= 'd0;
	else if(ns==ST_INPUT || ns==ST_EXE || ns==ST_OUTPUT) count <= count + 'd1;
	else count <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) u22 <= 'd0;
	else if(count == 'd10 && in[3] == 1) u22 <= {2'b0,in[4]} - {2'b0,in[1]};
	else if(count == 'd10) u22 <= {2'b0,in[4]};
	else if(count == 'd11 && u22 == 0 && u32 != 0) u22 <= u32;
	else if(count == 'd22) u22 <= 'd0;
	else u22 <= u22;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) u23 <= 'd0;
	else if(count == 'd10 && in[3] == 1) u23 <= {2'b0,in[5]} - {2'b0,in[2]};
	else if(count == 'd10) u23 <= {2'b0,in[5]};
	else if(count == 'd11 && u22 == 0 && u32 != 0) u23 <= u33;
	else if(count == 'd22) u23 <= 'd0;
	else u23 <= u23;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) u32 <= 'd0;
	else if(count == 'd10 && in[6] == 1) u32 <= {2'b0,in[7]} - {2'b0,in[1]};
	else if(count == 'd10) u32 <= {2'b0,in[7]};
	else if(count == 'd11 && u22 == 0 && u32 != 0) u32 <= u22;
	else if(count == 'd12) u32 <= 0;
	else if(count == 'd22) u32 <= 'd0;
	else u32 <= u32;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) u33 <= 'd0;
	else if(count == 'd10 && in[6] == 1) u33 <= {2'b0,in[8]} - {2'b0,in[2]};
	else if(count == 'd10) u33 <= {2'b0,in[8]};
	else if(count == 'd11 && u22 == 0 && u32 != 0) u33 <= u23;
	else if(count == 'd12 && u32 == 0) u33 <= u33; 
	else if(count == 'd12 && u32 == u22) u33 <= u33 - u23;
	else if(count == 'd12) u33 <= u33 + u23;
	else if(count == 'd22) u33 <= 'd0;
	else u33 <= u33;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) l21 <= 'd0;
	else if(count == 'd10 && in[3] == 1) l21 <= 'd1;
	else if(count == 'd11 && u22 == 0 && u32 != 0) l21 <= l31;
	else if(count == 'd22) l21 <= 'd0;
	else l21 <= l21;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) l31 <= 'd0;
	else if(count == 'd10 && in[6] == 1) l31 <= 'd1;
	else if(count == 'd11 && u22 == 0 && u32 != 0) l31 <= l21;
	else if(count == 'd22) l31 <= 'd0;
	else l31 <= l31;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) l32 <= 'd0;
	else if(count == 'd12 && u32 != 0 && u32 == u22) l32 <= 'd1;
	else if(count == 'd12 && u32 != 0) l32 <= 3'b111;
	else if(count == 'd22) l32 <= 'd0;
	else l32 <= l32;
end
//---------------------------------------------------------------------
//   Finite-State Machine                                          
//---------------------------------------------------------------------
always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs	<= ns;
end

always@(*) begin
	case(cs)
		ST_IDLE:
		begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT:
		begin
			if(count == 9 && det != 0) ns = ST_EXE;
			else if(count == 9 && det == 0) ns = ST_NOT_INVERTIBLE;
			else ns	= ST_INPUT;
		end
		
		ST_NOT_INVERTIBLE:
		begin
			ns = ST_IDLE;
		end
		ST_EXE:
		begin
			if(count == 'd13) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end
		
		ST_OUTPUT:
		begin
			if(count == 'd22) ns = ST_IDLE;
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
	else if(ns == ST_NOT_INVERTIBLE || ns == ST_OUTPUT) out_valid <= 'd1;
	else out_valid <= 'd0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) invertible <= 'd0;
	else if(ns == ST_OUTPUT) invertible <= 'd1;
	else invertible <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) decomposable <= 'd0;
	else if(ns == ST_OUTPUT) decomposable <= 'd1;
	else decomposable <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_l <= 'd0;
	else if(ns == ST_OUTPUT)
	begin
		case(count)
			'd13: out_l <= 'd1;
			'd14: out_l <= 'd0;
			'd15: out_l <= 'd0;
			'd16: out_l <= l21;
			'd17: out_l <= 'd1;
			'd18: out_l <= 'd0;
			'd19: out_l <= l31;
			'd20: out_l <= l32;
			'd21: out_l <= 'd1;
			default: out_l <= 'd0;
		endcase
	end
	else out_l <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_u <= 'd0;
	else if(ns == ST_OUTPUT)
	begin
		case(count)
			'd13: out_u <= 'd1;
			'd14: out_u <= in[1];
			'd15: out_u <= in[2];
			'd16: out_u <= 'd0;
			'd17: out_u <= u22;
			'd18: out_u <= u23;
			'd19: out_u <= 'd0;
			'd20: out_u <= 'd0;
			'd21: out_u <= u33;
			default: out_u <= 'd0;
		endcase
	end
	else out_u <= 'd0;
end
endmodule
