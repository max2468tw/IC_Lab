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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : PATTERN.sv
//   Module Name : PATTERN
//   Release version : v1.0 (Release Date: May-2017)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

`include "Usertype_PKG.sv"

program automatic PATTERN(input clk, INF.PATTERN inf);
import usertype::*;

parameter PATNUM = 500000;                 
integer SEED = 123;
integer i, j, x, lat, total_latency;
integer patcount;
integer pat_delay;
integer capacity [1:4];
integer usage[1:4];
window_led led_tmp[1:4];
logic [2:0]ration_in[1:4];
logic [2:0]r_ratio[1:4];
flavor flavor_tmp;
flavor flavor_in;
size size_in;

integer insert_times;
integer cap;
integer sum;
integer tmp_supply;
integer choose;
logic success;
//---------------------------------------------------------------------
//   Main FLOW
//---------------------------------------------------------------------

initial begin
	inf.rst_n = 1;
	
	for(i=1;i<=4;i=i+1) begin
		capacity[i] = 0;
	end
	
 	total_latency = 0;
 	reset_signal_task;

	for(patcount=1; patcount<=PATNUM; patcount=patcount+1) begin
		choose = $random(SEED)%2;
		if(choose == 1)
			insert_task;
		else
			coffee_task;
		wait_OUT_VALID;
		check_ans;
	end
  	YOU_PASS_task;


end

//================================================================
// task
//================================================================
task reset_signal_task; begin 
  #(0.5);  inf.rst_n=0;
		   inf.select_i=none;
		   inf.supply=0;
		   inf.required_size=no_size_inf;
		   inf.ratio=0;
		   inf.flavor_btn=no_coffee;
  #(2.0);
  if((inf.out_valid !== 0)||
	(inf.window.espresso.led !== 0)||(inf.window.espresso.monitor !== 0)||
	(inf.window.milk.led !== 0)||(inf.window.milk.monitor !== 0)||
	(inf.window.chocolate.led !== 0)||(inf.window.chocolate.monitor !== 0)||
	(inf.window.froth.led !== 0)||(inf.window.froth.monitor !== 0)||
	(inf.flavor_out !== 0)
	) begin
    $display("************************************************************");
    $display("*                       ICLAB_FAIL                         *");
    $display("*   Output signal should be 0 after initial RESET at %t    *",$time);
    $display("************************************************************");
    $finish;
  end
  #(10);  inf.rst_n=1;
end endtask

task insert_task; begin
  if(patcount=='d1)
    @(negedge clk);
  insert_times = ($random(SEED)%'d5)+1;
  for(j=0; j<insert_times; j=j+1) begin
	inf.select_i = ($random(SEED)%'d4) + 1;
	tmp_supply = $random(SEED) % 'd1023;
	while(tmp_supply + capacity[inf.select_i] > 'd1023) begin
		tmp_supply = $random(SEED) % 'd1023;
	end
    inf.supply = tmp_supply;
	capacity[inf.select_i] = capacity[inf.select_i] + inf.supply;
    @(negedge clk);
  end
  inf.select_i = none;
  inf.supply = 0;
  led_tmp[1] = (capacity[1]==0)?red:green;
  led_tmp[2] = (capacity[2]==0)?red:green;
  led_tmp[3] = (capacity[3]==0)?red:green;
  led_tmp[4] = (capacity[4]==0)?red:green;
  flavor_tmp = no_coffee;
end endtask

task coffee_task; begin
	if(patcount=='d1)
		@(negedge clk);
	inf.flavor_btn = ($random(SEED) % 'd4)+1;
	flavor_in = inf.flavor_btn;
	inf.required_size = ($random(SEED)%'d4)+1;
	size_in = inf.required_size;
	if(flavor_in == 4) begin
		inf.ratio = $random(SEED) % 'd8;
		ration_in[1] = inf.ratio;
	end
	@(negedge clk);
	inf.flavor_btn = none;
	inf.required_size = no_size_inf;
	if(flavor_in == 4) begin
		for(j=0; j<3; j=j+1) begin
			if(j == 2 && !ration_in[3]&&!ration_in[2]&&!ration_in[1])
				inf.ratio = ($random(SEED)%'d7)+1;
			else
				inf.ratio = ($random(SEED) % 'd8);
			ration_in[j+2] = inf.ratio;
			@(negedge clk);
		end
	end
	inf.ratio = 0;
	if(flavor_in == latte) begin
		ration_in[1] = 3;
		ration_in[2] = 3;
		ration_in[3] = 0;
		ration_in[4] = 4;
	end
	else if(flavor_in == cappuccino) begin
		ration_in[1] = 7;
		ration_in[2] = 3;
		ration_in[3] = 0;
		ration_in[4] = 5;
	end
	else if(flavor_in == chocolate) begin
		ration_in[1] = 3;
		ration_in[2] = 1;
		ration_in[3] = 1;
		ration_in[4] = 0;
	end
	
	case(size_in)
		xl: cap = 600;
		l: cap = 480;
		m: cap = 360;
		s: cap = 240;
		default: cap = 0;
	endcase
	
	if(ration_in[1]%7 == 0 &&ration_in[2]%7 == 0 && ration_in[3]%7 == 0 && ration_in[4]%7 == 0) begin
		r_ratio[1] = ration_in[1]/7;
		r_ratio[2] = ration_in[2]/7;
		r_ratio[3] = ration_in[3]/7;
		r_ratio[4] = ration_in[4]/7;
	end
	else if(ration_in[1]%6 == 0 &&ration_in[2]%6 == 0 && ration_in[3]%6 == 0 && ration_in[4]%6 == 0) begin
		r_ratio[1] = ration_in[1]/6;
		r_ratio[2] = ration_in[2]/6;
		r_ratio[3] = ration_in[3]/6;
		r_ratio[4] = ration_in[4]/6;
	end
	else if(ration_in[1]%4 == 0 &&ration_in[2]%4 == 0 && ration_in[3]%4 == 0 && ration_in[4]%4 == 0) begin
		r_ratio[1] = ration_in[1]/4;
		r_ratio[2] = ration_in[2]/4;
		r_ratio[3] = ration_in[3]/4;
		r_ratio[4] = ration_in[4]/4;
	end
	else if(ration_in[1]%3 == 0 &&ration_in[2]%3 == 0 && ration_in[3]%3 == 0 && ration_in[4]%3 == 0) begin
		r_ratio[1] = ration_in[1]/3;
		r_ratio[2] = ration_in[2]/3;
		r_ratio[3] = ration_in[3]/3;
		r_ratio[4] = ration_in[4]/3;
	end
	else if(ration_in[1]%2 == 0 &&ration_in[2]%2 == 0 && ration_in[3]%2 == 0 && ration_in[4]%2 == 0) begin
		r_ratio[1] = ration_in[1]/2;
		r_ratio[2] = ration_in[2]/2;
		r_ratio[3] = ration_in[3]/2;
		r_ratio[4] = ration_in[4]/2;
	end
	else begin
		r_ratio[1] = ration_in[1];
		r_ratio[2] = ration_in[2];
		r_ratio[3] = ration_in[3];
		r_ratio[4] = ration_in[4];
	end
	sum	= r_ratio[1] + r_ratio[2] + r_ratio[3] + r_ratio[4];
	
	usage[1] = cap/sum*r_ratio[1];
	usage[2] = cap/sum*r_ratio[2];
	usage[3] = cap/sum*r_ratio[3];
	usage[4] = cap/sum*r_ratio[4];

	success = (capacity[1]>=usage[1])&&(capacity[2]>=usage[2])&&(capacity[3]>=usage[3])&&(capacity[4]>=usage[4]);
	if (capacity[1] == 0) begin
		led_tmp[1] = red;
	end
	else if(capacity[1] > usage[1] && success) begin
		led_tmp[1] = green;
		capacity[1] = capacity[1]-usage[1];
	end
	else if(capacity[1] == usage[1] && success) begin
		led_tmp[1] = red;
		capacity[1] = capacity[1]-usage[1];
	end
	else if(capacity[1] >= usage[1] && (success == 0)) begin
		led_tmp[1] = green;
		capacity[1] = capacity[1];
	end
	else if(capacity[1] < usage[1] && (success == 0)) begin
		led_tmp[1] = red;
		capacity[1] = capacity[1];
	end
	
	if (capacity[2] == 0) begin
		led_tmp[2] = red;
	end
	else if(capacity[2] > usage[2] && success) begin
		led_tmp[2] = green;
		capacity[2] = capacity[2]-usage[2];
	end
	else if(capacity[2] == usage[2] && success) begin
		led_tmp[2] = red;
		capacity[2] = capacity[2]-usage[2];
	end
	else if(capacity[2] >= usage[2] && (success == 0)) begin
		led_tmp[2] = green;
		capacity[2] = capacity[2];
	end
	else if(capacity[2] < usage[2] && (success == 0)) begin
		led_tmp[2] = red;
		capacity[2] = capacity[2];
	end
	
	if (capacity[3] == 0) begin
		led_tmp[3] = red;
	end
	else if(capacity[3] > usage[3] && success) begin
		led_tmp[3] = green;
		capacity[3] = capacity[3]-usage[3];
	end
	else if(capacity[3] == usage[3] && success) begin
		led_tmp[3] = red;
		capacity[3] = capacity[3]-usage[3];
	end
	else if(capacity[3] >= usage[3] && (success == 0)) begin
		led_tmp[3] = green;
		capacity[3] = capacity[3];
	end
	else if(capacity[3] < usage[3] && (success == 0)) begin
		led_tmp[3] = red;
		capacity[3] = capacity[3];
	end
	
	if (capacity[4] == 0) begin
		led_tmp[4] = red;
	end
	else if(capacity[4] > usage[4] && success) begin
		led_tmp[4] = green;
		capacity[4] = capacity[4]-usage[4];
	end
	else if(capacity[4] == usage[4] && success) begin
		led_tmp[4] = red;
		capacity[4] = capacity[4]-usage[4];
	end
	else if(capacity[4] >= usage[4] && (success == 0)) begin
		led_tmp[4] = green;
		capacity[4] = capacity[4];
	end
	else if(capacity[4] < usage[4] && (success == 0)) begin
		led_tmp[4] = red;
		capacity[4] = capacity[4];
	end
	if(success)
		flavor_tmp = flavor_in;
	else
		flavor_tmp = no_coffee;
end endtask

task wait_OUT_VALID; begin
  lat = -1;
  while(inf.out_valid !== 1) begin
	lat = lat + 1;
	if(lat == 100) begin
		$display("***************************************************************");
		$display("*     		    ICLAB_FAIL      			*");
		$display("*         The execution latency are over 100 cycles.          *");
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
  while(inf.out_valid) begin
    if(x>=2) begin
      $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
      $display ("                                                                  ICLAB_FAIL!                                                               ");
      $display ("                                                           Outvalid is more than 1 cycles                                                   ");
      $display ("--------------------------------------------------------------------------------------------------------------------------------------------");
      repeat(2) @(negedge clk);
      $finish;
    end
    if(x==1)
      if((inf.window.espresso.led !== led_tmp[1])||(inf.window.espresso.monitor !== capacity[1])||
		(inf.window.milk.led !== led_tmp[2])||(inf.window.milk.monitor !== capacity[2])||
		(inf.window.chocolate.led !== led_tmp[3])||(inf.window.chocolate.monitor !== capacity[3])||
		(inf.window.froth.led !== led_tmp[4])||(inf.window.froth.monitor !== capacity[4])||
		(inf.flavor_out !== flavor_tmp)
		) begin
        $display ("--------------------------------------------------------------------");
        $display ("                     PATTERN #%d  FAILED!!!                         ",patcount);
        $display ("--------------------------------------------------------------------");
        repeat(2) @(negedge clk);		
		$finish;
      end
    @(negedge clk);	
    x=x+1;
  end
  $display("\033[0;34mPASS PATTERN NO.%4d,\033[m \033[0;32mexecution cycle : %3d\033[m",patcount ,lat);
  pat_delay= 1;
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
endprogram