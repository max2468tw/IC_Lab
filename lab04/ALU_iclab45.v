//synopsys translate_off 
`include "/usr/synthesis/dw/sim_ver/DW_sqrt.v"
`include "/usr/synthesis/dw/sim_ver/DW_sqrt_pipe.v"
`include "/usr/synthesis/dw/sim_ver/DW_div.v"
`include "/usr/synthesis/dw/sim_ver/DW_div_pipe.v"
`include "/usr/synthesis/dw/sim_ver/DW01_absval.v"
//synopsys translate_on

module ALU(
	// Input signals
	clk,
	rst_n,
	in_valid,
	mode,
	in_number,
	// Output signals
	out_valid,
	out_number
);
//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input 				        clk, rst_n, in_valid;
input		        [1:0]   mode;
input signed		[4:0]   in_number;
output reg			        out_valid;
output reg	signed  [6:0]	out_number;
//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION
//---------------------------------------------------------------------
reg signed [4:0] in [0:4];
reg signed [4:0] s1 [0:4];
reg signed [4:0] s2 [0:4];
reg signed [4:0] s3 [0:4];
reg signed [4:0] s4 [0:4];
reg signed [4:0] s5 [0:4];
reg [1:0] mode_tmp [0:9];


parameter div_inst_a_width = 5;
parameter div_inst_b_width = 5;
parameter div_inst_tc_mode = 0;
parameter div_inst_rem_mode = 1;
parameter div_inst_num_stages = 4;
parameter div_inst_stall_mode = 1;
parameter div_inst_rst_mode = 1;
parameter div_inst_op_iso_mode = 0;

wire signed_bit;
reg signed_bit_tmp[0:3];
wire [4:0]a;
wire [4:0]b;
reg [4:0]round_a;
reg [4:0]round_b;
wire en;
wire [4:0]quotient_inst;
wire [6:0]quotient;
wire [4:0]remainder_inst;
wire divide_by_0_inst;

wire [6:0]sub;
reg [6:0]sub_tmp[0:3];

parameter sqrt_inst_width = 9;
parameter sqrt_inst_tc_mode = 0;
parameter sqrt_inst_num_stages = 4;
parameter sqrt_inst_stall_mode = 1;
parameter sqrt_inst_rst_mode = 1;

reg [sqrt_inst_width-1 : 0] inst_a;
wire [sqrt_inst_width-1 : 0] ABSVAL_inst;
wire [(sqrt_inst_width+1)/2-1 : 0] root_inst;

reg [3:0] up;
reg [3:0] down;

assign en = 1;
//---------------------------------------------------------------------
//   Design
//---------------------------------------------------------------------
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		mode_tmp[9] <= 0;
		mode_tmp[8] <= 0;
		mode_tmp[7] <= 0;
		mode_tmp[6] <= 0;
		mode_tmp[5] <= 0;
		mode_tmp[4] <= 0;
		mode_tmp[3] <= 0;
		mode_tmp[2] <= 0;
		mode_tmp[1] <= 0;
		mode_tmp[0] <= 0;
	end
	else begin
		mode_tmp[9] <= mode_tmp[8];
		mode_tmp[8] <= mode_tmp[7];
		mode_tmp[7] <= mode_tmp[6];
		mode_tmp[6] <= mode_tmp[5];
		mode_tmp[5] <= mode_tmp[4];
		mode_tmp[4] <= mode_tmp[3];
		mode_tmp[3] <= mode_tmp[2];
		mode_tmp[2] <= mode_tmp[1];
		mode_tmp[1] <= mode_tmp[0];
		mode_tmp[0] <= mode;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in[4] <= 0;
		in[3] <= 0;
		in[2] <= 0;
		in[1] <= 0;
		in[0] <= 0;
	end
	else if(in_valid == 1) begin
		in[4] <= in[3];
		in[3] <= in[2];
		in[2] <= in[1];
		in[1] <= in[0];
		in[0] <= in_number;
	end
	else if(down == 9) begin
		in[4] <= 0;
		in[3] <= 0;
		in[2] <= 0;
		in[1] <= 0;
		in[0] <= 0;
	end
	else begin
		in[4] <= in[4];
		in[3] <= in[3];
		in[2] <= in[2];
		in[1] <= in[1];
		in[0] <= in[0];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s1[4] <= 0;
		s1[3] <= 0; 
	end
	else if(in[3] > in[4]) begin
		s1[4] <= in[3];
		s1[3] <= in[4];
	end
	else begin
		s1[4] <= in[4];
		s1[3] <= in[3];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s1[2] <= 0;
		s1[1] <= 0;
		s1[0] <= 0;
	end
	else if(in[1] > in[2]) begin
		s1[2] <= in[1];
		s1[1] <= in[2];
		s1[0] <= in[0];
	end
	else begin
		s1[2] <= in[2];
		s1[1] <= in[1];
		s1[0] <= in[0];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s2[4] <= 0;
		s2[3] <= 0;
		s2[2] <= 0;
	end
	else if(s1[2] > s1[3]) begin
		s2[4] <= s1[4];
		s2[3] <= s1[2];
		s2[2] <= s1[3];
	end
	else begin
		s2[4] <= s1[4];
		s2[3] <= s1[3];
		s2[2] <= s1[2];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s2[1] <= 0;
		s2[0] <= 0; 
	end
	else if(s1[0] > s1[1]) begin
		s2[1] <= s1[0];
		s2[0] <= s1[1];
	end
	else begin
		s2[1] <= s1[1];
		s2[0] <= s1[0];
	end
end


always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s3[4] <= 0;
		s3[3] <= 0; 
	end
	else if(s2[3] > s2[4]) begin
		s3[4] <= s2[3];
		s3[3] <= s2[4];
	end
	else begin
		s3[4] <= s2[4];
		s3[3] <= s2[3];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s3[2] <= 0;
		s3[1] <= 0;
		s3[0] <= 0;
	end
	else if(s2[1] > s2[2]) begin
		s3[2] <= s2[1];
		s3[1] <= s2[2];
		s3[0] <= s2[0];
	end
	else begin
		s3[2] <= s2[2];
		s3[1] <= s2[1];
		s3[0] <= s2[0];
	end
end


always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s4[4] <= 0;
		s4[3] <= 0;
		s4[2] <= 0;
	end
	else if(s3[2] > s3[3]) begin
		s4[4] <= s3[4];
		s4[3] <= s3[2];
		s4[2] <= s3[3];
	end
	else begin
		s4[4] <= s3[4];
		s4[3] <= s3[3];
		s4[2] <= s3[2];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s4[1] <= 0;
		s4[0] <= 0; 
	end
	else if(s3[0] > s3[1]) begin
		s4[1] <= s3[0];
		s4[0] <= s3[1];
	end
	else begin
		s4[1] <= s3[1];
		s4[0] <= s3[0];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s5[4] <= 0;
		s5[3] <= 0; 
	end
	else if(s4[3] > s4[4]) begin
		s5[4] <= s4[3];
		s5[3] <= s4[4];
	end
	else begin
		s5[4] <= s4[4];
		s5[3] <= s4[3];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		s5[2] <= 0;
		s5[1] <= 0;
		s5[0] <= 0;
	end
	else if(s4[1] > s4[2]) begin
		s5[2] <= s4[1];
		s5[1] <= s4[2];
		s5[0] <= s4[0];
	end
	else begin
		s5[2] <= s4[2];
		s5[1] <= s4[1];
		s5[0] <= s4[0];
	end
end

assign signed_bit = s5[3][4] ^ s5[1][4];

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		signed_bit_tmp[3] <= 0;
		signed_bit_tmp[2] <= 0;
		signed_bit_tmp[1] <= 0;
		signed_bit_tmp[0] <= 0;
	end
	else begin
		signed_bit_tmp[3] <= signed_bit_tmp[2];
		signed_bit_tmp[2] <= signed_bit_tmp[1];
		signed_bit_tmp[1] <= signed_bit_tmp[0];
		signed_bit_tmp[0] <= signed_bit;
	end
end

DW01_absval #(5)
U4 ( .A(s5[3]), .ABSVAL(a) );
DW01_absval #(5)
U5 ( .A(s5[1]), .ABSVAL(b) );

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		round_a <= 0;
	end
	else begin
		round_a <= a + (b >> 1);
	end
end
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		round_b <= 0;
	end
	else begin
		round_b <= b;
	end
end

// Instance of DW_div_pipe
	DW_div_pipe #(div_inst_a_width,   div_inst_b_width,   div_inst_tc_mode,  div_inst_rem_mode,
				div_inst_num_stages,   div_inst_stall_mode,   div_inst_rst_mode,   div_inst_op_iso_mode) 
			U1 (.clk(clk),   .rst_n(rst_n),   .en(en),
				.a(round_a),   .b(round_b),   .quotient(quotient_inst),
				.remainder(remainder_inst),   .divide_by_0(divide_by_0_inst) );

assign quotient = (signed_bit_tmp[3])?-quotient_inst:quotient_inst;
 
assign sub = s5[4]-s5[0];

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		sub_tmp[3] <= 0;
		sub_tmp[2] <= 0;
		sub_tmp[1] <= 0;
		sub_tmp[0] <= 0;
	end
	else begin
		sub_tmp[3] <= sub_tmp[2];
		sub_tmp[2] <= sub_tmp[1];
		sub_tmp[1] <= sub_tmp[0];
		sub_tmp[0] <= sub;
	end
end

// Instance of DW_sqrt_pipe
DW_sqrt_pipe #(sqrt_inst_width, sqrt_inst_tc_mode, sqrt_inst_num_stages,
sqrt_inst_stall_mode, sqrt_inst_rst_mode)
U2 (.clk(clk), .rst_n(rst_n),
.en(en), .a(ABSVAL_inst), .root(root_inst) );

DW01_absval #(sqrt_inst_width)
U3 ( .A(inst_a), .ABSVAL(ABSVAL_inst) );

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		inst_a <= 0;
	end
	else begin
		inst_a <= s5[4]*s5[4] - s5[3]*s5[3];
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		out_valid <= 0;
	end
	else if(down == 9) begin
		out_valid <= 0;
	end
	else if(up == 9) begin
		out_valid <= 1;
	end
	else begin
		out_valid <= out_valid;
	end
end

always@(*) begin
	if(!out_valid) begin
		out_number = 0;
	end
	else begin
		case(mode_tmp[9])
			0: out_number = sub_tmp[3];
			1: out_number = root_inst;
			2: out_number = quotient;
			default: out_number = 0;
		endcase
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		up <= 0;
	end
	else if(in_valid && up < 9) begin
		up <= up + 1;
	end
	else if (up != 0 && up < 9) begin
		up <= up + 1;
	end
	else if(up == 9 && down == 9) begin
		up <= 0;
	end
	else begin
		up <= up;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		down <= 0;
	end
	else if(!in_valid && up == 9 && down < 9) begin
		down <= down + 1;
	end
	else if(!in_valid && up != 0 && up < 9 && down == 0) begin
		down <= 9-up;
	end
	else if(up == 9 && down == 9) begin
		down <= 0;
	end
	else begin
		down <= down;
	end
end

endmodule
