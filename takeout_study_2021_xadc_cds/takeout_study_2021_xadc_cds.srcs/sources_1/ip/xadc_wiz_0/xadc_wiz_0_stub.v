// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri May 14 11:27:16 2021
// Host        : DESKTOP-M4EM02O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0_stub.v
// Design      : xadc_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xadc_wiz_0(daddr_in, dclk_in, den_in, di_in, dwe_in, reset_in, 
  vauxp0, vauxn0, vauxp1, vauxn1, vauxp2, vauxn2, vauxp3, vauxn3, vauxp8, vauxn8, vauxp9, vauxn9, vauxp10, 
  vauxn10, vauxp11, vauxn11, busy_out, channel_out, do_out, drdy_out, eoc_out, eos_out, 
  vccaux_alarm_out, vccint_alarm_out, alarm_out, vp_in, vn_in)
/* synthesis syn_black_box black_box_pad_pin="daddr_in[6:0],dclk_in,den_in,di_in[15:0],dwe_in,reset_in,vauxp0,vauxn0,vauxp1,vauxn1,vauxp2,vauxn2,vauxp3,vauxn3,vauxp8,vauxn8,vauxp9,vauxn9,vauxp10,vauxn10,vauxp11,vauxn11,busy_out,channel_out[4:0],do_out[15:0],drdy_out,eoc_out,eos_out,vccaux_alarm_out,vccint_alarm_out,alarm_out,vp_in,vn_in" */;
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  input vauxp0;
  input vauxn0;
  input vauxp1;
  input vauxn1;
  input vauxp2;
  input vauxn2;
  input vauxp3;
  input vauxn3;
  input vauxp8;
  input vauxn8;
  input vauxp9;
  input vauxn9;
  input vauxp10;
  input vauxn10;
  input vauxp11;
  input vauxn11;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output vccaux_alarm_out;
  output vccint_alarm_out;
  output alarm_out;
  input vp_in;
  input vn_in;
endmodule
