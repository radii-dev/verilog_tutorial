`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/24 22:26:37
// Design Name: 
// Module Name: ENCODER
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


module ENCODER(
    input D0, D1, D2, D3,
    output Y1, Y2, V
    );
    
    wire T1;
    
    and(T1, D1, ~D2);
    
    or(V, D0, D1, D2, D3);
    or(Y1, D2, D3);
    or(Y2, D3, T1);
    
endmodule


//////////////////////////////////////////////////////////////////////////////////


module ENCODER_DATAFLOW(
    input D0, D1, D2, D3,
    output Y1, Y2, V
    );
    
    assign V = D0| D1 | D2 | D3;
    assign Y1 = D3 | D2;
    assign Y2 = (D1 & (~D2)) | D3;
endmodule


//////////////////////////////////////////////////////////////////////////////////


module ENCODER_BEHAV(
    input D0, D1, D2, D3,
    output reg Y1, Y2, V
    );
    
    always@(D0, D1, D2, D3)
    begin
        casex({D0, D1, D2, D3})
            4'b0000:
                begin
                    V = 1'b0;
                    Y1 = 1'bx;
                    Y2 = 1'bx;
                end
                
            4'b1000:
                begin
                    V = 1'b1;
                    Y1 = 1'bz;
                    Y2 = 1'b1;
                end
                
            4'bx100:
                begin
                    V = 1'b1;
                    Y1 = 1'bx;
                    Y2 = 1'b1;
                end
            
            4'bxx10:
                begin
                    V = 1'b1;
                    Y1 = 1'b1;
                    Y2 = 1'bx;
                end
                
            4'bxxx1:
                begin
                    V = 1'b1;
                    Y1 = 1'b1;
                    Y2 = 1'b1;
                end
        endcase
    end
endmodule