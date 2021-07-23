`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 22:38:51
// Design Name: 
// Module Name: SR
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


module SR(
    input S, R, EN,
    output Q, Q_
    );
    
    reg Q;
    
    assign Q_ = ~Q;
    
    always@(S, R, EN) begin
        if(EN) begin
            casex({S, R})
                2'b00: Q = Q;
                2'b10: Q <= 1'b1;
                2'b01: Q <= 1'b0;
                2'b11: Q <= 1'bz;
            endcase
        end
    end
    
endmodule


//A = 1, B =2, C = 3
//A = B
//B = C
//C = A

//==>   A = 2, B = 3, C =2


//A <= B
//B <= C
//C <= A

//==>   A = 2, B = 3, C = 1



//module zSR(
//    output [1:0]led,
//    input [0:0]sw,
//    input [1:0]btn
//    );
    
//    SR zzSR
//endmodule