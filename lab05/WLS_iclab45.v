module WLS(
	// input signals
	clk,
	rst_n,
	in_valid,
	in_data,
	action,
    // output signals
	out_valid,
	out_data,
	out_action
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input clk;
input rst_n;
input in_valid;
input [7:0] in_data;
input [1:0] action;
output reg out_valid;
output reg [7:0] out_data;
output reg out_action;

//---------------------------------------------------------------------
// PARAMETER DECLARATION
//---------------------------------------------------------------------
parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_LOGIN	=	'd2,
			ST_LOGOUT	=	'd3,
			ST_CHECK	=	'd4,
			ST_RST		=	'd5,
			ST_OUTPUT	=	'd6;

//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION                             
//---------------------------------------------------------------------
reg	[2:0] cs, ns;
reg [3:0] count;

reg [7:0] in [0:4];
reg [1:0] in_action;
reg [255:0] valid;

wire cen;
wire oen;
reg wen;
reg [7:0] a;
reg [31:0] d;
wire [31:0] q;

assign cen = 0;
assign oen = 0;

reg success;
wire [31:0] id;
wire valid_port;
wire valid_port_0;
wire valid_port_2;
wire [2:0] available_bit;
reg [1:0] length;
reg [1:0] cnt;
reg [7:0] available [0:2];

assign id = {in[4],in[3],in[2],in[1]};
assign valid_port = ((valid & (256'b1 << in[0])) != 0);
assign valid_port_0 = ((in[0]) == 0)? 1 : ((valid & (256'b1 << (in[0]-1))) != 0);
assign valid_port_2 = ((in[0]) == 255)? 1 : ((valid & (256'b1 << (in[0]+1))) != 0);
assign available_bit = {!valid_port_2,!valid_port,!valid_port_0};

always@(*) begin
	if(valid_port == 0 && valid_port_0 == 0 && valid_port_2 == 0) length = 3;
	else if((valid_port == 0 && valid_port_0 == 0)||(valid_port_0 == 0 && valid_port_2 == 0)
	||(valid_port == 0 && valid_port_2 == 0)) length = 2;
	else if(valid_port == 0 | valid_port_0 == 0 | valid_port_2 == 0) length = 1;
	else length = 0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) cnt <= 0;
	else if(ns == ST_CHECK) cnt <= length;
	else if(ns == ST_OUTPUT && cnt != 0) cnt <= cnt - 1;
	else cnt <= cnt;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		available[2] <= 0;
		available[1] <= 0;
		available[0] <= 0;
	end
	else if(ns == ST_CHECK) begin
		case(available_bit)
		3'b0: begin
			available[2] <= 0;
			available[1] <= 0;
			available[0] <= 0;
		end
		3'b001: begin
			available[2] <= 0;
			available[1] <= 0;
			available[0] <= in[0]-1;
		end
		3'b010: begin
			available[2] <= 0;
			available[1] <= 0;
			available[0] <= in[0];
		end
		3'b011: begin
			available[2] <= 0;
			available[1] <= in[0];
			available[0] <= in[0]-1;
		end
		3'b100: begin
			available[2] <= 0;
			available[1] <= 0;
			available[0] <= in[0]+1;
		end
		3'b101: begin
			available[2] <= 0;
			available[1] <= in[0]+1;
			available[0] <= in[0]-1;
		end
		3'b110: begin
			available[2] <= 0;
			available[1] <= in[0]+1;
			available[0] <= in[0];
		end
		3'b111: begin
			available[2] <= in[0]+1;
			available[1] <= in[0];
			available[0] <= in[0]-1;
		end
		endcase
	end
	else if(ns == ST_IDLE) begin
		available[2] <= 0;
		available[1] <= 0;
		available[0] <= 0;
	end
	else begin
		available[2] <= available[2];
		available[1] <= available[1];
		available[0] <= available[0];
	end
end
/////////////////
//Input  Logic//
/////////////////
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
		in[0] <= in_data;
	end
	else if(ns == ST_IDLE) begin
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
		in_action <= 0;
	end
	else if(in_valid && count == 0) begin
		in_action <= action;
	end
	else begin
		in_action <= in_action;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) valid <= 'd0;
	else if(ns == ST_LOGIN && count == 6) begin
		valid <= valid | (256'b1 << in[0]);
	end
	else if(ns == ST_LOGOUT && count == 7 && q == id) begin
		valid <= valid ^ (256'b1 << in[0]);
	end
	else if(ns == ST_RST) valid <= 'd0;
	else valid <= valid;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) success <= 0;
	else if(ns == ST_LOGIN && count == 5 && valid_port == 0) success <= 1;
	else if(ns == ST_LOGOUT && count == 7 && q == id) success <= 1;
	else if(ns == ST_RST || ns == ST_CHECK) success <= 1;
	else if(ns == ST_IDLE) success <= 0;
	else success <= success;
end

//---------------------------------------------------------------------
//   Finite-State Mechine                                          
//---------------------------------------------------------------------
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) count <= 'd0;
	else if(in_valid || ns == ST_LOGIN || ns == ST_LOGOUT || ns == ST_CHECK || ns == ST_RST) count <= count + 'd1;
	else count <= 'd0;
end

always@(posedge	clk or negedge rst_n) begin
	if(!rst_n) cs <= ST_IDLE;
	else cs	 <=	ns;
end

always@(*) begin
	case(cs)
		ST_IDLE: begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT: begin
			if(!in_valid && in_action == 0) ns = ST_LOGIN;
			else if(!in_valid && in_action == 1) ns = ST_LOGOUT;
			else if(!in_valid && in_action == 2) ns = ST_CHECK;
			else if(!in_valid && in_action == 3) ns = ST_RST;
			else ns	= ST_INPUT;
		end
		
		ST_LOGIN: begin
			if(valid_port == 1) ns = ST_OUTPUT;
			else ns	= ST_LOGIN;
		end
		
		ST_LOGOUT: begin
			if(valid_port == 0) ns = ST_OUTPUT;
			else if(count == 8) ns = ST_OUTPUT;
			else ns	= ST_LOGOUT;
		end
		
		ST_CHECK: begin
			ns = ST_OUTPUT;
		end
		
		ST_RST: begin
			ns = ST_OUTPUT;
		end
		
		ST_OUTPUT: begin
			if(in_action == 2 && cnt != 0) ns = ST_OUTPUT;
			else ns = ST_IDLE;
		end
		
		default: begin
			ns = ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_valid <=	0;
	else if(ns == ST_OUTPUT) out_valid <= 1;
	else out_valid	<= 0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_action <= 0;
	else if(ns == ST_OUTPUT && in_action != 2) out_action <= success;
	else if(ns == ST_OUTPUT && cs == ST_CHECK) out_action <= success;
	else out_action <= 0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_data <=	'd0;
	else if(ns == ST_OUTPUT && in_action == 2) out_data <= available[length-cnt];
	else out_data <= 'd0;
end

//SRAM_MODULE
RA1SH U_SRAM(
   .Q(q),
   .CLK(clk),
   .CEN(cen),
   .WEN(wen),
   .A(a),
   .D(d),
   .OEN(oen)
);

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) wen <= 1;
	else if(ns == ST_LOGIN && valid_port == 0 && count == 5) wen <= 0;
	else wen <= 1;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) d <= 0;
	else if(ns == ST_LOGIN && valid_port == 0 && count == 5) d <= id;	
	else d <= 0;
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) a <= 0;
	else if(ns == ST_LOGIN && valid_port == 0 && count == 5) a <= in[0];
	else if(ns == ST_LOGOUT && valid_port == 1 && count == 5) a <= in[0];
	else a <= 0;
end

endmodule
