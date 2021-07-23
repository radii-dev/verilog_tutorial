`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/05 14:06:28
// Design Name: 
// Module Name: RING
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


module RING #(parameter size = 4)(
    input clk, clr_n,
    output reg [size-1:0]Q
    );
    
    always@ (posedge clk or negedge clr_n)
        if(!clr_n || (Q==1))
            Q <= 2**(size-1);
        else
            Q <= (Q >> 1);
        
endmodule


//////////////////////////////////////////////////////////////////////////////////


module BOARD_RING (
    output [3:0]led,        // Q: led
    input [0:0]sw,          // clr: sw[0]
    input CLK12MHZ
    );
    
    CLK_DIV one_hz(.in_clk(CLK12MHZ), .out_clk(CLK1HZ));
    RING board_RING(CLK1HZ, sw[0], led);

endmodule
