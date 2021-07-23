`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/14 21:14:54
// Design Name: 
// Module Name: Tb_PA_16BIT
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

//`include "FA_4BIT.v"

module Tb_PA_16BIT();
    reg [15:0]X;
    reg [15:0]Y;
    wire [15:0]S;
    wire ovf;
    
    PA_16BIT sim1_PA_16BIT(.X(X), .Y(Y), .S(S), .ovf(ovf));
    initial begin
                 X = 16'b0000000000000000; Y = 16'b0000000000000000;
            #100 X = 16'b0010001000100010; Y = 16'b0011001100110011;
            #100 X = 16'b0100010001000100; Y = 16'b1001100110011001;
            #100 X = 16'b1010101010101010; Y = 16'b0111011101110111;
            #100 X = 16'b0110011001100110; Y = 16'b1010101010101010;
            #100 X = 16'b0001000100010001; Y = 16'b0010001000100010;
            #100 X = 16'b0110011001100110; Y = 16'b1011101110111011;
            #100 X = 16'b1111111111111111; Y = 16'b0111011101110111;
            #100 X = 16'b0110011001100110; Y = 16'b0011001100110011;
            #100 X = 16'b0000000000000000; Y = 16'b0010001000100010;
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


module Tb_PA();
    parameter size =16;
    reg [size-1:0]X;
    reg [size-1:0]Y;
    wire C;
    wire [size-1:0]S;
    n_bit_PA sim_PA(.s(S), .c_out(C), .x(X), .y(Y));
    initial
    begin
        X=0;
        Y=0;
    end
    initial
    begin
        //overflow at 65536
        #100 X = 10; Y = 10;
        #100 X = 1; Y = 30;
        #100 X = 20; Y = 600;
        #100 X = 300; Y = 200;
        #100 X = 10; Y = 12;
        #100 X = 1; Y = 0;
        #100 X = 400; Y = 600;
        #100 X = 600; Y = 350;
        #100 X = 6; Y = 1;
        #100 X = 60000; Y = 40000;
    end
endmodule