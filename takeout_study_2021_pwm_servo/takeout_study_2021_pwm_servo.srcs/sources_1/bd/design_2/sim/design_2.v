//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
//Date        : Wed May 19 22:55:06 2021
//Host        : DESKTOP-M4EM02O running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (clk_out1,
    clk_out2,
    reset,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_2_sys_clock, FREQ_HZ 12000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire reset_1;
  wire sys_clock_1;

  assign clk_out1 = clk_wiz_0_clk_out1;
  assign clk_out2 = clk_wiz_0_clk_out2;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_2_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .resetn(reset_1));
endmodule
