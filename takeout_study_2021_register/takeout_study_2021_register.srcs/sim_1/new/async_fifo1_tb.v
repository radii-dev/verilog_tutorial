`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/01 23:36:59
// Design Name: 
// Module Name: async_fifo1_tb
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

module async_fifo1_tb;
    parameter DSIZE = 8;
    parameter ASIZE = 4;
    
    reg [DSIZE-1:0] wdata;
    wire [DSIZE-1:0] rdata;
    wire wfull;
    wire rempty;
    reg winc, wclk, wrst_n;
    reg rinc, rclk, rrst_n;
    
//    // Model a queue for checking data
//    reg [DSIZE-1:0] verif_data_q;
//    reg [DSIZE-1:0] verif_wdata;
    
    async_fifo1 #(DSIZE, ASIZE) dut (winc, wclk, wrst_n, rinc, rclk, rrst_n, wdata, rdata, wfull, rempty);
 
    initial begin
        wclk = 1'b0;
        rclk = 1'b0;
        
        fork
            forever #10 wclk = ~wclk;
            forever #35 rclk = ~rclk;
        join
    end
    
    integer witer, wi;
    initial begin
        winc = 1'b0;
        wdata = 0;
        wrst_n = 1'b0;
        repeat(5) @(posedge wclk);
        wrst_n = 1'b1;
        
        for (witer=0; witer<3; witer=witer+1) begin
            for (wi=0; wi<32; wi=wi+1) begin
                @(posedge wclk);
                if(!wfull) 
                begin
                    winc = (wi%2 == 0)? 1'b1 : 1'b0;
                    if (winc) 
                        wdata = wdata + 1;
                end
            end
            #1;
        end
    end
    
    integer riter, ri;
    initial begin
        rinc = 1'b0;
        rrst_n = 1'b0;
        repeat(8) @(posedge rclk);
        rrst_n = 1'b1;
        
        for (riter=0; riter<3; riter=riter+1) begin
            for (ri=0; ri<32; ri=ri+1) begin
                @(posedge rclk);
                if(!rempty) 
                    rinc = (ri%2 == 0)? 1'b1 : 1'b0;
            end
            #1;
        end
    end
    
endmodule
