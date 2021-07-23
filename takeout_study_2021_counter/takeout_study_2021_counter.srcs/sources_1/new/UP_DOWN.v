`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 23:10:51
// Design Name: 
// Module Name: UP_DOWN
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


module UP_DOWN 
#(
parameter size = 4,
parameter data = 4'b0101
)
(
    input clk, clr_n, mode, load,
    output reg [size-1:0]Q
);
    
    always@ (posedge clk or negedge clr_n)
    begin
        if (!clr_n)
            Q <= 'b0;
        else begin
            if (load) 
                Q <= data;
            else begin 
                if (mode)
                    Q <= Q + 1;
                else 
                    Q <= Q - 1;
            end
        end
    end
        
endmodule


//////////////////////////////////////////////////////////////////////////////////


module BOARD_UP_DOWN(
    output [3:0]led,        // Q: led
    input [2:0]sw,          // load: sw[2], mode: sw[1], clr: sw[0]
    input CLK12MHZ
    );
    
    CLK_DIV one_hz(.in_clk(CLK12MHZ), .out_clk(CLK1HZ));
    UP_DOWN board_UP_DOWN(CLK1HZ, sw[0], sw[1], sw[2], led);

endmodule
