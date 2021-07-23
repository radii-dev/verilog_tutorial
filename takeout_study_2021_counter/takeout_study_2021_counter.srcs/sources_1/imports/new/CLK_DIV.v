`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/19 00:14:39
// Design Name: 
// Module Name: CLK_DIV
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


module CLK_DIV(
    input in_clk,
    output reg out_clk,
    output clk_led
    );
    
    // make 1HZ
    reg [23:0]counter;
    always@(posedge in_clk) begin
        counter <= counter + 1;
        if(counter == 6000000-1) begin
            out_clk <= ~out_clk;
            counter <= 0;
        end
    end
    
    assign clk_led = out_clk;
endmodule
