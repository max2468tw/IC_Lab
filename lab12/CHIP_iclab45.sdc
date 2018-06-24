###################################################################

# Created by write_sdc on Fri Jun  1 16:24:04 2018

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_wire_load_mode top
set_load -pin_load 0.05 [get_ports out_valid]
set_load -pin_load 0.05 [get_ports {out_image[7]}]
set_load -pin_load 0.05 [get_ports {out_image[6]}]
set_load -pin_load 0.05 [get_ports {out_image[5]}]
set_load -pin_load 0.05 [get_ports {out_image[4]}]
set_load -pin_load 0.05 [get_ports {out_image[3]}]
set_load -pin_load 0.05 [get_ports {out_image[2]}]
set_load -pin_load 0.05 [get_ports {out_image[1]}]
set_load -pin_load 0.05 [get_ports {out_image[0]}]
create_clock [get_ports clk]  -period 8  -waveform {0 4}
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  4  [get_ports rst_n]
set_input_delay -clock clk  4  [get_ports in_valid]
set_input_delay -clock clk  4  [get_ports {in_image[7]}]
set_input_delay -clock clk  4  [get_ports {in_image[6]}]
set_input_delay -clock clk  4  [get_ports {in_image[5]}]
set_input_delay -clock clk  4  [get_ports {in_image[4]}]
set_input_delay -clock clk  4  [get_ports {in_image[3]}]
set_input_delay -clock clk  4  [get_ports {in_image[2]}]
set_input_delay -clock clk  4  [get_ports {in_image[1]}]
set_input_delay -clock clk  4  [get_ports {in_image[0]}]
set_output_delay -clock clk  4  [get_ports out_valid]
set_output_delay -clock clk  4  [get_ports {out_image[7]}]
set_output_delay -clock clk  4  [get_ports {out_image[6]}]
set_output_delay -clock clk  4  [get_ports {out_image[5]}]
set_output_delay -clock clk  4  [get_ports {out_image[4]}]
set_output_delay -clock clk  4  [get_ports {out_image[3]}]
set_output_delay -clock clk  4  [get_ports {out_image[2]}]
set_output_delay -clock clk  4  [get_ports {out_image[1]}]
set_output_delay -clock clk  4  [get_ports {out_image[0]}]
set_clock_gating_check -rise -setup 0 [get_cells                               \
clk_gate_out_valid_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
clk_gate_out_valid_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
clk_gate_out_valid_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
clk_gate_out_valid_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
clk_gate_block_reg_7_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
clk_gate_block_reg_7_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells clk_gate_block_reg_7_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells clk_gate_block_reg_7_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
clk_gate_center_reg_3_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
clk_gate_center_reg_3_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
clk_gate_center_reg_3_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
clk_gate_center_reg_3_/main_gate]
