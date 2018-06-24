//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   2018 ICLAB Spring Course
//   Lab03	    : Tower of IC designers
//   Author         : Hong-Shuo Chen
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : PATTERN.v
//   Module Name : PATTERN
//   Release version : v1.0
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

`ifdef RTL
	`timescale 1ns/10ps
	`include "TIC.v"  
	`define CYCLE_TIME 3.0  
`endif
`ifdef GATE
	`timescale 1ns/1ps
	`include "TIC_SYN.v"
	`define CYCLE_TIME 3.0
`endif

module PATTERN(
  // Output signals
  clk,
  rst_n,
  in_valid_1,
  in_valid_2,
  in_stone,
  in_action,
  in_starting_pos,
  // Input signals
  out_valid,
  out_combo
);

//================================================================
//   INPUT AND OUTPUT DECLARATION                         
//================================================================
//output signals
output reg clk;
output reg rst_n;
output reg in_valid_1;
output reg in_valid_2;
output reg [2:0] in_stone;
output reg [2:0] in_action;
output reg [5:0] in_starting_pos;
//input signals
input out_valid;
input [3:0] out_combo;

//================================================================
// parameters & integer
//================================================================
real	CYCLE = `CYCLE_TIME;
parameter PATNUM = 10000;                 
integer SEED = 123;
integer i, j, x, lat, total_latency;
integer patcount;
integer pat_delay;
integer in_delay;
integer ANS_horizon, ANS_vertical;
integer in_stone_ARRAY [0:29];
integer in_action_ARRAY [0:19];
integer pos_x, pos_y;
integer num_actions;
integer temp;
//================================================================
// wire & registers 
//================================================================


//================================================================
// clock
//================================================================
initial begin
        clk = 0;
end
always #(CYCLE/2.0) clk = ~clk;

//================================================================
// initial
//================================================================

initial begin
	rst_n = 1'b1;
	in_valid_1 = 1'b0;
	in_valid_2 = 1'b0;
	in_stone = 3'bx;
	in_action = 3'bx;
	in_starting_pos = 6'bx;
	force clk = 0;

 	total_latency = 0;
 	reset_signal_task;

	for(patcount=1; patcount<=PATNUM; patcount=patcount+1) begin
		input_task;
		cal_task;
		wait_OUT_VALID;
		check_ans;
	end
  	YOU_PASS_task;


end

//================================================================
// task
//================================================================
task reset_signal_task; begin 
  #(0.5);  rst_n=0;
  #(2.0);
  if((out_valid !== 1'b0)||(out_combo !== 5'b0)) begin
    $display("************************************************************");
    $display("*                       Spec_3 IS Fail                     *");
    $display("*   Output signal should be 0 after initial RESET at %t    *",$time);
    $display("************************************************************");
    $finish;
  end
  #(10);  rst_n=1;
  #(3);  release clk;
end endtask

task input_task; begin
  if(patcount=='d1)
    repeat(2)@(negedge clk);
  in_valid_1 = 1'b1;
  for(j=0; j<30; j=j+1) begin
    in_stone = $random(SEED)%3'd5; //0~5;
    in_stone_ARRAY[j] = in_stone;	 
    @(negedge clk);
  end
  in_valid_1 = 1'b0;
  in_stone = 3'bx;
  
  in_delay=($random(SEED)%'d3)+'d1; //(1~3)
  repeat(in_delay)@(negedge clk);
  
  in_valid_2 = 1'b1;
  num_actions = ($random(SEED)%'d13)+'d8;
  for(j=0; j<num_actions; j=j+1) begin
	if(j == 0) begin
		pos_x = $random(SEED)%'d5;
		pos_y = $random(SEED)%'d6;
		in_starting_pos = pos_x*'d8 + pos_y;
	end
	else
		in_starting_pos = 6'bx;
    in_action = $random(SEED)%'d8; //0~5;
    in_action_ARRAY[j] = in_action;	 
    @(negedge clk);
  end
  in_valid_2 = 1'b0;
  in_action = 3'bx;

end endtask

task cal_task; begin
  ANS_horizon = 0;
  ANS_vertical = 0;
  for(i=0; i<num_actions; i=i+1) begin
    case(in_action_ARRAY[i])
	0:
		if(pos_x > 0) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x-1)*6+pos_y];
			in_stone_ARRAY[(pos_x-1)*6+pos_y] = temp;
			pos_x = pos_x - 1;
		end
	1:
		if(pos_x < 4) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x+1)*6+pos_y];
			in_stone_ARRAY[(pos_x+1)*6+pos_y] = temp;
			pos_x = pos_x + 1;
		end
	2:
		if(pos_y > 0) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[pos_x*6+pos_y-1];
			in_stone_ARRAY[pos_x*6+pos_y-1] = temp;
			pos_y = pos_y - 1;
		end
	3:
		if(pos_y < 5) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[pos_x*6+pos_y+1];
			in_stone_ARRAY[pos_x*6+pos_y+1] = temp;
			pos_y = pos_y + 1;
		end
	4:
		if(pos_x > 0 && pos_y < 5) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x-1)*6+pos_y+1];
			in_stone_ARRAY[(pos_x-1)*6+pos_y+1] = temp;
			pos_x = pos_x - 1;
			pos_y = pos_y + 1;
		end
	5:
		if(pos_x < 4 && pos_y > 0) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x+1)*6+pos_y-1];
			in_stone_ARRAY[(pos_x+1)*6+pos_y-1] = temp;
			pos_x = pos_x + 1;
			pos_y = pos_y - 1;
		end
	6:
		if(pos_x > 0 && pos_y > 0) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x-1)*6+pos_y-1];
			in_stone_ARRAY[(pos_x-1)*6+pos_y-1] = temp;
			pos_x = pos_x - 1;
			pos_y = pos_y - 1;
		end
	7:
		if(pos_x < 4 && pos_y < 5) begin
			temp = in_stone_ARRAY[pos_x*6+pos_y];
			in_stone_ARRAY[pos_x*6+pos_y] = in_stone_ARRAY[(pos_x+1)*6+pos_y+1];
			in_stone_ARRAY[(pos_x+1)*6+pos_y+1] = temp;
			pos_x = pos_x + 1;
			pos_y = pos_y + 1;
		end
	endcase
	end
  for(i=0; i<5; i=i+1) begin
	if(in_stone_ARRAY[6*i] == in_stone_ARRAY[6*i+1]
		&& in_stone_ARRAY[6*i+1] == in_stone_ARRAY[6*i+2]
		&& in_stone_ARRAY[6*i+2] != in_stone_ARRAY[6*i+3]
		&& in_stone_ARRAY[6*i+3] == in_stone_ARRAY[6*i+4]
		&& in_stone_ARRAY[6*i+4] == in_stone_ARRAY[6*i+5])
		ANS_horizon = ANS_horizon + 2;
	else begin
	for(j=0; j<4; j=j+1) begin
		if(in_stone_ARRAY[6*i+j] == in_stone_ARRAY[6*i+j+1]
		&& in_stone_ARRAY[6*i+j+1] == in_stone_ARRAY[6*i+j+2])
		begin
			ANS_horizon = ANS_horizon + 1;
			j = 4;
		end
	end
	end
  end
  
  for(j=0; j<6; j=j+1) begin
	for(i=0; i<3; i=i+1) begin
		if(in_stone_ARRAY[6*i+j] == in_stone_ARRAY[6*(i+1)+j]
		&& in_stone_ARRAY[6*(i+1)+j] == in_stone_ARRAY[6*(i+2)+j])
		begin
			ANS_vertical = ANS_vertical + 1;
			i = 3;
		end
	end
  end
end endtask

task wait_OUT_VALID; begin
  lat = -1;
  while(out_valid !== 1) begin
	lat = lat + 1;
	if(lat == 87) begin
		$display("***************************************************************");
		$display("*     		    Spec_6 Is Fail!      		             	*");
		$display("*         The execution latency are over 87 cycles.           *");
		$display("***************************************************************");
		repeat(2)@(negedge clk);
		$finish;
	end
	@(negedge clk);
  end
  total_latency = total_latency + lat;
end endtask

task check_ans; begin
  x = 1;
  while(out_valid) begin
    if(x>=3) begin
      $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
      $display ("                                                                  Spec_5 Is Fail!                                                           ");
      $display ("                                                           Outvalid is more than 2 cycles                                                   ");
      $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
      repeat(2) @(negedge clk);
      $finish;
    end
    if(x==1)
      if(out_combo!==ANS_horizon) begin
        $display ("--------------------------------------------------------------------");
        $display ("                     PATTERN #%d  Spec_7 Is Fail!                   ",patcount);
        $display ("                      Ans: %d, Yours: %d                            ",ANS_horizon, out_combo);		
        $display ("            Error !! The ANS_horizon is wrong  !!!                  ");
        $display ("--------------------------------------------------------------------");
        repeat(2) @(negedge clk);		
	$finish;
      end
    if(x==2)
      if(out_combo!==ANS_vertical) begin
        $display ("--------------------------------------------------------------------");
        $display ("                  PATTERN #%d  Spec_7 Is Fail!                      ",patcount);
        $display ("                      Ans: %d, Yours: %d                            ",ANS_vertical, out_combo);		
        $display ("            Error !! The ANS_vertical is wrong  !!!                 ");
        $display ("--------------------------------------------------------------------");
        repeat(2) @(negedge clk);		
	$finish;		    
      end
    @(negedge clk);	
    x=x+1;
  end
  if(x<3) begin
    $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
    $display ("                                                                  Spec_5 Is Fail!                                                           ");
    $display ("                                                           Outvalid is less than 2 cycles                                                   ");
    $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
    repeat(2) @(negedge clk);
    $finish;
  end
  if(out_combo != 0)
  begin
    $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
    $display ("                                                                  Spec_4 Is Fail!                                                           ");
    $display ("                                         The out_combo should be reset after your out_valid is pulled down.                                 ");
    $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
    repeat(2) @(negedge clk);
    $finish;
  end
  $display("\033[0;34mPASS PATTERN NO.%4d,\033[m \033[0;32mexecution cycle : %3d\033[m",patcount ,lat);
  pat_delay=($random(SEED)%'d3)+'d3; //(3~5)
  repeat(pat_delay)@(negedge clk);

end endtask

task YOU_PASS_task; begin
  $display ("--------------------------------------------------------------------");
  $display ("          ~(∶【∶)~(∧〉∧)~(∶【∶)~(∧〉∧)~(∶【∶)~            ");
  $display ("                         Congratulations!                           ");
  $display ("                  You have passed all patterns!                     ");
  $display ("--------------------------------------------------------------------");        
     
#(500);
$finish;



end endtask

endmodule
