`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/09 13:39:19
// Design Name: 
// Module Name: tb_decoder_3_8
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


module tb_decoder_3_8();

    reg A0;
    reg A1;
    reg A2;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;
    wire Y4;
    wire Y5;
    wire Y6;
    wire Y7;

decoder_3_8 decoder_3_8_instance (
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

    initial begin
        A0 = 0;
        A1 = 0;
        A2 = 0;
    end

    always #10 begin
        {A2, A1, A0} = {A2, A1, A0} + 1;
    end
    
endmodule