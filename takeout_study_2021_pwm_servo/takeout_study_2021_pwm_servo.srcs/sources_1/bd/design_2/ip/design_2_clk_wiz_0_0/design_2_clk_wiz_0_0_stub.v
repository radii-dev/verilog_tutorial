// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed May 19 22:57:35 2021
// Host        : DESKTOP-M4EM02O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/__verilog/learning/takeout_study_2021_pwm_servo/takeout_study_2021_pwm_servo.srcs/sources_1/bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0_stub.v
// Design      : design_2_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_2_clk_wiz_0_0(clk_out1, clk_out2, resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,resetn,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;
endmodule
