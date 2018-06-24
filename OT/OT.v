module OT(
	rst_n,
	clk,
	in_valid,
	out_valid,
	image_in,
	image_out
);

// INPUT/OUTPUTS
input rst_n, clk, in_valid;
input [7:0] image_in;
output reg [11:0] image_out;
output reg out_valid;

parameter	ST_IDLE		=	'd0,
		ST_INPUT	=	'd1,
		ST_EXE		=	'd2,
		ST_OUTPUT	=	'd3;

reg [1:0]	cs,ns;
reg [599:0] 	in;
reg [11:0] 	temp[0:8];
reg [6:0]	count;
reg [2:0]	pos_x;
wire [11:0] 	out;

assign out = (temp[0]>>4)+(temp[1]>>3)+(temp[2]>>4)+(temp[3]>>3)+(temp[4]>>2)+(temp[5]>>3)+(temp[6]>>4)+(temp[7]>>3)+(temp[8]>>4);

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) in <= 'd0;
	else if(in_valid) in <= {image_in,in[599:8]};
	else  in <= in;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[0] <= 'd0;
	else if(ns == ST_EXE && (count < 15 || pos_x == 0)) temp[0] <= 'd0;
	else if(ns == ST_EXE) temp[0] <= {in >> (count-16)*8,4'b0};
	else  temp[0] <= temp[0];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[1] <= 'd0;
	else if(ns == ST_EXE && count < 15) temp[1] <= 'd0;
	else if(ns == ST_EXE) temp[1] <= {in >> (count-15)*8,4'b0};
	else  temp[1] <= temp[1];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[2] <= 'd0;
	else if(ns == ST_EXE && (count < 15 || pos_x == 4)) temp[2] <= 'd0;
	else if(ns == ST_EXE) temp[2] <= {in >> (count-14)*8,4'b0};
	else  temp[2] <= temp[2];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[3] <= 'd0;
	else if(ns == ST_EXE && pos_x == 0) temp[3] <= 'd0;
	else if(ns == ST_EXE) temp[3] <= {in >> (count-1)*8,4'b0};
	else  temp[3] <= temp[3];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[4] <= 'd0;
	else if(ns == ST_EXE) temp[4] <= {in >> count*8,4'b0};
	else  temp[4] <= temp[4];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[5] <= 'd0;
	else if(ns == ST_EXE && pos_x == 4) temp[5] <= 'd0;
	else if(ns == ST_EXE) temp[5] <= {in >> (count+1)*8,4'b0};
	else  temp[5] <= temp[5];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[6] <= 'd0;
	else if(ns == ST_EXE && (count > 59 || pos_x == 0)) temp[6] <= 'd0;
	else if(ns == ST_EXE) temp[6] <= {in >> (count+14)*8,4'b0};
	else  temp[6] <= temp[6];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[7] <= 'd0;
	else if(ns == ST_EXE && count > 59) temp[7] <= 'd0;
	else if(ns == ST_EXE) temp[7] <= {in >> (count+15)*8,4'b0};
	else  temp[7] <= temp[7];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) temp[8] <= 'd0;
	else if(ns == ST_EXE && (count > 59 || pos_x == 4)) temp[8] <= 'd0;
	else if(ns == ST_EXE) temp[8] <= {in >> (count+16)*8,4'b0};
	else  temp[8] <= temp[8];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) count <= 'd0;
	else if(ns == ST_EXE) count <= count + 'd1;
	else count <= 'd0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) pos_x <= 'd0;
	else if(ns == ST_EXE && pos_x == 4) pos_x <= 'd0;
	else if(ns == ST_EXE) pos_x <= pos_x + 'd1;
	else pos_x <= pos_x;
end

////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk or negedge rst_n)	begin
	if(!rst_n) cs <= ST_IDLE;
	else cs <= ns;
end

always@(*)	begin
	case(cs)
		ST_IDLE:	begin
			if(in_valid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT:	begin
			if(!in_valid) ns = ST_EXE;
			else ns	= ST_INPUT;
		end

		ST_EXE:	begin
			if(count == 75) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end

		ST_OUTPUT:	begin
			ns = ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) out_valid <= 'd0;
	else if(cs == ST_EXE) out_valid <= 'd1;
	else out_valid	<= 'd0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) image_out <= 'd0;
	else if(cs == ST_EXE) image_out <= out;
	else image_out <= 'd0;
end
endmodule
