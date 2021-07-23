`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 23:12:54
// Design Name: 
// Module Name: Tb_UP_DOWN
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


module Tb_UP_DOWN();
    parameter size = 4;
    
    reg clk, clr_n, mode, load;
    wire [3:0]Q;
    
    UP_DOWN sim_UP_DOWN(clk, clr_n, mode, load, Q);
    
    initial
    begin
        clr_n=1'b0;
        clk=1'b0;
        mode=1'b1;
        load=1'b0;
        forever
            #10 clk = ~clk;
    end
    initial
    begin
        #40 clr_n = 1'b1;
        #460 mode = 1'b0;
        #300 load = 1'b1;
        #200 load = 1'b0;
             mode = 1'b1;
        #1000 $stop;
    end
endmodule