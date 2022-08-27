`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 10:46:52 AM
// Design Name: 
// Module Name: vga
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


module example(
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

    wire [1:0] sw;
    assign sw = {1'b1, I_sw_1};
    wire r, g, b;
    assign O_r = {4{r}};
    assign O_g = {4{g}};
    assign O_b = {4{b}};

    vga vga0(
        .clock(I_clk),
        .switch(sw),
        .disp_RGB({r, g, b}),
        .hsync(O_hsync),
        .vsync(O_vsync)
    );
    
    assign O_led_1 = I_sw_1;

endmodule


module vga( clock, switch, disp_RGB, hsync, vsync );

            input clock; //????????? 100MHz
            input [1:0]switch;
            output [2:0]disp_RGB; //VGA ???????
            output hsync; //VGA ????????
            output vsync; //VGA ????????

            reg [9:0] hcount; //VGA ??????????
            reg [9:0] vcount; //VGA ??????????
            reg [2:0] data;
            reg [2:0] h_dat;
            reg [2:0] v_dat;
            reg flag;
            wire hcount_ov;
            wire vcount_ov;
            wire dat_act;
            wire hsync;
            wire vsync;
            reg vga_clk=0;
            reg cnt_clk=0; //???????

            //VGA ?��??????????????
            parameter hsync_end = 10'd95,
            hdat_begin = 10'd143,
            hdat_end = 10'd783,
            hpixel_end = 10'd799,
            vsync_end = 10'd1,
            vdat_begin = 10'd34,
            vdat_end = 10'd514,
            vline_end = 10'd524;

            initial begin
                hcount = 10'b0;
                vcount = 10'b0;
                data = 3'b0;
                h_dat = 3'b0;
                v_dat = 3'b0;
                flag = 1'b0;
                vga_clk = 1'b0;
                cnt_clk = 1'b0;
            end

            always @(posedge clock)
            begin
                if(cnt_clk == 1)begin
                    vga_clk <= ~vga_clk;
                    cnt_clk <= 0;
                 end
                else
                    cnt_clk <= cnt_clk +1;
            end

  //************************VGA ????????*******************************//?????
            always @(posedge vga_clk)
            begin
                if (hcount_ov)
                    hcount <= 10'd0;
                 else
                     hcount <= hcount + 10'd1;
            end
            assign hcount_ov = (hcount == hpixel_end);

            //?????
            always @(posedge vga_clk)
            begin
                if (hcount_ov)
                begin
                    if (vcount_ov)
                        vcount <= 10'd0;
                    else
                        vcount <= vcount + 10'd1;
                end
            end
            assign vcount_ov = (vcount == vline_end);

            //?????????????
            assign dat_act = ((hcount >= hdat_begin) && (hcount < hdat_end))
&& ((vcount >= vdat_begin) && (vcount < vdat_end));
            assign hsync = (hcount > hsync_end);
            assign vsync = (vcount > vsync_end);
            // assign disp_RGB = (dat_act) ? data : 3'h00;
            assign disp_RGB = (dat_act) ? 3'b111 : 3'h00;

            //??????????vga???
            always @(posedge vga_clk)
            begin
                case(switch[1:0])
                    2'd0: data <= h_dat; //???????
                    2'd1: data <= v_dat; //?????????
                    2'd2: data <= (v_dat ^ h_dat);  //?????????
                    2'd3: data <= (v_dat ~^ h_dat); //?????????
                endcase
            end

            always @(posedge vga_clk) //??????????
            begin
                if(hcount < 223)
               v_dat <= 3'h7; 
                else if(hcount < 303)
                    v_dat <= 3'h6; 
                else if(hcount < 383)
               v_dat <= 3'h5;
                else if(hcount < 463)
               v_dat <= 3'h4; 
                else if(hcount < 543)
               v_dat <= 3'h3; 
                else if(hcount < 623)
               v_dat <= 3'h2; 
                else if(hcount < 703)
               v_dat <= 3'h1; 
                else
               v_dat <= 3'h0; 
            end

            always @(posedge vga_clk) //?????????
            begin
                if(vcount < 94)
               h_dat <= 3'h7; 
                else if(vcount < 154)
               h_dat <= 3'h6; 
                else if(vcount < 214)
               h_dat <= 3'h5; 
                else if(vcount < 274)
               h_dat <= 3'h4; 
                else if(vcount < 334)
               h_dat <= 3'h3; 
                else if(vcount < 394)
               h_dat <= 3'h2; 
                else if(vcount < 454)
               h_dat <= 3'h1; 
                else
                    h_dat <= 3'h0;
                end
endmodule

