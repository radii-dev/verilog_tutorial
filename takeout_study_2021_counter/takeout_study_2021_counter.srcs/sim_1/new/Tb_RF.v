`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:21:33
// Design Name: 
// Module Name: Tb_RF
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


module Tb_RF();
    parameter size = 4;
    
    reg clk, clr;
    wire [size-1:0]out;
    
    RIPPLE_FOR#(size) test(out, clk, clr);
    
    initial begin
        clr = 1'b0;
        clk = 1'b0;
        
        forever
        #10 clk = ~clk;
    end
    
    initial begin
        #10 clr = 1'b1;
        #20 clr = 1'b0;
    end
endmodule
