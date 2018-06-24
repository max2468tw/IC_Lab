module GD(
	rst_n,
	clk,
	in_valid,
	in_A,
	in_B,
	out_valid,
	out_data
);

// s_INPUT/OUTPUTS
input rst_n, clk, in_valid;
input signed [3:0] in_A;
input signed [3:0] in_B; // signed
output reg out_valid;
output reg signed [20:0]out_data;

parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_EXE		=	'd2,
			ST_OUTPUT	=	'd3;

reg	[1:0]	cs,ns;
reg signed [3:0] A, B;
reg signed [20:0] B_f;
reg signed [20:0] x;
reg signed [20:0] m;
reg [4:0] count;

/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) A <= 'd0;
	else if(ns == ST_INPUT) A <= in_A;
	else  A	<= A;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) B <= 'd0;
	else if(ns == ST_INPUT) B <= in_B;
	else  B <= B;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) x <= 'd0;
	else if(ns == ST_INPUT) x <= 0;
	else if(ns == ST_EXE) x <= x - (m >>> 2);
	else  x <= x;
end

always@(*) begin
	B_f = B;
end
always@(*) begin
	m = A*x + (B_f << 16);
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count <= 'd0;
	else if(ns==ST_EXE) count <= count+'d1;
	else count <= 'd0;
end
////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs <= ns;
end

always@(*) begin
	case(cs)
		ST_IDLE: begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT: begin
			ns = ST_EXE;
		end
		
		ST_EXE:		begin
			if(count == 20) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end
		
		ST_OUTPUT:	begin
			ns	=	ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_valid <= 'd0;
	else if(ns==ST_OUTPUT) out_valid <= 'd1;
	else out_valid <= 'd0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_data <= 'd0;
	else if(ns==ST_OUTPUT) out_data <= x;
	else out_data <= 'd0;
end

endmodule