`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:51:46
// Design Name: 
// Module Name: Tb_JOHNSON
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


module Tb_JOHNSON();
    parameter size = 4;
    
    reg clk, clr_n;
    wire [3:0]Q;
    
    JOHNSON sim_J(clk, clr_n, Q);
    
    initial
    begin
        clr_n=1'b0;
        clk=1'b0;
        forever
            #10 clk = ~clk;
    end
    initial
    begin
        #40 clr_n=1'b1;
        #1000 $stop;
    end
endmodule
