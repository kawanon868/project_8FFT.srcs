`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/15 20:17:01
// Design Name: 
// Module Name: complex_multi
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


module complex_multi(
    input wire signed [31 : 0] in_0_real,
    input wire signed [31 : 0] in_0_imag,
    input wire signed [31 : 0] in_1_real,
    input wire signed [31 : 0] in_1_imag,
    output wire signed [31 : 0] out_real,
    output wire signed [31 : 0] out_imag
    );
    
    assign out_real = ((in_0_real * in_1_real) - (in_0_imag * in_1_imag)) >>> 8; // 8 ha syosu ten ika no bit su.
    assign out_imag = ((in_0_real * in_1_imag) + (in_1_real * in_0_imag)) >>> 8; // 8 ha syosu ten ika no bit su.

endmodule

