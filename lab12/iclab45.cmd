#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jun 10 17:51:02 2018                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/RAID2/COURSE/iclab/iclab45/Lab12/EXERCISE/05_APR/CHIP.inn.dat CHIP
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir power_log
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope TESTBED/U_CHIP -start 0 -end 1000 -block {} ../06_POST_SIM/CHIP.vcd
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile power_log/CHIP.rpt
set_pg_library_mode -celltype techonly -default_area_cap 0.5 -filler_cells {FILL1 FILL16 FILL2 FILL32 FILL4 FILL64 FILL8} -extraction_tech_file RCGen.tch -lef_layermap lefdef.layermap -power_pins {VDD 1.8} -ground_pins {VSS GND}
generate_pg_library -output power_log
set_pg_library_mode -celltype stdcells -spice_subckts umc18_lvs.spi -spice_models umc018.l -spice_corners L18U18V_SS -filler_cells {FILL1 FILL16 FILL2 FILL32 FILL4 FILL64 FILL8} -extraction_tech_file RCGen.tch -lef_layermap lefdef.layermap -power_pins {VDD 1.8} -ground_pins {VSS GND} -cell_list_file cell018.list -current_distribution propagation
generate_pg_library -output power_log
set_rail_analysis_mode -method static -power_switch_eco false -accuracy xd -power_grid_library {power_log/techonly.cl power_log/stdcells.cl} -process_techgen_em_rules false -enable_rlrp_analysis false -vsrc_search_distance 50 -ignore_shorts false -enable_manufacturing_effects false -report_via_current_direction false
setDrawView place
create_power_pads -net VDD -auto_fetch
setDrawView place
create_power_pads -net VDD -vsrc_file CHIP_VDD.pp
create_power_pads -net GND -auto_fetch
setDrawView place
create_power_pads -net GND -vsrc_file CHIP_GND.pp
set_pg_nets -net VDD -voltage 1.8 -threshold 1.7
set_power_pads -net VDD -format xy -file CHIP_VDD.pp
set_power_data -format current power_log/static_VDD.ptiavg
analyze_rail -type net -results_directory power_log VDD
set_pg_nets -net GND -voltage 0 -threshold 0.1
set_power_pads -net GND -format xy -file CHIP_GND.pp
set_power_data -format current power_log/static_GND.ptiavg
analyze_rail -type net -results_directory power_log GND
setLayerPreference powerNet -color {#FF0000 #FF1500 #FF2A00 #FF4000 #FF5500 #FF6A00 #FF8000 #FF9500 #FFA800 #FFB400 #FFBF00 #FFCB00 #FFD600 #FFE200 #FFED00 #FFF900 #EEF600 #CDE600 #ACD500 #8BC500 #6AB400 #4AA400 #299400 #088300 #007318 #006239 #00525A #00417B #00319C #0020BD #0010DE #0000FF}
set_power_rail_display -plot none
setLayerPreference powerNet -color {#ff0000 #ff1500 #ff2a00 #ff4000 #ff5500 #ff6a00 #ff8000 #ff9500 #ffa800 #ffb400 #ffbf00 #ffcb00 #ffd600 #ffe200 #ffed00 #fff900 #eef600 #cde600 #acd500 #8bc500 #6ab400 #4aa400 #299400 #088300 #007318 #006239 #00525a #00417b #00319c #0020bd #0010de #0000ff}
::fit main.layout.win
::read_power_rail_results -rail_directory power_log/VDD_25C_avg_1 -instance_voltage_window { timing  whole  } -instance_voltage_method {  worst  best  avg  worstavg }
set_power_rail_display -plot none
setLayerPreference powerNet -color {#ff0000 #ff1500 #ff2a00 #ff4000 #ff5500 #ff6a00 #ff8000 #ff9500 #ffa800 #ffb400 #ffbf00 #ffcb00 #ffd600 #ffe200 #ffed00 #fff900 #eef600 #cde600 #acd500 #8bc500 #6ab400 #4aa400 #299400 #088300 #007318 #006239 #00525a #00417b #00319c #0020bd #0010de #0000ff}
set_power_rail_display -plot ir
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
setLayerPreference powerNet -color {#ff0000 #ff1500 #ff2a00 #ff4000 #ff5500 #ff6a00 #ff8000 #ff9500 #ffa800 #ffb400 #ffbf00 #ffcb00 #ffd600 #ffe200 #ffed00 #fff900 #eef600 #cde600 #acd500 #8bc500 #6ab400 #4aa400 #299400 #088300 #007318 #006239 #00525a #00417b #00319c #0020bd #0010de #0000ff}
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
set_power_rail_display -range_min 0 -range_max 3.70681 -filter_min 0 -filter_max 3.70681
