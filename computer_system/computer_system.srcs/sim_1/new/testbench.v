
`timescale 1ns / 1ps

module testbench();
    reg rstn, clk;
    reg m, l, ri, u, d;
    initial begin
        rstn = 1'b1;
        clk = 1'b0;
        ri   = 1'b0;
        #10 rstn = 1'b0;
        #100 rstn = 1'b1;
        #500 ri   = 1'b1;

    end

    wire [3:0] r, g, b;
    wire h ,v;

    always #5 clk = ~clk;

    Computer single_cycle0(
        .I_rst_n(rstn),
        .I_clk(clk),
        .O_r(r),
        .O_g(g),
        .O_b(b),
        .O_hsync(h),
        .O_vsync(v),
        .I_mid_btn(m),
        .I_left_btn(l),
        .I_right_btn(ri),
        .I_up_btn(u),
        .I_down_btn(d)
    );
endmodule
