`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 22:34:20
// Design Name: 
// Module Name: UNIVERSAL_SHIFT_REGISTER
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


module UNIVERSAL_SHIFT_REGISTER #(parameter size=4) (
    output reg [size-1:0]o,
    input clk,
    input clear_n,
    input load,
    input left,
    input right,
    input [size-1:0]i
    );
    always@(posedge clk or negedge clear_n)
    begin
        if(!clear_n)
            o <= 0;
        else if(load)
            o <= i;
        else if(!load && left)
            o <= {o[size-2:0], 1'b0};
        else if(!load && right)
            o <= {1'b0, o[size-1:1]};
    end
endmodule
