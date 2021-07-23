`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 21:53:49
// Design Name: 
// Module Name: RIPPLE_T
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


module RIPPLE_T(
    input clk, clr, T,
    output [3:0]Q
    );
    
    TFF TFF0(clk, clr, T, Q[0]);
    TFF TFF1(Q[0], clr, T, Q[1]);
    TFF TFF2(Q[1], clr, T, Q[2]);
    TFF TFF3(Q[2], clr, T, Q[3]);
endmodule
