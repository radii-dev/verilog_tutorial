`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/05 22:33:38
// Design Name: 
// Module Name: BOARD_G2B
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


module BOARD_G2B(
    input [3:0]sw,
    output reg [3:0]led
    );
    
    always@ (sw[3] | sw[2] | sw[1] | sw[0]) begin
        case(sw) 
            4'b0000 : begin
                led = 4'b0000;
            end
            4'b0001 : begin
                led = 4'b0001;
            end
            4'b0011 : begin
                led = 4'b0010;
            end
            4'b0010 : begin
                led = 4'b0011;
            end
            4'b0110 : begin
                led = 4'b0100;
            end
            4'b0111 : begin
                led = 4'b0101;
            end
            4'b0101 : begin
                led = 4'b0110;
            end
            4'b0100 : begin
                led = 4'b0111;
            end
            4'b1100 : begin
                led = 4'b1000;
            end
            4'b1101 : begin
                led = 4'b1001;
            end
            4'b1111 : begin
                led = 4'b1010;
            end
            4'b1110 : begin
                led = 4'b1011;
            end
            4'b1010 : begin
                led = 4'b1100;
            end
            4'b1011 : begin
                led = 4'b1101;
            end
            4'b1001 : begin
                led = 4'b1110;
            end
            4'b1000 : begin
                led = 4'b1111;
            end
        endcase
    end
endmodule
