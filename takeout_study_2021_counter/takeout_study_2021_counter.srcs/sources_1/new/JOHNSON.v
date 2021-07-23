`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 22:50:23
// Design Name: 
// Module Name: JOHNSON
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


//module JOHNSON(
//    input clk, clr_n,
//    output [3:0]Q
//    );
//    wire [3:0]Q_;
//    D_sync ff0(clk, clr_n, Q_[3], Q[0], Q_[0]);
//    D_sync ff1(clk, clr_n, Q[0], Q[1], Q_[1]);
//    D_sync ff2(clk, clr_n, Q[1], Q[2], Q_[2]);
//    D_sync ff3(clk, clr_n, Q[2], Q[3], Q_[3]);
//endmodule


//////////////////////////////////////////////////////////////////////////////////


module JOHNSON #(parameter size = 4)(
    input clk, clr_n,
    output [size-1:0]Q
    );
    
    wire [size-1:0]Q_;
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1) begin : ff
            if(i == 0)
                D_sync ff0(clk, clr_n, Q_[size-1], Q[i], Q_[i]);
            else 
                D_sync ff1(clk, clr_n, Q[i-1], Q[i], Q_[i]);
        end
    endgenerate
endmodule


//////////////////////////////////////////////////////////////////////////////////


module D_sync(
    input clk, clr_n, D,
    output Q, Q_
    );
    reg Q;
    assign Q_ = ~Q;
    always@(posedge clk, negedge clr_n)
    begin
        if(!clr_n)
            Q <= 4'b0000;
        else
            Q <= D;
    end
endmodule