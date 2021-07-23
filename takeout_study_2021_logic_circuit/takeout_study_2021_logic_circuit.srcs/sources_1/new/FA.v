`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/24 21:40:00
// Design Name: 
// Module Name: FA
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


//module FA(
//    input A, B, C_in,
//    output C_out, S
//    );
    
//    wire T1, T2, T3;
    
//    xor(T1, A, B);
//    and(T2, T1, C_in);
//    and(T3, A, B);
    
//    xor(S, A, B, C_in);
//    or(C_out, T2, T3);
//endmodule


//////////////////////////////////////////////////////////////////////////////////


module FA_DATAFLOW(
    input A, B, C_in,
    output C, S
    );
    
    assign S = (A ^ B ^ C_in);
    assign C = (A&B) | ((A^B) & C_in);
endmodule


//////////////////////////////////////////////////////////////////////////////////


module FA_BEHAV(
    input A, B, C_in,
    output reg C, S
    );
    
    always@(A, B, C_in)
    begin
        case({A, B, C_in})
            3'b000:
                begin
                    S=1'b0;
                    C=1'b0;
                end
            3'b001:
                begin
                    S=1'b1;
                    C=1'b0;
                end
            3'b010:
                begin
                    S=1'b1;
                    C=1'b0;
                end
            3'b011:
                begin
                    S=1'b0;
                    C=1'b1;
                end
            3'b100:
                begin
                    S=1'b1;
                    C=1'b0;
                end
            3'b101:
                begin
                    S=1'b0;
                    C=1'b1;
                end
            3'b110:
                begin
                    S=1'b0;
                    C=1'b1;
                end
            3'b111:
                begin
                    S=1'b1;
                    C=1'b1;
                end
        endcase
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


module FA(
    C,
    S,
    X,
    Y,
    C_in
    );
    output C;
    output S;
    input X;
    input Y;
    input C_in;
    assign S = X^Y^C_in;
    assign C = ((X^Y) & C_in) | (X & Y);
endmodule