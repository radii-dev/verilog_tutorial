//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
//Date        : Wed May 19 22:55:06 2021
//Host        : DESKTOP-M4EM02O running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk_out1,
    clk_out2,
    reset,
    sys_clock);
  output clk_out1;
  output clk_out2;
  input reset;
  input sys_clock;

  wire clk_out1;
  wire clk_out2;
  wire reset;
  wire sys_clock;

  design_2 design_2_i
       (.clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
