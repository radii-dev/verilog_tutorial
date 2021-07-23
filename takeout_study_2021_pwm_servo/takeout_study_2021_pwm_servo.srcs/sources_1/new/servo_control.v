`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 22:34:21
// Design Name: 
// Module Name: servo_control
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


module servo_control
#(
    parameter min_duty = 1000,
    parameter max_duty = 6000
)
(
    output reg pwm,
    input [15:0]count,
    input [1:0]tact,
    input clk
);
    
    reg [15:0]ocr;
    reg pushflag = 0;
    
    always@ (posedge clk) begin
        if (count < ocr)
            pwm <= 1;
        else 
            pwm <= 0;
    end
    
    always@ (posedge clk) begin
        if (tact[0] == 1) begin
            if (pushflag == 0) begin
                ocr <= ocr + 200;
                pushflag <= 1;
            end
        end
        else if (tact[1] == 1) begin
            if (pushflag == 0) begin
                ocr <= ocr - 200;
                pushflag <= 1;
            end
        end
        else pushflag <= 0;
        
        if (ocr < min_duty)
            ocr <= min_duty;
        else if (ocr > max_duty)
            ocr <= max_duty;
    end
    
endmodule


//////////////////////////////////////////////////////////////////////////////////


module board_servo(
    output [0:0]jb,
    output [0:0]led,
    input CLK100MHZ,
    input [1:0]btn
    );
    
    parameter input_hz = 100000000;
    parameter target_hz = 2000000;
    parameter top = 40000;
    parameter min_duty = 1000;
    parameter max_duty = 6000;
    
    wire CLK2MHZ;
    wire [15:0]PWM_8BIT;
    CLK_DIV #(input_hz, target_hz) (CLK100MHZ, CLK2MHZ, led[0]);
    counter_8bit #(top) (PWM_8BIT, CLK2MHZ);
    servo_control #(min_duty, max_duty) (jb[0], PWM_8BIT, btn, CLK2MHZ);
endmodule


//////////////////////////////////////////////////////////////////////////////////


module CLK_DIV
#(
    parameter input_hz = 100000000,
    parameter target_hz = 1
)
(
    input in_clk,
    output reg out_clk,
    output clk_led
);
    
    // make target_hz
    reg [31:0]counter;
    always@(posedge in_clk) begin
        counter <= counter + 1;
        if(counter == (input_hz/(2*target_hz))-1) begin
            out_clk <= ~out_clk;
            counter <= 0;
        end
    end
    
    assign clk_led = out_clk;
endmodule


//////////////////////////////////////////////////////////////////////////////////


module counter_8bit
#(
    parameter top = 65535
)
(
    output reg [15:0]count,
    input clk
);
    
    always@ (posedge clk) begin
        count <= count + 1;
        if (count == top) count <= 0;
    end
endmodule
