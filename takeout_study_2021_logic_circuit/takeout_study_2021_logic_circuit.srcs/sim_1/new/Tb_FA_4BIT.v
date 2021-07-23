`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/30 00:57:39
// Design Name: 
// Module Name: Tb_FA_4BIT
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


module Tb_FA_4BIT();
    reg [3:0]X;
    reg [3:0]Y;
    wire [3:0]S;
    wire ovf;
    
    FA_4BIT sim1_FA_4BIT(.X(X), .Y(Y), .S(S), .ovf(ovf));
    initial begin
                       X = 4'b0000; Y = 4'b0000;
            #100 X = 4'b0010; Y = 4'b0011;
            #100 X = 4'b0100; Y = 4'b1001;
            #100 X = 4'b1010; Y = 4'b0111;
            #100 X = 4'b0110; Y = 4'b1010;
            #100 X = 4'b0001; Y = 4'b0010;
            #100 X = 4'b0110; Y = 4'b1011;
            #100 X = 4'b1111; Y = 4'b0111;
            #100 X = 4'b0110; Y = 4'b0011;
            #100 X = 4'b0000; Y = 4'b0010;
    end
endmodule
