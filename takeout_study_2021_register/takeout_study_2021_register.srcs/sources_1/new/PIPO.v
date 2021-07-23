`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 22:31:20
// Design Name: 
// Module Name: PIPO
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


module PIPO #(parameter size=4) (
    output reg [size-1:0]o,
    input clk,
    input clear_n,
    input load,
    input [size-1:0]i
    );
    always@(posedge clk or negedge clear_n)
    begin
        if(!clear_n)
            o <= 0;
        else if(load)
            o <= i;
    end
endmodule
