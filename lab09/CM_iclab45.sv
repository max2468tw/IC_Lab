//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   2017 ICLAB Spring Course
//   Lab09      : Coffee Maker
//   Author     : 
//                
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : CM.sv
//   Module Name : CM
//   Release version : v1.0 (Release Date: May-2017)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################


`include "Usertype_PKG.sv"


module CM(input clk, INF.DESIGN inf);
import usertype::*;

parameter	ST_IDLE		=	'd0,
			ST_INSERT	=	'd1,
			ST_COFFE	=	'd2,
			ST_USER 	=	'd3,
			ST_OUTPUT	=	'd4;
			
logic [2:0]	cs,ns;
logic [2:0]	count;
logic [9:0]	in [0:3];
size in_size;
flavor in_flavor;
logic [2:0] in_ratio [0:3];
logic [2:0] r_ratio [0:3];
logic [9:0] usage [0:3];
logic [9:0] tmp [0:3];
logic [9:0] capacity;
logic success;
logic [4:0] sum;

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in[0] <= 0;
	else if(ns == ST_INSERT && inf.select_i == espresso) in[0] <= in[0] + inf.supply;
	else if((cs == ST_COFFE || cs == ST_USER)&&success) in[0] <=  in[0] - usage[0];
	else in[0] <= in[0];
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in[1] <= 0;
	else if(ns == ST_INSERT && inf.select_i == milk) in[1] <= in[1] + inf.supply;
	else if((cs == ST_COFFE || cs == ST_USER)&&success) in[1] <=  in[1] - usage[1];
	else in[1] <= in[1];
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in[2] <= 0;
	else if(ns == ST_INSERT && inf.select_i == chocolate) in[2] <= in[2] + inf.supply;
	else if((cs == ST_COFFE || cs == ST_USER)&&success) in[2] <=  in[2] - usage[2];
	else in[2] <= in[2];
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in[3] <= 0;
	else if(ns == ST_INSERT && inf.select_i == froth) in[3] <= in[3] + inf.supply;
	else if((cs == ST_COFFE || cs == ST_USER)&&success) in[3] <=  in[3] - usage[3];
	else in[3] <= in[3];
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in_size <= no_size_inf;
	else if((ns == ST_COFFE  || ns == ST_USER) && count == 0) in_size <= inf.required_size;
	else if(ns == ST_IDLE) in_size <= no_size_inf;
	else in_size <= in_size;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) in_flavor <= no_coffee;
	else if((ns == ST_COFFE  || ns == ST_USER) && count == 0) in_flavor <= inf.flavor_btn;
	else if(ns == ST_IDLE) in_flavor <= no_coffee;
	else in_flavor <= in_flavor;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) begin
		in_ratio[0] <= 0;
		in_ratio[1] <= 0;
		in_ratio[2] <= 0;
		in_ratio[3] <= 0;
	end
	else if(ns == ST_COFFE && inf.flavor_btn == latte) begin
		in_ratio[0] <= 3;
		in_ratio[1] <= 3;
		in_ratio[2] <= 0;
		in_ratio[3] <= 4;
	end
	else if(ns == ST_COFFE && inf.flavor_btn == cappuccino) begin
		in_ratio[0] <= 7;
		in_ratio[1] <= 3;
		in_ratio[2] <= 0;
		in_ratio[3] <= 5;
	end
	else if(ns == ST_COFFE && inf.flavor_btn == mocha) begin
		in_ratio[0] <= 3;
		in_ratio[1] <= 1;
		in_ratio[2] <= 1;
		in_ratio[3] <= 0;
	end
	else if(ns == ST_USER && count < 4) begin
		in_ratio[0] <= in_ratio[1];
		in_ratio[1] <= in_ratio[2];
		in_ratio[2] <= in_ratio[3];
		in_ratio[3] <= inf.ratio;
	end
	else if(ns == ST_IDLE) begin
		in_ratio[0] <= 0;
		in_ratio[1] <= 0;
		in_ratio[2] <= 0;
		in_ratio[3] <= 0;
	end
	else begin
		in_ratio[0] <= in_ratio[0];
		in_ratio[1] <= in_ratio[1];
		in_ratio[2] <= in_ratio[2];
		in_ratio[3] <= in_ratio[3];
	end
end

always_comb begin
	if(in_ratio[0]%7 == 0 &&in_ratio[1]%7 == 0 && in_ratio[2]%7 == 0 && in_ratio[3]%7 == 0) begin
		r_ratio[0] = in_ratio[0]/7;
		r_ratio[1] = in_ratio[1]/7;
		r_ratio[2] = in_ratio[2]/7;
		r_ratio[3] = in_ratio[3]/7;
	end
	else if(in_ratio[0]%6 == 0 &&in_ratio[1]%6 == 0 && in_ratio[2]%6 == 0 && in_ratio[3]%6 == 0) begin
		r_ratio[0] = in_ratio[0]/6;
		r_ratio[1] = in_ratio[1]/6;
		r_ratio[2] = in_ratio[2]/6;
		r_ratio[3] = in_ratio[3]/6;
	end
	else if(in_ratio[0]%4 == 0 &&in_ratio[1]%4 == 0 && in_ratio[2]%4 == 0 && in_ratio[3]%4 == 0) begin
		r_ratio[0] = in_ratio[0]/4;
		r_ratio[1] = in_ratio[1]/4;
		r_ratio[2] = in_ratio[2]/4;
		r_ratio[3] = in_ratio[3]/4;
	end
	else if(in_ratio[0]%3 == 0 &&in_ratio[1]%3 == 0 && in_ratio[2]%3 == 0 && in_ratio[3]%3 == 0) begin
		r_ratio[0] = in_ratio[0]/3;
		r_ratio[1] = in_ratio[1]/3;
		r_ratio[2] = in_ratio[2]/3;
		r_ratio[3] = in_ratio[3]/3;
	end
	else if(in_ratio[0]%2 == 0 &&in_ratio[1]%2 == 0 && in_ratio[2]%2 == 0 && in_ratio[3]%2 == 0) begin
		r_ratio[0] = in_ratio[0]/2;
		r_ratio[1] = in_ratio[1]/2;
		r_ratio[2] = in_ratio[2]/2;
		r_ratio[3] = in_ratio[3]/2;
	end
	else begin
		r_ratio[0] = in_ratio[0];
		r_ratio[1] = in_ratio[1];
		r_ratio[2] = in_ratio[2];
		r_ratio[3] = in_ratio[3];
	end
end

always_comb begin
	sum = r_ratio[0]+r_ratio[1]+r_ratio[2]+r_ratio[3];
end

always_comb begin
	case(in_size)
		xl: capacity = 600;
		l: capacity = 480;
		m: capacity = 360;
		s: capacity = 240;
		default: capacity = 0;
	endcase
end

always_comb begin
	tmp[0] = capacity/sum;
	tmp[1] = capacity/sum;
	tmp[2] = capacity/sum;
	tmp[3] = capacity/sum;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) begin 
		usage[0] <= 0;
		usage[1] <= 0;
		usage[2] <= 0;
		usage[3] <= 0;
	end
	else if((cs == ST_COFFE && count == 1)||(cs == ST_USER && count == 4)) begin 
		usage[0] <= tmp[0]*r_ratio[0];
		usage[1] <= tmp[1]*r_ratio[1];
		usage[2] <= tmp[2]*r_ratio[2];
		usage[3] <= tmp[3]*r_ratio[3];
	end
	else begin 
		usage[0] <= 0;
		usage[1] <= 0;
		usage[2] <= 0;
		usage[3] <= 0;
	end
end

always_comb begin
	success = (in[0] >= usage[0])&&(in[1] >= usage[1])&&(in[2] >= usage[2])&&(in[3] >= usage[3]); 
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) count <= 0;
	else if(ns == ST_USER||ns == ST_COFFE) count <=	count+1;
	else count <= 0;
end

////////////////////////
//Finite State Machine//
////////////////////////
always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) cs <= ST_IDLE;
	else cs	<= ns;
end

always_comb begin
	case(cs)
		ST_IDLE:	begin
			if(inf.select_i != none) ns = ST_INSERT;
			else if(inf.flavor_btn == user_define) ns = ST_USER;
			else if(inf.flavor_btn) ns = ST_COFFE;
			else ns	= ST_IDLE;
		end
		
		ST_INSERT:	begin
			if(inf.select_i == none) ns	= ST_OUTPUT;
			else ns	= ST_INSERT;
		end
		
		ST_COFFE: begin
			if(count == 2) ns = ST_OUTPUT;
			else ns = ST_COFFE;
		end
		
		ST_USER: begin
			if(count == 5) ns = ST_OUTPUT;
			else ns = ST_USER;
		end
		
		ST_OUTPUT:	begin
			ns = ST_IDLE;
		end
		default: begin
			ns = ST_IDLE;
		end
	endcase
end

/////////////////
//Output  Logic//
/////////////////
always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.out_valid <= 0;
	else if(ns==ST_OUTPUT) inf.out_valid <=	1;
	else inf.out_valid <= 0;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.espresso.led <= red;
	else if(ns==ST_OUTPUT && in[0] > usage[0]) inf.window.espresso.led <= green;
	else if(ns==ST_OUTPUT && in[0] == usage[0] && !success && in[0] != 0) inf.window.espresso.led <= green;
	else inf.window.espresso.led <= red;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.espresso.monitor <= 0;
	else if(ns==ST_OUTPUT && success) inf.window.espresso.monitor <= in[0]-usage[0];
	else if(ns==ST_OUTPUT) inf.window.espresso.monitor <= in[0];
	else inf.window.espresso.monitor <= inf.window.espresso.monitor;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.milk.led <= red;
	else if(ns==ST_OUTPUT && in[1] > usage[1]) inf.window.milk.led <= green;
	else if(ns==ST_OUTPUT && in[1] >= usage[1] && !success && in[1] != 0) inf.window.milk.led <= green;
	else inf.window.milk.led <= red;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.milk.monitor <= 0;
	else if(ns==ST_OUTPUT && success) inf.window.milk.monitor <= in[1]-usage[1];
	else if(ns==ST_OUTPUT) inf.window.milk.monitor <= in[1];
	else inf.window.milk.monitor <= inf.window.milk.monitor;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.chocolate.led <= red;
	else if(ns==ST_OUTPUT && in[2] > usage[2]) inf.window.chocolate.led <= green;
	else if(ns==ST_OUTPUT && in[2] >= usage[2] && !success && in[2] != 0) inf.window.chocolate.led <= green;
	else inf.window.chocolate.led <= red;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.chocolate.monitor <= 0;
	else if(ns==ST_OUTPUT && success) inf.window.chocolate.monitor <= in[2]-usage[2];
	else if(ns==ST_OUTPUT) inf.window.chocolate.monitor <= in[2];
	else inf.window.chocolate.monitor <= inf.window.chocolate.monitor;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.froth.led <= red;
	else if(ns==ST_OUTPUT && in[3] > usage[3]) inf.window.froth.led <= green;
	else if(ns==ST_OUTPUT && in[3] >= usage[3] && !success && in[3] != 0) inf.window.froth.led <= green;
	else inf.window.froth.led <= red;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.window.froth.monitor <= 0;
	else if(ns==ST_OUTPUT && success) inf.window.froth.monitor <= in[3]-usage[3];
	else if(ns==ST_OUTPUT) inf.window.froth.monitor <= in[3];
	else inf.window.froth.monitor <= inf.window.froth.monitor;
end

always_ff@(posedge clk or negedge inf.rst_n) begin
	if(!inf.rst_n) inf.flavor_out <= no_coffee;
	else if(ns==ST_OUTPUT && success) inf.flavor_out <= in_flavor;
	else inf.flavor_out <= no_coffee;
end

endmodule