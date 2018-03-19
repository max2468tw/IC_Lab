module tb_Booth_decorder;

reg[5:0] A;
reg[2:0] MODE;
wire[11:0] OUT;

Booth_decorder uut(
.A(A),
.MODE(MODE),
.OUT(OUT));

initial begin

A = 6'b011110;
MODE = 3'b100;

end

endmodule