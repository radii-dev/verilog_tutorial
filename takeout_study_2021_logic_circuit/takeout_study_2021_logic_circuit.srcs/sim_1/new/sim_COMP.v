`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/04 22:25:01
// Design Name: 
// Module Name: sim_COMP
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


module sim_COMP();
    reg [3:0]a;
    reg [3:0]b;
    wire eq, left, right;
    
    COMP sim1_COMP(.A(a), .B(b), .eq(eq), .left(left), .right(right));
    initial begin
                       a = 4'b0000; b = 4'b0000;
            #100 a = 4'b0010; b = 4'b0011;
            #100 a = 4'b0100; b = 4'b1001;
            #100 a = 4'b1010; b = 4'b0111;
            #100 a = 4'b0110; b = 4'b1010;
            #100 a = 4'b0001; b = 4'b0001;
            #100 a = 4'b0110; b = 4'b1011;
            #100 a = 4'b1111; b = 4'b1111;
            #100 a = 4'b0110; b = 4'b0011;
            #100 a = 4'b0100; b = 4'b0010;
    end
endmodule
