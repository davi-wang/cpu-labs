`timescale 1ns / 1ps


module display_test(
        input I_clk,
        input I_rst_n,

        output [3:0] O_r,
        output [3:0] O_g,
        output [3:0] O_b,
        output O_hsync,
        output O_vsync,

        input I_sw_1,
        output O_led_1
    );

    reg [31:0] wa, wd;
    reg we;
    reg [31:0] state;

    always @(posedge I_clk or negedge I_rst_n) begin
        if (!I_rst_n) begin
            wa <= 32'b0;
            state <= 32'b0;
            // send_cnt <= 16'b0;
            wd <= 32'hffffff;
            we <= 1'b1;
        end
        else begin
            if (state >= 32'd100000000) begin
                wd <= I_sw_1 ? 32'hffffaf : 32'hffafaf;
            end
            if (wa != 19199) wa <= wa + 1;
            else wa <= 32'b0;
            state <= state + 1;
        end
    end

    vgahwd vga0(
        .clk(I_clk),
        .rstn(I_rst_n),
        .waddr({wa[29:0], 2'b0}),
        .wdata(wd),
        .we(we),
        . red(O_r),
        . green(O_g),
        . blue(O_b),
        . hsync(O_hsync),
        . vsync(O_vsync)
    );
    /*
    vga vga0(
        .clock(I_clk),
        .switch(sw),
        .disp_RGB({r, g, b}),
        .hsync(O_hsync),
        .vsync(O_vsync)
    );
    */
    assign O_led_1 = wd[4];

endmodule
