`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 23:46:11
// Design Name: 
// Module Name: T
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


module T_FF(
    output Q, Q_,
    input clk, RST_n, T
    );
    
    reg Q;
    assign Q_ = ~Q;
    
    always@(posedge clk, negedge RST_n) begin
        if(!RST_n) begin
            Q <= 1'b0;
        end
        else if(T) begin
            Q <= ~Q;
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


module TFF(
    input clk, clr, T, 
    output reg Q
    );
    
    always@(negedge clk, posedge clr)
    begin
        if(clr)
            Q <= 1'b0;
        
        else if(T)
            Q <= ~Q;
    end
endmodule
