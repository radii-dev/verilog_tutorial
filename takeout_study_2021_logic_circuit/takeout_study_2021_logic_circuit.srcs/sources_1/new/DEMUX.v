`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/29 08:33:41
// Design Name: 
// Module Name: DEMUX
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


//module DEMUX(
//    input Y, S1, S2,
//    output A, B, C, D
//    );
    
//    wire T1, T2;
    
//    not(T1, S1);
//    not(T2, S2);
    
//    and(A, Y, T1, T2);
//    and(B, Y, T1, S2);
//    and(C, Y, S1, T2);
//    and(D, Y, S1, S2);
//endmodule


//////////////////////////////////////////////////////////////////////////////////

module BOARD_DEMUX_DATAFLOW(
    input [0:0]btn,
    input [1:0]sw,
    output [3:0]led
    );
    
    assign led[0] = btn[0] & (~sw[0]) & (~sw[1]);
    assign led[1] = btn[0] & (~sw[0]) & sw[1];
    assign led[2] = btn[0] & sw[0] & (~sw[1]);
    assign led[3] = btn[0] & sw[0] & sw[1];
endmodule

module BOARD_DEMUX(
    input [0:0]btn,
    input [1:0]sw,
    output reg [3:0]led
    );
    
    always@ (sw[1] | sw[0])
    begin
            case(sw)
                    2'b00 : begin
                                            led[0] = btn[0];
                                            led[1] = 0;
                                            led[2] = 0;
                                            led[3] = 0;
                                   end
                    2'b01 : begin
                                            led[0] = 0;
                                            led[1] = btn[0];
                                            led[2] = 0;
                                            led[3] = 0;
                                   end
                    2'b10 : begin
                                            led[0] = 0;
                                            led[1] = 0;
                                            led[2] = btn[0];
                                            led[3] = 0;
                                   end
                    2'b11 : begin
                                            led[0] = 0;
                                            led[1] = 0;
                                            led[2] = 0;
                                            led[3] = btn[0];
                                   end
            endcase
     end
 endmodule
