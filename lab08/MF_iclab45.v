module MF(
	// Input signals
	clk,
	rst_n,
	invalid,
	image_in,
  // Output signals
	outvalid,
	image_out
);
//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input				clk,rst_n,invalid;
input 		[7:0]	image_in;
output	reg 		outvalid;
output	reg [7:0]	image_out;

parameter	ST_IDLE		=	'd0,
			ST_INPUT	=	'd1,
			ST_EXE		=	'd2,
			ST_OUTPUT	=	'd3;

reg [1:0]	cs,ns;
reg [799:0]	in;
reg [7:0]	tmp [0:8];
reg [6:0]	count;
reg [3:0]	pos_x;
reg [7:0]	max_candidate [0:4];
reg [7:0]	min_candidate [0:4];
reg [7:0]	find_max [0:3];
reg [7:0]	find_min [0:3];
wire[8:0]	sum;
wire[7:0]	out;

/////////////////
//Input  Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) in <= 'd0;
	else if(invalid) in <= {image_in,in[799:8]};
	else  in <= in;
end

/////////////////
//Execute Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[0] <= 'd0;
	else if(ns == ST_EXE && (count < 10 || pos_x == 0)) tmp[0] <= 'd0;
	else if(ns == ST_EXE) tmp[0] <= in >> (count-11)*8;
	else  tmp[0] <= tmp[0];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[1] <= 'd0;
	else if(ns == ST_EXE && count < 10) tmp[1] <= 'd0;
	else if(ns == ST_EXE) tmp[1] <= in >> (count-10)*8;
	else  tmp[1] <= tmp[1];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[2] <= 'd0;
	else if(ns == ST_EXE && (count < 10 || pos_x == 9)) tmp[2] <= 'd0;
	else if(ns == ST_EXE) tmp[2] <= in >> (count-9)*8;
	else  tmp[2] <= tmp[2];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[3] <= 'd0;
	else if(ns == ST_EXE && pos_x == 0) tmp[3] <= 'd0;
	else if(ns == ST_EXE) tmp[3] <= in >> (count-1)*8;
	else  tmp[3] <= tmp[3];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[4] <= 'd0;
	else if(ns == ST_EXE) tmp[4] <= in >> count*8;
	else  tmp[4] <= tmp[4];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[5] <= 'd0;
	else if(ns == ST_EXE && pos_x == 9) tmp[5] <= 'd0;
	else if(ns == ST_EXE) tmp[5] <= in >> (count+1)*8;
	else  tmp[5] <= tmp[5];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[6] <= 'd0;
	else if(ns == ST_EXE && (count > 89 || pos_x == 0)) tmp[6] <= 'd0;
	else if(ns == ST_EXE) tmp[6] <= in >> (count+9)*8;
	else  tmp[6] <= tmp[6];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[7] <= 'd0;
	else if(ns == ST_EXE && count > 89) tmp[7] <= 'd0;
	else if(ns == ST_EXE) tmp[7] <= in >> (count+10)*8;
	else  tmp[7] <= tmp[7];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) tmp[8] <= 'd0;
	else if(ns == ST_EXE && (count > 89 || pos_x == 9)) tmp[8] <= 'd0;
	else if(ns == ST_EXE) tmp[8] <= in >> (count+11)*8;
	else  tmp[8] <= tmp[8];
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) count <= 'd0;
	else if(ns == ST_EXE) count <= count + 'd1;
	else count <= 'd0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) pos_x <= 'd0;
	else if(ns == ST_EXE && pos_x == 9) pos_x <= 'd0;
	else if(ns == ST_EXE) pos_x <= pos_x + 'd1;
	else pos_x <= pos_x;
end

always@(*) begin
	if(tmp[0] > tmp[1]) begin
		max_candidate[0] = tmp[0];
		min_candidate[0] = tmp[1];
	end
	else begin
		max_candidate[0] = tmp[1];
		min_candidate[0] = tmp[0];
	end
end

always@(*) begin
	if(tmp[2] > tmp[3]) begin
		max_candidate[1] = tmp[2];
		min_candidate[1] = tmp[3];
	end
	else begin
		max_candidate[1] = tmp[3];
		min_candidate[1] = tmp[2];
	end
end

always@(*) begin
	if(tmp[4] > tmp[5]) begin
		max_candidate[2] = tmp[4];
		min_candidate[2] = tmp[5];
	end
	else begin
		max_candidate[2] = tmp[5];
		min_candidate[2] = tmp[4];
	end
end

always@(*) begin
	if(tmp[6] > tmp[7]) begin
		max_candidate[3] = tmp[6];
		min_candidate[3] = tmp[7];
	end
	else begin
		max_candidate[3] = tmp[7];
		min_candidate[3] = tmp[6];
	end
end

always@(*) begin
	max_candidate[4] = tmp[8];
	min_candidate[4] = tmp[8];
end

always@(*) begin
	if(max_candidate[1] > max_candidate[0]) find_max[0] = max_candidate[1];
	else find_max[0] = max_candidate[0];
end

always@(*) begin
	if(max_candidate[2] > find_max[0]) find_max[1] = max_candidate[2];
	else find_max[1] = find_max[0];
end

always@(*) begin
	if(max_candidate[3] > find_max[1]) find_max[2] = max_candidate[3];
	else find_max[2] = find_max[1];
end

always@(*) begin
	if(max_candidate[4] > find_max[2]) find_max[3] = max_candidate[4];
	else find_max[3] = find_max[2];
end

always@(*) begin
	if(min_candidate[1] < min_candidate[0]) find_min[0] = min_candidate[1];
	else find_min[0] = min_candidate[0];
end

always@(*) begin
	if(min_candidate[2] < find_min[0]) find_min[1] = min_candidate[2];
	else find_min[1] = find_min[0];
end

always@(*) begin
	if(min_candidate[3] < find_min[1]) find_min[2] = min_candidate[3];
	else find_min[2] = find_min[1];
end

always@(*) begin
	if(min_candidate[4] < find_min[2]) find_min[3] = min_candidate[4];
	else find_min[3] = find_min[2];
end

assign sum = find_max[3] + find_min[3];
assign out = sum >> 1;

////////////////////////
//Finite State Machine//
////////////////////////
always@(posedge	clk or negedge rst_n)	begin
	if(!rst_n) cs <= ST_IDLE;
	else cs <= ns;
end

always@(*)	begin
	case(cs)
		ST_IDLE: begin
			if(invalid) ns	= ST_INPUT;
			else ns	= ST_IDLE;
		end
		
		ST_INPUT: begin
			if(!invalid) ns = ST_EXE;
			else ns	= ST_INPUT;
		end

		ST_EXE:	begin
			if(count == 100) ns = ST_OUTPUT;
			else ns	= ST_EXE;
		end

		ST_OUTPUT: begin
			ns = ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) outvalid <= 'd0;
	else if(cs == ST_EXE) outvalid <= 'd1;
	else outvalid	<= 'd0;
end

always@(posedge clk or negedge rst_n)	begin
	if(!rst_n) image_out <= 'd0;
	else if(cs == ST_EXE) image_out <= out;
	else image_out <= 'd0;
end

endmodule