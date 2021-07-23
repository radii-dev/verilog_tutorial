`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 23:18:38
// Design Name: 
// Module Name: Tb_D
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


module Tb_D();
    reg clk, NOT_RST, D;
    wire Q, Q_;
    
    D sim_D(.Q(Q), .Q_(Q_), .clk(clk), .RST_n(NOT_RST), .D(D));
    
    initial begin
        NOT_RST = 1'b1;
        D = 1'b0;
        clk = 1'b0;
            forever #10 clk = ~clk;
    end
    
    initial begin
        #10 NOT_RST = 1'b0; D = 1'b0;
        #10 NOT_RST = 1'b0; D = 1'b1;
        #10 NOT_RST = 1'b1; D = 1'b0;
        #10 NOT_RST = 1'b1; D = 1'b1;
        #10 NOT_RST = 1'b1; D = 1'b1;
        #10 NOT_RST = 1'b1; D = 1'b0;
    end
endmodule
