`include "Compare.v"
`include "Booth_decorder.v"
module Booth (
	in_1, 
	in_2, 
	in_3, 
	in_4, 
	in_5,
	out
);
parameter width = 6;
input signed [width-1:0] in_1;   
input signed [width-1:0] in_2;   
input signed [width-1:0] in_3;   
input signed [width-1:0] in_4;   
input signed [width-1:0] in_5;   
   
output signed[2*width-1:0] out; //product

wire [5:0] min_value;
wire [5:0] u1_max_1, u1_max_2;
wire [5:0] u2_max_1, u2_max_2, u2_max_3;
wire [5:0] u3_max_1, u3_max_2, u3_max_3;
wire [5:0] u4_max_1, u4_max_2, u4_max_3;

wire [11:0] OUT1;
wire [11:0] OUT2;
wire [11:0] OUT3;

assign min_value = 6'b100000;

assign u1_max_1 = (in_1 > in_2)?in_1:in_2;
assign u1_max_2 = (in_1 > in_2)?in_2:in_1;

Compare u2(
	.in(in_3),
	.in_max_1(u1_max_1),.in_max_2(u1_max_2),.in_max_3(min_value),
	.max_1(u2_max_1),.max_2(u2_max_2),.max_3(u2_max_3)
);
Compare u3(
	.in(in_4),
	.in_max_1(u2_max_1),.in_max_2(u2_max_2),.in_max_3(u2_max_3),
	.max_1(u3_max_1),.max_2(u3_max_2),.max_3(u3_max_3)
);
Compare u4(
	.in(in_5),
	.in_max_1(u3_max_1),.in_max_2(u3_max_2),.in_max_3(u3_max_3),
	.max_1(u4_max_1),.max_2(u4_max_2),.max_3(u4_max_3)
);

wire [2:0] MODE1, MODE2, MODE3;
assign MODE1 = {u4_max_3[1:0],1'b0};
assign MODE2 = u4_max_3[3:1];
assign MODE3 = u4_max_3[5:3];

Booth_decorder uut1(.A(u4_max_2),.MODE(MODE1),.OUT(OUT1));
Booth_decorder uut2(.A(u4_max_2),.MODE(MODE2),.OUT(OUT2));
Booth_decorder uut3(.A(u4_max_2),.MODE(MODE3),.OUT(OUT3));

assign out = (OUT3 << 4) + (OUT2 << 2) + OUT1;

endmodule




