`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 21:56:46
// Design Name: 
// Module Name: Tb_RIPPLE
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


module Tb_RIPPLE();
    reg clk, clr, T;
    wire [3:0]Q;
    wire [3:0]Q1;
    
    RIPPLE_D sim_RIPPLE_D(clk, clr, Q);
    RIPPLE_T sim_RIPPLE_T(clk, clr, T, Q1);
    
    initial
    begin
        clr=1'b1;
        T=1'b1;
        
        clk=1'b0;
        forever
            #10 clk =~clk;
    end
    
    initial
    begin
        #50 clr=1'b0;
        #100 $stop;
    end
endmodule
