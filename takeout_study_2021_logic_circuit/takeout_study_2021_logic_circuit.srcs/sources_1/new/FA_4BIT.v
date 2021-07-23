`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/30 00:13:22
// Design Name: 
// Module Name: FA_4BIT
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

//`include "FA.v"

//module FA_4BIT(
//    input [3:0]X,
//    input [3:0]Y,
//    output [3:0]S,
//    output ovf 
//    ); 
    
//    wire [3:1]C;
    
//    FA FA_0(.A(X[0]), .B(Y[0]), .C_in(0), .C_out(C[1]), .S(S[0]));
//    FA FA_1(.A(X[1]), .B(Y[1]), .C_in(C[1]), .C_out(C[2]), .S(S[1]));
//    FA FA_2(.A(X[2]), .B(Y[2]), .C_in(C[2]), .C_out(C[3]), .S(S[2]));
//    FA FA_3(.A(X[3]), .B(Y[3]), .C_in(C[3]), .C_out(ovf), .S(S[3]));
//endmodule


//////////////////////////////////////////////////////////////////////////////////


module PA_16BIT(
    input [15:0]X,
    input [15:0]Y,
    output [15:0]S,
    output ovf
    );
    
    wire [15:1]C;
    genvar i;
    generate    
        for(i = 0; i < 16; i = i + 1) begin: FA
            if(i == 0)
                FA_DATAFLOW FA_n(X[0], Y[0], 0, C[1], S[0]);
            else if(i == 15)
                FA_DATAFLOW FA_n(X[15], Y[15], C[15], ovf, S[15]);
            else
                FA_DATAFLOW FA_n(X[i], Y[i], C[i], C[i+1], S[i]);
        end
    endgenerate
endmodule


//////////////////////////////////////////////////////////////////////////////////


module n_bit_PA #(parameter size=16) (
    s,
    c_out,
    x,
    y
    );
    output [size-1:0]s;
    output c_out;
    input [size-1:0]x;
    input[size-1:0]y;
    wire [size-1:0]c;
    assign c_out = c[size-1];
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin: FA
            if(i == 0)
                FA ADDER(.C(c[0]), .S(s[0]), .X(x[0]), .Y(y[0]), .C_in(1'b0));
            else
                FA ADDER(.C(c[i]), .S(s[i]), .X(x[i]), .Y(y[i]), .C_in(c[i-1]));
        end
    endgenerate
endmodule





