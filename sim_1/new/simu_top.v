`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2019/10/15 21:12:41
// Design Name:
// Module Name: simu_top
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


module simu_top(

    );

    reg signed [31:0] in_0_real, in_0_imag, in_1_real, in_1_imag;
    reg signed [31:0] in_2_real, in_2_imag, in_3_real, in_3_imag;
    reg signed [31:0] in_4_real, in_4_imag, in_5_real, in_5_imag;
    reg signed [31:0] in_6_real, in_6_imag, in_7_real, in_7_imag;

    wire signed [31:0] out_0_real, out_0_imag, out_1_real, out_1_imag;
    wire signed [31:0] out_2_real, out_2_imag, out_3_real, out_3_imag;
    wire signed [31:0] out_4_real, out_4_imag, out_5_real, out_5_imag;
    wire signed [31:0] out_6_real, out_6_imag, out_7_real, out_7_imag;

    reg clk;

    fft8 test(in_0_real, in_0_imag,
              in_1_real, in_1_imag,
              in_2_real, in_2_imag,
              in_3_real, in_3_imag,
              in_4_real, in_4_imag,
              in_5_real, in_5_imag,
              in_6_real, in_6_imag,
              in_7_real, in_7_imag,

              out_0_real, out_0_imag,
              out_1_real, out_1_imag,
              out_2_real, out_2_imag,
              out_3_real, out_3_imag,
              out_4_real, out_4_imag,
              out_5_real, out_5_imag,
              out_6_real, out_6_imag,
              out_7_real, out_7_imag);

    initial begin
        clk <= 0;
        forever begin
            #5 clk <= ~clk;
        end
    end

    initial begin
        #0
        in_0_real = 32'd0;
        in_0_imag = 32'd0;
        in_1_real = 32'd0;
        in_1_imag = 32'd0;
        in_2_real = 32'd0;
        in_2_imag = 32'd0;
        in_3_real = 32'd0;
        in_3_imag = 32'd0;
        in_4_real = 32'd0;
        in_4_imag = 32'd0;
        in_5_real = 32'd0;
        in_5_imag = 32'd0;
        in_6_real = 32'd0;
        in_6_imag = 32'd0;
        in_7_real = 32'd0;
        in_7_imag = 32'd0;


        #10
        in_0_real = (32'd0 * 256); // 256 = 2^8. riyu : syousuten ikano bit su = 8 ni site iru kara.
        in_0_imag = (32'd0 * 256);
        in_1_real = (32'd1 * 256);
        in_1_imag = (32'd1 * 256);
        in_2_real = (32'd2 * 256);
        in_2_imag = (32'd2 * 256);
        in_3_real = (32'd3 * 256);
        in_3_imag = (32'd3 * 256);
        in_4_real = (32'd4 * 256);
        in_4_imag = (32'd4 * 256);
        in_5_real = (32'd5 * 256);
        in_5_imag = (32'd5 * 256);
        in_6_real = (32'd6 * 256);
        in_6_imag = (32'd6 * 256);
        in_7_real = (32'd7 * 256);
        in_7_imag = (32'd7 * 256);
        
        #10
        in_0_real = (32'd1 * 256); // 256 = 2^8. riyu : syousuten ikano bit su = 8 ni site iru kara.
        in_0_imag = (32'd2 * 256);
        in_1_real = (32'd3 * 256);
        in_1_imag = (32'd4 * 256);
        in_2_real = (32'd5 * 256);
        in_2_imag = (32'd6 * 256);
        in_3_real = (32'd7 * 256);
        in_3_imag = (32'd8 * 256);
        in_4_real = (32'd9 * 256);
        in_4_imag = (32'd10 * 256);
        in_5_real = (32'd11 * 256);
        in_5_imag = (32'd12 * 256);
        in_6_real = (32'd13 * 256);
        in_6_imag = (32'd14 * 256);
        in_7_real = (32'd15 * 256);
        in_7_imag = (32'd16 * 256);

        #10

        $finish;
    end

endmodule
