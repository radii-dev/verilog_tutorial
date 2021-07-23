set_property SRC_FILE_INFO {cfile:D:/__verilog/learning/takeout_study_2021_logic_circuit/takeout_study_2021_logic_circuit.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc rfile:../../../takeout_study_2021_logic_circuit.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { CLK12MHZ }]; #IO_L13P_T2_MRCC_15 Sch=uclk
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 83.333 -waveform {0 41.667} [get_ports { CLK12MHZ }];
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R2    IOSTANDARD SSTL135 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_34 Sch=ddr3_clk[200]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { CLK100MHZ }];
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L21P_T3_DQS_15 Sch=sw[1]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L21N_T3_DQS_A18_15 Sch=sw[2]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M5    IOSTANDARD SSTL135 } [get_ports { sw[3] }]; #IO_L6N_T0_VREF_34 Sch=sw[3]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L16N_T2_A27_15 Sch=led[2]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L17P_T2_A26_15 Sch=led[3]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L17N_T2_A25_15 Sch=led[4]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L18P_T2_A24_15 Sch=led[5]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L18N_T2_A23_15 Sch=btn[0]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L19P_T3_A22_15 Sch=btn[1]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L19N_T3_A21_VREF_15 Sch=btn[2]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L20P_T3_A20_15 Sch=btn[3]
