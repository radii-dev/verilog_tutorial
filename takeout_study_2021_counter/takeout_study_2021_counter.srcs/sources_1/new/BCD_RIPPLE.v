`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:40:47
// Design Name: 
// Module Name: BCD_RIPPLE
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


module BCD_RIPPLE(
    input clk, L,
    output [3:0]Q, [3:0]Q_
    );
    wire T0;
    and(T0, Q[1], Q[2]);
    JKFF JKFF0(clk, L, L, Q[0], Q_[0]);
    JKFF JKFF1(Q[0], Q_[3], L, Q[1], Q_[1]);
    JKFF JKFF2(Q[1], L, L, Q[2], Q_[2]);
    JKFF JKFF3(Q[0], T0, L, Q[3], Q_[3]);
endmodule
module JKFF(
    input clk, J, K,
    output Q, Q_
    );
    reg Q = 4'b0000;
    assign Q_ = ~Q;
    always@(negedge clk)
    begin
        case({J, K})
            2'b00 : Q <= Q;
            2'b01 : Q <= 1'b0;
            2'b10 : Q <= 1'b1;
            2'b11 : Q <= ~Q;
        endcase
    end
endmodule
