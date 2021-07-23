`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/04 22:27:03
// Design Name: 
// Module Name: COMP
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


module COMP(
    input [3:0]A, [3:0]B,
    output eq, left, right
    );
    
    wire x3 = (A[3] & B[3]) | (~A[3] & ~B[3]);
    wire x2 = (A[2] & B[2]) | (~A[2] & ~B[2]);
    wire x1 = (A[1] & B[1]) | (~A[1] & ~B[1]);
    wire x0 = (A[0] & B[0]) | (~A[0] & ~B[0]);
    
    assign eq = x3 & x2 & x1 & x0;
    assign left = (A[3] & ~B[3]) | (x3 & A[2] & ~B[2]) | (x3 & x2 & A[1] & ~B[1]) | (x3 & x2 & x1 & A[0] & ~B[0]);
    assign right = (~A[3] & B[3]) | (x3 & ~A[2] & B[2]) | (x3 & x2 & ~A[1] & B[1]) | (x3 & x2 & x1 & ~A[0] & B[0]);
endmodule


//////////////////////////////////////////////////////////////////////////////////


//module COMP(
//    input [3:0]A, [3:0]B,
//    output eq, left, right
//    );
    
//    reg eq, left, right;
    
//    always@ (A, B) begin
//        if(A == B) begin
//            eq = 1'b1;
//            left = 1'b0;
//            right = 1'b0;
//        end
//        else if(A > B) begin
//            eq = 1'b0;
//            left = 1'b1;
//            right = 1'b0;
//        end
//        else if(A < B) begin
//            eq = 1'b0;
//            left = 1'b0;
//            right = 1'b1;
//        end
//    end
//endmodule


//////////////////////////////////////////////////////////////////////////////////


//module COMP_SIMPLE(
//    input [3:0]A, [3:0]B,
//    output eq, left, right
//    );
    
//    assign eq = (A == B);
//    assign left = (A > B);
//    assign right = (A < B);
//endmodule
