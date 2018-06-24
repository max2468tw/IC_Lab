module B2BCD_unit#(
  parameter BINARY_WID = 12,
  parameter BCD_DIG = 4 
)
(
  input [BINARY_WID-1:0] binary_code,
  output reg [BCD_DIG*4-1:0] BCD_code
);

reg [BCD_DIG*4-1:0] my_net [0:(BINARY_WID-3)];
genvar i;
genvar j;
genvar stage;

always@(*) begin
	my_net[0] = {binary_code};
end

generate
	for(stage=0;stage < (BINARY_WID-3);stage=stage+1) begin: stage_name
		for(i=0;i < (BINARY_WID-3)-stage;i=i+1) begin: connect_1
			always@(*) begin
				my_net[stage+1][i] = my_net[stage][i];
			end
		end
		for(i=0;i < (stage/3)+1;i=i+1) begin: add3
			if(BINARY_WID-stage+i*4 < BCD_DIG*4) begin: add3_1
				always@(*) begin
					if(my_net[stage][BINARY_WID-stage+i*4:(BINARY_WID-3)-stage+i*4] > 4) begin
						my_net[stage+1][BINARY_WID-stage+i*4:(BINARY_WID-3)-stage+i*4] 
							= my_net[stage][BINARY_WID-stage+i*4:(BINARY_WID-3)-stage+i*4] + 4'd3;
					end
					else begin
						my_net[stage+1][BINARY_WID-stage+i*4:(BINARY_WID-3)-stage+i*4] 
							= my_net[stage][BINARY_WID-stage+i*4:(BINARY_WID-3)-stage+i*4];
					end
				end
			end
			else begin: connect
				for(j=(BINARY_WID-3)-stage+i*4;j < BCD_DIG*4;j=j+1) begin: connect_4
					always@(*) begin
						my_net[stage+1][j] = my_net[stage][j];
					end
				end
			end
		end
		for(i=(BINARY_WID-3)-stage+(stage/3+1)*4;i < BCD_DIG*4;i=i+1) begin: connect_2
			always@(*) begin
				my_net[stage+1][i] = my_net[stage][i];
			end
		end
	end
	
	if(BINARY_WID-3 > 0) begin: output_1
		always@(*) begin
			 BCD_code = my_net[BINARY_WID-3];
		end
	end
	else begin: output_2
		always@(*) begin
			 BCD_code = my_net[0];
		end
	end
	
endgenerate

endmodule
