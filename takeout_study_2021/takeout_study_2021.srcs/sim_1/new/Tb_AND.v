`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/17 21:59:55
// Design Name: 
// Module Name: Tb_AND
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


module Tb_AND();
    reg C, D;               // ������� �ڷ���
    wire X;    // ���� ���� �� ���� ��� reg�� ��°�, ����Ʈ �׸����� ���� ���̾��
    
//    LOGIC_AND_DATAFLOW sim_AND1(A, B, Y1);
    LOGIC_AND_DATAFLOW sim_AND1(.A(C), .B(D), .Y(X));
    
    initial
    begin
        C = 1'b0;
        D = 1'b0;
    end
    
    initial
    begin
        #200 C = 1'b0; D = 1'b1;
        #200 C = 1'b1; D = 1'b0;
        #200 C = 1'b1; D = 1'b1;
    end
endmodule

