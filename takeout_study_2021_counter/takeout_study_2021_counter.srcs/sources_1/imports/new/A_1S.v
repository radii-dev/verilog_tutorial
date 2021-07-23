`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/10 00:27:44
// Design Name: 
// Module Name: A_1S
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


module A_1S(
    output [3:0]led,
    input CLK12MHZ
    );
    
    reg [3:0]led;
    reg [31:0]t;
    
    always@(posedge CLK12MHZ) begin
        t <= t + 1;
        
        if(t == 12000000) begin
            led <= ~led;
            t <= 0;
        end
    end
endmodule
