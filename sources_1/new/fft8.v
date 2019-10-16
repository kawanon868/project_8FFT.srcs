`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2019/10/15 20:35:55
// Design Name:
// Module Name: fft8
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


module fft8(
    input wire signed [31 : 0] in_0_real,
    input wire signed [31 : 0] in_0_imag,
    input wire signed [31 : 0] in_1_real,
    input wire signed [31 : 0] in_1_imag,
    input wire signed [31 : 0] in_2_real,
    input wire signed [31 : 0] in_2_imag,
    input wire signed [31 : 0] in_3_real,
    input wire signed [31 : 0] in_3_imag,
    input wire signed [31 : 0] in_4_real,
    input wire signed [31 : 0] in_4_imag,
    input wire signed [31 : 0] in_5_real,
    input wire signed [31 : 0] in_5_imag,
    input wire signed [31 : 0] in_6_real,
    input wire signed [31 : 0] in_6_imag,
    input wire signed [31 : 0] in_7_real,
    input wire signed [31 : 0] in_7_imag,

    output wire signed [31 : 0] out_0_real,
    output wire signed [31 : 0] out_0_imag,
    output wire signed [31 : 0] out_1_real,
    output wire signed [31 : 0] out_1_imag,
    output wire signed [31 : 0] out_2_real,
    output wire signed [31 : 0] out_2_imag,
    output wire signed [31 : 0] out_3_real,
    output wire signed [31 : 0] out_3_imag,
    output wire signed [31 : 0] out_4_real,
    output wire signed [31 : 0] out_4_imag,
    output wire signed [31 : 0] out_5_real,
    output wire signed [31 : 0] out_5_imag,
    output wire signed [31 : 0] out_6_real,
    output wire signed [31 : 0] out_6_imag,
    output wire signed [31 : 0] out_7_real,
    output wire signed [31 : 0] out_7_imag

    );

// 1 dan me.
wire signed [31 : 0] t_10_real, t_10_imag;
wire signed [31 : 0] t_11_real, t_11_imag;
wire signed [31 : 0] t_12_real, t_12_imag;
wire signed [31 : 0] t_13_real, t_13_imag;
wire signed [31 : 0] t_14_real, t_14_imag;
wire signed [31 : 0] t_15_real, t_15_imag;
wire signed [31 : 0] t_16_real, t_16_imag;
wire signed [31 : 0] t_17_real, t_17_imag;

butterfly_for_8fft bt_11(2'd0, in_0_real, in_0_imag, in_4_real, in_4_imag, t_10_real, t_10_imag, t_11_real, t_11_imag);
butterfly_for_8fft bt_12(2'd1, in_1_real, in_1_imag, in_5_real, in_5_imag, t_12_real, t_12_imag, t_13_real, t_13_imag);
butterfly_for_8fft bt_13(2'd2, in_2_real, in_2_imag, in_6_real, in_6_imag, t_14_real, t_14_imag, t_15_real, t_15_imag);
butterfly_for_8fft bt_14(2'd3, in_3_real, in_3_imag, in_7_real, in_7_imag, t_16_real, t_16_imag, t_17_real, t_17_imag);


// 2 dan me.
wire signed [31 : 0] t_20_real, t_20_imag;
wire signed [31 : 0] t_21_real, t_21_imag;
wire signed [31 : 0] t_22_real, t_22_imag;
wire signed [31 : 0] t_23_real, t_23_imag;
wire signed [31 : 0] t_24_real, t_24_imag;
wire signed [31 : 0] t_25_real, t_25_imag;
wire signed [31 : 0] t_26_real, t_26_imag;
wire signed [31 : 0] t_27_real, t_27_imag;

butterfly_for_8fft bt_21(2'd0, t_10_real, t_10_imag, t_14_real, t_14_imag, t_20_real, t_20_imag, t_21_real, t_21_imag);
butterfly_for_8fft bt_22(2'd2, t_12_real, t_12_imag, t_16_real, t_16_imag, t_22_real, t_22_imag, t_23_real, t_23_imag);
butterfly_for_8fft bt_23(2'd0, t_11_real, t_11_imag, t_15_real, t_15_imag, t_24_real, t_24_imag, t_25_real, t_25_imag);
butterfly_for_8fft bt_24(2'd2, t_13_real, t_13_imag, t_17_real, t_17_imag, t_26_real, t_26_imag, t_27_real, t_27_imag);


// 3 dan me.
butterfly_for_8fft bt_31(2'd0, t_20_real, t_20_imag, t_22_real, t_22_imag, out_0_real, out_0_imag, out_4_real, out_4_imag);
butterfly_for_8fft bt_32(2'd0, t_21_real, t_21_imag, t_23_real, t_23_imag, out_2_real, out_2_imag, out_6_real, out_6_imag);
butterfly_for_8fft bt_33(2'd0, t_24_real, t_24_imag, t_26_real, t_26_imag, out_1_real, out_1_imag, out_5_real, out_5_imag);
butterfly_for_8fft bt_34(2'd0, t_25_real, t_25_imag, t_27_real, t_27_imag, out_3_real, out_3_imag, out_7_real, out_7_imag);

endmodule
