`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/24 21:55:33
// Design Name: 
// Module Name: Tb_FA
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


module Tb_FA();
    reg A, B, C_in;
    wire C0, S0;
    wire C1, S1;
    wire C2, S2;
    
    FA sim_FA0(A, B, C_in, C0, S0);
    FA_DATAFLOW sim_FA1(A, B, C_in, C1, S1);
    FA_BEHAV sim_FA2(A, B, C_in, C2, S2);
    
    initial
    begin
        A=0;
        B=0;
        C_in=0;
    end
    
    initial
    begin
        #100 A=0; B=0; C_in=1;
        #100 A=0; B=1; C_in=0;
        #100 A=0; B=1; C_in=1;
        #100 A=1; B=0; C_in=0;
        #100 A=1; B=0; C_in=1;
        #100 A=1; B=1; C_in=0;
        #100 A=1; B=1; C_in=1;
    end
endmodule
