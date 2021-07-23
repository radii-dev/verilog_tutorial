`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:16:30
// Design Name: 
// Module Name: RIPPLE_FOR
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


module RIPPLE_FOR #(parameter max = 4)(
    output reg [max-1:0]o,
    input clk, clr
    );
    
    integer i;
    
    always@(negedge clk, posedge clr)
    begin
        if(clr)
            o <= 0;
        else
            for(i=0; i<2**max; i=i+1)
                o <= o + 1;
    end
endmodule
