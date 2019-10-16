`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/15 20:21:26
// Design Name: 
// Module Name: butterfly_for_8fft
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


module butterfly_for_8fft(
    input wire [1:0] wsel,
    input wire signed [31 : 0] in_0_real,
    input wire signed [31 : 0] in_0_imag,
    input wire signed [31 : 0] in_1_real,
    input wire signed [31 : 0] in_1_imag,
    output wire signed [31 : 0] out_0_real,
    output wire signed [31 : 0] out_0_imag,
    output wire signed [31 : 0] out_1_real,
    output wire signed [31 : 0] out_1_imag
    );

    wire signed [31 : 0] temp_real, temp_imag;
    reg signed [31 : 0] w_real, w_imag; // kaiten keisu.

    assign out_0_real = in_0_real + in_1_real;
    assign out_0_imag = in_0_imag + in_1_imag;

    assign temp_real = in_0_real - in_1_real;
    assign temp_imag = in_0_imag - in_1_imag;

    complex_multi mul(temp_real, temp_imag, w_real, w_imag, out_1_real, out_1_imag);

    always @(*) begin
        case (wsel)
            2'b00    : w_real = 32'd256; // 1.0 (10)
            2'b01    : w_real = 32'd181; // 1 / sqrt(2) (10)
            2'b10    : w_real = 32'd0; // 0.0 (10)
            2'b11    : w_real = (32'd181 * -1); // -1 / sqrt(2) (10)
            default  : w_real = 32'd0; // 0.0 (10)
        endcase

        case (wsel)
            2'b00    : w_imag = 32'd0; // 0.0 (10)
            2'b01    : w_imag = (32'd181 * -1); // -1 / sqrt(2) (10)
            2'b10    : w_imag = (32'd256 * -1); // -1.0 (10)
            2'b11    : w_imag = (32'd181 * -1); // -1 / sqrt(2) (10)
            default : w_imag = 32'd0; // 0.0 (10)
        endcase
    end
endmodule
