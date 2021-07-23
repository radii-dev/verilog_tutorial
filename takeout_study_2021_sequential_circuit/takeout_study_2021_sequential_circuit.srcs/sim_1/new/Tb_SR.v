`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 22:46:58
// Design Name: 
// Module Name: Tb_SR
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


module Tb_SR();
    reg EN, S, R;
    wire Q, Q_;
    
    SR sim_SR(S, R, EN, Q, Q_);
    
    initial begin
        S = 1'b0;
        R = 1'b0;
        EN = 1'b0;
    end
    
    initial begin
        #200 EN = 1'b0; S = 1'b1; R = 1'b0;
        #200 EN = 1'b0; S = 1'b0; R = 1'b1;
        #200 EN = 1'b1; S = 1'b0; R = 1'b0;
        #200 EN = 1'b1; S = 1'b1; R = 1'b0;
        #200 EN = 1'b1; S = 1'b0; R = 1'b0;
        #200 EN = 1'b1; S = 1'b1; R = 1'b0;
        #200 EN = 1'b1; S = 1'b0; R = 1'b1;
        #200 EN = 1'b1; S = 1'b1; R = 1'b1;
    end
    
endmodule
