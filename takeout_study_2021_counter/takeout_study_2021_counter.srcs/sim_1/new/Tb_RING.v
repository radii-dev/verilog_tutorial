`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/05 15:25:13
// Design Name: 
// Module Name: Tb_RING
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


module Tb_RING();
    parameter size = 4;
    
    reg clk, clr_n;
    wire [3:0]Q;
    
    RING sim_RING(clk, clr_n, Q);
    
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
