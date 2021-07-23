`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 21:44:37
// Design Name: 
// Module Name: RIPPLE_D
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


module RIPPLE_D(
    input clk, clr,
    output [3:0]Q
    );
    
    wire [3:0]Q_;
    
    DFF DFF0(clk, clr, Q_[0], Q[0], Q_[0]);
    DFF DFF1(Q[0], clr, Q_[1], Q[1], Q_[1]);
    DFF DFF2(Q[1], clr, Q_[2], Q[2], Q_[2]);
    DFF DFF3(Q[2], clr, Q_[3], Q[3], Q_[3]);    
endmodule