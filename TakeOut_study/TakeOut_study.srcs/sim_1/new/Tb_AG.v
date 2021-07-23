`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/25 18:53:57
// Design Name: 
// Module Name: Tb_AG
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


module Tb_AG();
    reg A, B;
    wire Y;
    
    AND_BE tb_G(A, B, Y);
    
    initial
    begin
        $monitor($time, "A = %b, B = %b, Y = %b", A, B, Y);
             A = 1'b0; B = 1'b0;
        #200 A = 1'b0; B = 1'b1;
        #200 A = 1'b1; B = 1'b0;
        #200 A = 1'b1; B = 1'b1;
        #200 A = 1'b0; B = 1'b0;
    end   

endmodule
