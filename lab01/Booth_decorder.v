module Booth_decorder (
A,
MODE,
OUT);

input signed [5:0] A;
input [2:0] MODE;
output reg signed [11:0] OUT;

always@(*)
begin
  case(MODE)
  3'b000, 3'b111: OUT = 0;
  3'b001, 3'b010: OUT = A;
  3'b011: OUT = A + A;
  3'b100: OUT = -(A + A);
  3'b101, 3'b110: OUT = - A;
  endcase
end

endmodule 
