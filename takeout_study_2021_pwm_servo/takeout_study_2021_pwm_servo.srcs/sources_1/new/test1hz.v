`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/26 21:43:01
// Design Name: 
// Module Name: test1hz
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


module test1hz(
    output [0:0]led,
    input CLK100MHZ
    );
    
    parameter input_hz = 100000000;
    parameter target_hz = 1;
    wire CLK1HZ;
    
    CLK_DIV #(input_hz, target_hz) (CLK100MHZ, CLK1HZ, led[0]);
    
endmodule

