`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 22:32:38
// Design Name: 
// Module Name: PISO
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


module PISO #(parameter size=4) (
    output o,
    input clk,
    input clear_n,
    input load,
    input [size-1:0]i
    );
    reg [size-1:0]R;
    assign o = R[size-1];
    //assign o = R[size-1:0];
    always@(posedge clk or negedge clear_n)
    begin
        if(!clear_n)
            R <= 0;
        else if(load)
            R <= i;
        else
            R <= {R[size-2:0], 1'b0};
    end
endmodule
