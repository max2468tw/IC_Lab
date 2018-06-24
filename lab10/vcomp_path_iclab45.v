module vcomp_path #(
  parameter DWIDTH=8,     // data width
  parameter PWIDTH=8
)
(
  input clk,
  input rst_n,
  input req_o,
  input gnt_i,
  input stall_o,
  input valid_i,
  input [DWIDTH-1:0] data_i,
  input [DWIDTH-1:0] data_o,
  input overflow_o,
  input underflow_o,
  input write_i,
  input read_i,
  input empty,
  input full,
  input [PWIDTH-1:0] rd_ptr,
  input [PWIDTH-1:0] wr_ptr
  );

  // ************* Protocol Assumptions ***************
default clocking ck @(posedge clk); 
endclocking
  // fairness: grant has to eventually come if there is a request
  assume_arbitration_is_fair : assume property (@(posedge clk)
    (req_o |-> (##[0:$] gnt_i)) );

  // if path is stalling then valid_i must be deasserted
  assume_no_valid_if_stall: assume property (@(posedge clk) (stall_o |-> !valid_i));

  // grant can only be asserted if there is a request
  assume_no_gnt_without_req: assume property (@(posedge clk) (gnt_i |-> req_o));


  // ************** Write Assertions below *************
	assert1 : assert property (valid_i |-> req_o);
	assert2 : assert property (valid_i |-> ##[0:$] req_o);
	assert3 : assert property (!overflow_o);
	assert4 : assert property (!underflow_o);
	property p5;
		logic [DWIDTH-1:0] v;
		(read_i,v=data_i) ##[0:$] (data_o === v);
	endproperty
	assert5 : assert property(p5);
	assert6 : assert property (($rose(req_o) && gnt_i) |-> (data_i == data_o));
	assert7 : assert property (!(full && empty));
	assert8 : assert property (empty |-> (rd_ptr == wr_ptr));
	assert9 : assert property (full |-> (rd_ptr == wr_ptr));
	assert10 : assert property ((full && !read_i) |=> full);
	assert11 : assert property ((empty && !write_i) |=> empty);
	assert12 : assert property ((empty && valid_i && gnt_i) |-> (data_i == data_o));
	property p13;
		logic [DWIDTH-1:0] h;
		((empty && valid_i && !gnt_i),h=data_i) ##1 (data_o === h);
	endproperty
	assert13 : assert property(p13);
endmodule
