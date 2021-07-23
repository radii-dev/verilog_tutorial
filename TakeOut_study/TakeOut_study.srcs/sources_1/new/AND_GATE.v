`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/25 18:09:34
// Design Name: 
// Module Name: AND_GATE
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


//module AND_GATE(
//    input A, B,
//    output Y
//    );
    
//    assign Y = A & B;
//endmodule


////////////////////////////////////////////////////////////////////////////////////


//module AND_GF(
//    input A, B,
//    output Y
//    );
    
//    and(Y, A, B);
//endmodule


////////////////////////////////////////////////////////////////////////////////////


module AND_BE(
    input A, B,
    output reg Y
    );
    
    always@(A, B)
    begin
        case({A, B})
            2'b00 : Y = 1'b0;
            2'b01 : Y = 1'b0;
            2'b10 : Y = 1'b0;
            2'b11 : Y = 1'b1;
        endcase
    end
endmodule


////////////////////////////////////////////////////////////////////////////////////


module s7_AND(
    input [1:0]sw,
    output [1:0]led
    );
    
    AND_BE (.Y(led[0]), .A(sw[0]), .B(sw[1])) ;
endmodule
