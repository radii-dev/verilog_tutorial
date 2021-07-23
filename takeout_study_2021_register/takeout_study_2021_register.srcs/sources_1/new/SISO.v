`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 22:33:42
// Design Name: 
// Module Name: SISO
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


module SISO #(parameter size=4) (
    output o,
    input clk,
    input clear_n,
    input i
    );
    reg [size-1:0]R;
    assign o = R[size-1];
    always@(posedge clk or negedge clear_n)
    begin
        if(!clear_n)
            R[0] <= 0;
        else
            R <= {R[size-2:0], i};
    end
endmodule