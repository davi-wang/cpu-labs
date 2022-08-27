`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/26 22:09:45
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    // 时钟周期为 10ns 即 100Mhz
    reg clk, rstn, sw;
    initial begin
        rstn = 1'b1;
        clk = 1'b0;
        sw = 1'b1;
        #15 rstn = 1'b0;
        #5  rstn = 1'b1;
    end
    always begin
        #5 clk = ~clk;
    end

    wire [3:0] r, g, b;
    wire h, v, led;

    display_test test0(
        .I_clk(clk),
        .I_rst_n(rstn),
        .O_r(r),
        .O_g(g),
        .O_b(b),
        . O_hsync(h),
        . O_vsync(v),
        .I_sw_1(sw),
        . O_led_1(lwd)
    );

endmodule
