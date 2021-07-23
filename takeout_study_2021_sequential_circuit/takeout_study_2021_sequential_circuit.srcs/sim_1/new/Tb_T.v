`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 23:46:27
// Design Name: 
// Module Name: Tb_T
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


module Tb_T();
    reg clk, T, NOT_RST;
    wire Q, Q_;
    
    T_FF sim_T(Q, Q_, clk, NOT_RST, T);
    
    initial begin
        NOT_RST = 1'b0;
        T = 1'b0;
        clk = 1'b0;
    end
    
    always #10 clk = ~clk;
    
    initial begin
        #100 NOT_RST = 1'b0; T = 1'b0;
        #100 NOT_RST = 1'b0; T = 1'b1;
        #100 NOT_RST = 1'b1; T = 1'b1;
        #100 NOT_RST = 1'b1; T = 1'b0;
        #100 NOT_RST = 1'b1; T = 1'b1;
        #100 NOT_RST = 1'b1; T = 1'b1;
    end
endmodule
