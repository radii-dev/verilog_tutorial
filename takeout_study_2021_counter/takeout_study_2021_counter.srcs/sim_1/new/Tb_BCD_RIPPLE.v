`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:42:06
// Design Name: 
// Module Name: Tb_BCD_RIPPLE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_BCD_RIPPLE();
    reg clk, L;
    wire [3:0]Q;
//    wire [3:0]Q_;
    BCD_RIPPLE sim_BCD(clk, L, Q);
    initial
    begin
        L=1'b0;
        clk=1'b0;
        forever
            #10 clk = ~clk;
    end
    initial
    begin
        #20 L=1'b1;
        #1000 $stop;
    end
endmodule
