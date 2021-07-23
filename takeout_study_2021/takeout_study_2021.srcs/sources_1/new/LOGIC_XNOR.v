`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/20 13:00:21
// Design Name: 
// Module Name: LOGIC_XNOR
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


//module LOGIC_XNOR(
//    input A, B,
//    output Y
//    );
    
//    xnor(Y, A, B);
//endmodule


//////////////////////////////////////////////////////////////////////////////////


//module LOGIC_XNOR_DATAFLOW(
//    input A, B,
//    output Y
//    );
    
//    assign Y = ~(A ^ B);
//endmodule


//////////////////////////////////////////////////////////////////////////////////


//module LOGIC_XNOR_BEHAV(
//    input A, B,
//    output reg Y
//    );
    
//    always@ (A or B)
//    begin
//            case({A, B})
//                2'b00: Y = 1'b1;
//                2'b01: Y = 1'b0;
//                2'b10: Y = 1'b0;
//                2'b11: Y = 1'b1;
//            endcase
//    end
//endmodule


//////////////////////////////////////////////////////////////////////////////////


//primitive UDP_LOGIC_XNOR(
//    output Y,
//    input A, B
//    );
    
//    table
//// A B : Y
//    0 0 : 1;
//    0 1 : 0;
//    1 0 : 0;
//    1 1 : 1;
//    endtable
//endprimitive


//////////////////////////////////////////////////////////////////////////////////


module XNORgate(
        input [3:0]sw,
        output reg [3:0]led
        );
        
        always@(sw[2] | sw[1] | sw[0])     // �� �߿� �ϳ��� �۵��ɶ� �Ʒ� �ڵ� �׻� ����
        begin
            case({sw[2], sw[1], sw[0]})
                3'b000 : led[0] = 1'b1;     // 3'b000 ==> ��ĭ¥�� ���̳ʸ� 000
                3'b001 : led[0] = 1'b0;
                3'b010 : led[0] = 1'b0;
                3'b011 : led[0] = 1'b1;
                3'b100 : led[0] = 1'b0;
                3'b101 : led[0] = 1'b1;
                3'b110 : led[0] = 1'b1;
                3'b111 : led[0] = 1'b0;
            endcase
        end
endmodule
