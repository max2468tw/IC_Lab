//synopsys translate_off 
`include "/usr/synthesis/dw/sim_ver/DW02_mult.v"
`include "B2BCD_unit.v"
//synopsys translate_on

module SA(
////Output Port
	clk,
	rst_n,
	in_valid,
	in,
////Input Port
	out_valid,
	out
);
//Port Declaration
output reg				out_valid;
output reg		[3:0]	out;
input  					clk;
input      				rst_n; 
input      				in_valid;
input 			[3:0] 	in; 

parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_EXE		=	'd2,
			ST_OUTPUT	=	'd3;

integer i;

reg	[1:0]	cs,ns;
reg [3:0]	in_data [0:5];
reg [3:0]	sort_1[0:3];
reg [3:0]	sort_2[0:3];
reg [3:0]	sort_3[0:3];
reg [3:0]	sort_4[0:3];
reg [9:0]	multiplicand;
reg [9:0]	multiplier;
reg [19:0]	result;
wire [27:0] BCD;
reg [3:0]	count;
wire [19:0] max;
wire [19:0] min;
assign max = (in_data[5]>=in_data[4])?{in_data[5]}:{in_data[4]};
assign min = (in_data[5]<in_data[4])?{in_data[5]}:{in_data[4]};

B2BCD_unit#(20,7)
u1 (.binary_code(result),.BCD_code(BCD));

/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		for(i = 0;i < 6;i = i + 1)
			in_data[i] <= 0;
	end
	else if(in_valid) begin
		for(i = 1;i < 6;i = i + 1)
			in_data[i] <= in_data[i-1];
		in_data[0] <= in;
	end
	else begin
		for(i = 0;i < 6;i = i + 1)
			in_data[i] <= in_data[i];
	end
end

always@(*) begin
	if(in_data[3] < in_data[2]) sort_1[3] = in_data[2];
	else sort_1[3] = in_data[3];
	if(in_data[2] > in_data[3]) sort_1[2] = in_data[3];
	else sort_1[2] = in_data[2];
	if(in_data[1] < in_data[0]) sort_1[1] = in_data[0];
	else sort_1[1] = in_data[1];
	if(in_data[0] > in_data[1]) sort_1[0] = in_data[1];
	else sort_1[0] = in_data[0];
end

always@(*) begin
	sort_2[3] = sort_1[3];
	if(sort_1[2] < sort_1[1]) sort_2[2] = sort_1[1];
	else sort_2[2] = sort_1[2];
	if(sort_1[1] > sort_1[2]) sort_2[1] = sort_1[2];
	else sort_2[1] = sort_1[1];
	sort_2[0] = sort_1[0];
end

always@(*) begin
	if(sort_2[3] < sort_2[2]) sort_3[3] = sort_2[2];
	else sort_3[3] = sort_2[3];
	if(sort_2[2] > sort_2[3]) sort_3[2] = sort_2[3];
	else sort_3[2] = sort_2[2];
	if(sort_2[1] < sort_2[0]) sort_3[1] = sort_2[0];
	else sort_3[1] = sort_2[1];
	if(sort_2[0] > sort_2[1]) sort_3[0] = sort_2[1];
	else sort_3[0] = sort_2[0];
end

always@(*) begin
	sort_4[3] = sort_3[3];
	if(sort_3[2] < sort_3[1]) sort_4[2] = sort_3[1];
	else sort_4[2] = sort_3[2];
	if(sort_3[1] > sort_3[2]) sort_4[1] = sort_3[2];
	else sort_4[1] = sort_3[1];
	sort_4[0] = sort_3[0];
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) multiplicand <= 0;
	else if(ns==ST_EXE && count == 1) multiplicand <= max*10 + sort_4[3] + sort_4[2]*100;
	else if(ns==ST_EXE && count == 0) multiplicand <= max*10 + sort_4[3] + sort_4[1]*100;
	else multiplicand <= multiplicand;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) multiplier <= 0;
	else if(ns==ST_EXE && count == 1) multiplier <= min*10 + sort_4[1] + sort_4[0]*100;
	else if(ns==ST_EXE && count == 0) multiplier <= min*10 + sort_4[2] + sort_4[0]*100;
	else multiplier <= multiplier;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) result <= 0;
	else if(count == 1) result <= multiplicand*multiplier;
	else if(multiplicand*multiplier < result) result <= multiplicand*multiplier;
	else result <= result;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count <= 'd0;
	else if(ns == ST_EXE || ns == ST_OUTPUT) count <= count+'d1;
	else count <= 'd0;
end
////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs	<= ns;
end

always@(*) begin
	case(cs)
		ST_IDLE: begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT: begin
			if(!in_valid) ns =	ST_EXE;
			else ns	= ST_INPUT;
		end
		
		ST_EXE: begin
			if(count == 2) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end
		
		ST_OUTPUT: begin
			if(count == 8) ns = ST_IDLE;
			else ns	= ST_OUTPUT;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out_valid <= 'd0;
	else if(cs==ST_OUTPUT) out_valid <=	'd1;
	else out_valid <= 'd0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) out <= 'd0;
	else if(cs==ST_OUTPUT) out <= BCD >> (6-(count-2))*4;
	else out <=	'd0;
end

endmodule



