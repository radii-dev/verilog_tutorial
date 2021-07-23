`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/10 00:07:49
// Design Name: 
// Module Name: Tb_JK
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


module Tb_JK();
    reg clk, RST_N, J, K;
    wire Q, Q_;
    
    JK sim_JK(Q, Q_, clk, RST_N, J, K);
    
    initial begin
        J = 1'b0;
        K = 1'b0;
        RST_N = 1'b0;
        clk = 1'b0;
            forever #10 clk = ~clk;
    end
    
    initial begin
        #100 RST_N = 1'b0; J = 1'b1; K = 1'b0;
        #100 RST_N = 1'b0; J = 1'b0; K = 1'b1;
        #100 RST_N = 1'b0; J = 1'b1; K = 1'b1;
        #100 RST_N = 1'b1; J = 1'b0; K = 1'b0;
        #100 RST_N = 1'b1; J = 1'b1; K = 1'b0;
        #100 RST_N = 1'b1; J = 1'b0; K = 1'b1;
        #100 RST_N = 1'b1; J = 1'b0; K = 1'b0;
        #100 RST_N = 1'b1; J = 1'b1; K = 1'b1;
    end
endmodule
