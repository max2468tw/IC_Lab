`include "synchronizer.v"
`include "syn_XOR.v"

module CDC(// Input signals
			clk_1,
			clk_2,
			clk_3,
			invalid,
			rst_n,
			recieved_data1,
			recieved_data2,
			message,
			mode,
		  //  Output signals
			outvalid,
			out
			);
//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------			
input clk_1; 
input clk_2;
input clk_3;			
input rst_n;
input invalid;
input[63:0]message;
input[71:0]recieved_data1;
input[6:0]recieved_data2;
input [1:0]mode;
output reg outvalid;
output reg [71:0]out; 			

//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION                             
//---------------------------------------------------------------------
parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_EXE		=	'd2,
			ST_OUTPUT	=	'd3;

reg	[1:0]	cs,ns;
reg [63:0]	in_message;
reg [7:0] 	remainder;
reg [71:0]	in_recieved_data1;
reg [6:0]	in_recieved_data2;
wire [6:0]  tmp_recieved_data2;
reg [6:0] 	ans_recieved_data2;
wire [6:0]	ans;
reg [1:0]	in_mode;
reg [2:0]	count;
reg  outvalid_clk_1;
wire tmp_outvalid;

reg [2:0] c;
reg [71:0] my_net [0:64];
genvar i;
genvar stage;
/////////////////
//Input  Logic//
/////////////////
always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) in_message <= 'd0;
	else if(invalid) in_message <=	message;
	else  in_message <=	in_message;
end

always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) in_recieved_data1 <= 'd0;
	else if(invalid) in_recieved_data1 <= recieved_data1;
	else  in_recieved_data1	<= in_recieved_data1;
end

always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) in_recieved_data2 <= 'd0;
	else if(invalid) in_recieved_data2 <= recieved_data2;
	else in_recieved_data2 <= in_recieved_data2;
end

always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) in_mode <= 'd0;
	else if(invalid) in_mode <= mode;
	else in_mode <= in_mode;
end

always@(posedge clk_1 or negedge rst_n) begin
	if(!rst_n) my_net[0] <= 0;
	else if(in_mode == 0)
		my_net[0] <= {in_message,8'b0};
	else if(in_mode == 1)
		my_net[0] <= in_recieved_data1;
	else
		my_net[0] <= 0;
end

generate
	for(stage=0;stage < 64;stage=stage+1) begin: stage_for
		for(i=0;i < 63-stage;i=i+1) begin: connect_1
			always@(*) begin
				my_net[stage+1][i] = my_net[stage][i];
			end
		end
		always@(*) begin
			my_net[stage+1][71-stage:63-stage] = my_net[stage][71-stage:63-stage] ^ (9'b110001101&{9{my_net[stage][71-stage]}});
		end
		for(i=71-stage+1;i < 72;i=i+1) begin: connect_3
			always@(*) begin
				my_net[stage+1][i] = my_net[stage][i];
			end
		end
	end
endgenerate

always@(posedge clk_1 or negedge rst_n) begin
	if(!rst_n) c <= 'd0;
	else if(ns==ST_EXE) begin
		c[2] <= in_recieved_data2[6]^in_recieved_data2[5]^in_recieved_data2[4]^in_recieved_data2[2];
		c[1] <= in_recieved_data2[6]^in_recieved_data2[5]^in_recieved_data2[3]^in_recieved_data2[1];
		c[0] <= in_recieved_data2[6]^in_recieved_data2[4]^in_recieved_data2[3]^in_recieved_data2[0];
	end
	else c[0] <= c[0];
end

assign tmp_recieved_data2 = 
	{in_recieved_data2[6:4],in_recieved_data2[2],in_recieved_data2[3],in_recieved_data2[1:0]};
	
always@(*) begin
	if(c != 0)
		ans_recieved_data2 = tmp_recieved_data2 ^ (7'b1 << (c-1));
	else
		ans_recieved_data2 = tmp_recieved_data2;
end

assign ans = 
	{ans_recieved_data2[6:4],ans_recieved_data2[2],ans_recieved_data2[3],ans_recieved_data2[1:0]};
	
always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) count <=	'd0;
	else if(ns==ST_EXE) count <= count+'d1;
	else count <= 'd0;
end

////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk_1 or negedge rst_n)	begin
	if(!rst_n) cs <= ST_IDLE;
	else cs	<= ns;
end

always@(*)	begin
	case(cs)
		ST_IDLE:	begin
			if(invalid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT:	begin
			if(!invalid) ns	= ST_EXE;
			else ns	= ST_INPUT;
		end
		
		ST_EXE:		begin
			if(1) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end
		
		ST_OUTPUT:	begin
			ns = ST_IDLE;
		end
	endcase
end

always@(posedge clk_1 or negedge rst_n)	begin
	if(!rst_n) outvalid_clk_1 <= 'd0;
	else if(ns == ST_OUTPUT) outvalid_clk_1 <=	'd1;
	else outvalid_clk_1 <= 'd0;
end

syn_XOR U1(.IN(outvalid_clk_1),.OUT(tmp_outvalid),.TX_CLK(clk_1),.RX_CLK(clk_3),.RST_N(rst_n));

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk_3 or negedge rst_n)	begin
	if(!rst_n) outvalid <=	'd0;
	else if(tmp_outvalid) outvalid <=	'd1;
	else outvalid <= 'd0;
end

always@(posedge clk_3 or negedge rst_n)	begin
	if(!rst_n) out <= 'd0;
	else if(tmp_outvalid && in_mode == 0) out <= {in_message,my_net[64][7:0]};
	else if(tmp_outvalid && in_mode == 1) out <= (my_net[64]==0)?0:{72{1'b1}};
	else if(tmp_outvalid && in_mode == 2) out <= {65'b0,ans};
	else out <= 'd0;
end

endmodule

