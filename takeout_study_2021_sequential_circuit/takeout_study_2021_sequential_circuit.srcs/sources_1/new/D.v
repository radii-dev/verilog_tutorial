`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 23:18:21
// Design Name: 
// Module Name: D
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


module D(
    output Q, Q_,
    input clk, RST_n, D
    );
    
    reg Q;
    assign Q_ = ~Q;
    
    always@(posedge clk, negedge RST_n) begin
        if(!RST_n) begin
            Q <= 1'b0;
        end
        else begin
            Q <= D;
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////


/* Synchronous preset, reset */
module D_pr(
    output reg Q,
    output Q_,
    input clk, pr, RST_n, D
    );
    
//    reg Q;
    assign Q_ = ~Q;
    
    always@(posedge clk or negedge RST_n or negedge pr) begin
//        if(!RST_n & !pr) 
//            Q <= 1'bx;
//        else if(!RST_n & pr) 
//            Q <= 1'b0;
//        else if(RST_n & !pr) 
//            Q <= 1'b1;
//        else begin
//            Q <= D;
//        end

//        if(RST_n == 1'b0 && pr == 1'b0) 
//            Q <= 1'bx;
//        else if(RST_n == 1'b0 && pr == 1'b1) 
//            Q <= 1'b0;
//        else if(RST_n == 1'b1 && pr == 1'b0) 
//            Q <= 1'b1;
//        else begin
//            Q <= D;
//        end
        
//        if(!RST_n) 
//            Q <= 1'b0;
//        else if(!pr) 
//            Q <= 1'b1;
//        else 
//            Q <= D;
            
        if(!RST_n) 
            Q <= 1'b0;
        else if(!pr) 
            Q <= 1'b1;
        else 
            Q <= D;
    end
endmodule

/** 
    Asynchronous preset, reset 
    https://cseweb.ucsd.edu/classes/sp10/cse140L/lectures/lab_wk4.pdf (slide 15)
    실제로는 작동 안함. always3개가 각각 Q값을 바꾸므로 누굴 우선해야할지 모른다.
**/
//module D_pr(
//    output reg Q,
//    output Q_,
//    input clk, pr, RST_n, D
//    );
    
////    reg Q;
//    assign Q_ = ~Q;
    
//    always@(posedge RST_n) Q = 1'b0;
//    always@(posedge pr) Q = 1'b1;
//    always@(posedge clk) Q = D;
//endmodule


//////////////////////////////////////////////////////////////////////////////////


//module BOARD_D(
//    output reg [2:0]led,    // clk: led[2], Q: led[1], Q_: led[0]
//    input [2:0]sw,          // RST: sw[2], PR: sw[1], D: sw[0]
//    input CLK12MHZ
//    );
    
////    reg [2:2]led;
//    reg [23:0]counter;
//    reg CLK1HZ = 1'b0;
//    wire [1:0]Q_led;
//    D_pr board_D(.Q(Q_led[1]), .Q_(Q_led[0]), .clk(CLK1HZ), .RST_n(sw[2]), .pr(sw[1]), .D(sw[0]));
    
////    assign led[1] = Q_led[1];
////    assign led[0] = Q_led[0];
    
//    always@(posedge CLK12MHZ) begin
//        counter <= counter + 1;
//        if(counter == 6000000-1) begin
//            CLK1HZ <= ~CLK1HZ;
//            led[2] <= CLK1HZ;
//            led[1] <= Q_led[1];
//            led[0] <= Q_led[0];
//            counter <= 0;
//        end
//    end
//endmodule


//////////////////////////////////////////////////////////////////////////////////


module BOARD_D(
    output [2:0]led,    // clk: led[2], Q: led[1], Q_: led[0]
    input [2:0]sw,          // RST: sw[2], PR: sw[1], D: sw[0]
    input CLK12MHZ
    );
//    reg [2:2]led;
    
    CLK_DIV one_hz(CLK12MHZ, CLK1HZ, led[2]);
    D_pr board_D(.Q(led[1]), .Q_(led[0]), .clk(CLK1HZ), .RST_n(sw[2]), .pr(sw[1]), .D(sw[0]));
endmodule

