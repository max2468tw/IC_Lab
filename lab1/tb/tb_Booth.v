module tb_Booth;

reg [5:0] in_1;
reg [5:0] in_2;
reg [5:0] in_3;
reg [5:0] in_4;
reg [5:0] in_5;
  
wire [2*6-1:0] out; //product

Booth u(
	.in_1(in_1), 
	.in_2(in_2), 
	.in_3(in_3), 
	.in_4(in_4), 
	.in_5(in_5),
	.out(out)
);

initial begin

in_1 = 30;
in_2 = 9;
in_3 = 26;
in_4 = 19;
in_5 = 30;

end

endmodule