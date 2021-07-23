`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/10 00:07:27
// Design Name: 
// Module Name: JK
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


module JK(
    output Q, Q_,
    input CLK, RST_N, J, K
    );
    
    reg Q;
    assign Q_ = ~Q;
    
    always@(posedge CLK, negedge RST_N) begin
        if(!RST_N) begin
            Q <= 1'b0;
        end
        else begin
            case({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= ~Q;
                default: Q <= 1'bz;
            endcase
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


module JK_pr(
    output Q, Q_,
    input CLK, RST_N, pr, J, K
    );
    
    reg Q;
    assign Q_ = ~Q;
    
    always@(posedge CLK or negedge RST_N or negedge pr) begin
        if(!RST_N)
            Q <= 1'b0;
        else if(!pr)
            Q <= 1'b1;
        else begin
            case({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= ~Q;
                default: Q <= 1'bz;
            endcase
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


module BOARD_JK(
    output [2:0]led,    // clk: led[2], Q: led[1], Q_: led[0]
    input [3:0]sw,          // RST: sw[3], PR: sw[2], J: sw[1], K: sw[0]
    input CLK12MHZ
    );
    
    CLK_DIV one_hz(CLK12MHZ, CLK1HZ, led[2]);
    JK_pr board_JK(.Q(led[1]), .Q_(led[0]), .CLK(CLK1HZ), .RST_N(sw[3]), .pr(sw[2]), .J(sw[1]), .K(sw[0]));
endmodule
