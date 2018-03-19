module tb2;

reg [5:0] in;
reg [5:0] in_max_1;
reg [5:0] in_max_2;
reg [5:0] in_max_3;

wire [6-1:0] max_1;
wire [6-1:0] max_2;
wire [6-1:0] max_3;

Compare utt(
	.in(in),
	.in_max_1(in_max_1),
	.in_max_2(in_max_2),
	.in_max_3(in_max_3),
	.max_1(max_1),
	.max_2(max_2),
	.max_3(max_3)
);

initial begin

in = 6'b000001;
in_max_1 = 6'b000010;
in_max_2 = 6'b100000;
in_max_3 = 6'b100000;

end

endmodule