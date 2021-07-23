`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 22:33:13
// Design Name: 
// Module Name: SIPO
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


module SIPO #(parameter size=4) (
    output reg [size-1:0]o,
    input clk,
    input clear_n,
    input i
    );
    always@(posedge clk or negedge clear_n)
    begin
        if(!clear_n)
            o <= 0;
        else
            o <= {o[size-2:0], i};
    end
endmodule