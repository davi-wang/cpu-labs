`timescale 1ns / 1ps

`define RST_ENABLE 1'b1

`define MID_BTN_KEY_ADDR    16'h800c // 0xbfaf_800c
`define LEFT_BTN_KEY_ADDR   16'h8010 // 0xbfaf_8010
`define RIGHT_BTN_KEY_ADDR  16'h8014 // 0xbfaf_8014
`define UP_BTN_KEY_ADDR     16'h8018 // 0xbfaf_8018
`define DOWN_BTN_KEY_ADDR   16'h801c // 0xbfaf_801c

module button_input(
    input   wire        clk,
    input   wire        nrst,


    input   wire[31:0]  confreg_addr,
    output  wire[31:0]  confreg_read_data,

    input   wire        mid_btn_key,
    input   wire        left_btn_key,
    input   wire        right_btn_key,
    input   wire        up_btn_key,
    input   wire        down_btn_key
    );
    wire rst = ~nrst;

    wire[31:0]  mid_btn_key_v;
    wire[31:0]  left_btn_key_v;
    wire[31:0]  right_btn_key_v;
    wire[31:0]  up_btn_key_v;
    wire[31:0]  down_btn_key_v;

    // read confreg
    assign confreg_read_data = (confreg_addr[15:0]==`MID_BTN_KEY_ADDR)? mid_btn_key_v:
                               (confreg_addr[15:0]==`LEFT_BTN_KEY_ADDR)? left_btn_key_v:
                               (confreg_addr[15:0]==`RIGHT_BTN_KEY_ADDR)? right_btn_key_v:
                               (confreg_addr[15:0]==`UP_BTN_KEY_ADDR)? up_btn_key_v:
                               (confreg_addr[15:0]==`DOWN_BTN_KEY_ADDR)? down_btn_key_v: 32'd0;

    /*********** mid_btn_key ***********/
    reg mid_btn_key_r;
    assign mid_btn_key_v = {31'd0, mid_btn_key_r};

    // eliminate jitter
    reg         mid_btn_key_flag;
    reg [13:0]  mid_btn_key_count;
    wire mid_btn_key_start = !mid_btn_key_r && mid_btn_key;
    wire mid_btn_key_end   = mid_btn_key_r && !mid_btn_key;
    wire mid_btn_key_sample= mid_btn_key_count[13];

    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            mid_btn_key_r  <= 1'b0; 
            mid_btn_key_flag <= 1'b0;
        end else if (mid_btn_key_sample) begin
            mid_btn_key_flag <= 1'b0;
        end else if (mid_btn_key_start || mid_btn_key_end) begin
            mid_btn_key_flag <= 1'b1;
        end

        if (rst == `RST_ENABLE || !mid_btn_key_flag) begin
            mid_btn_key_count <= 20'b0;
        end else if(mid_btn_key_sample) begin
            mid_btn_key_count <= mid_btn_key_count;
        end
            else begin
            mid_btn_key_count <= mid_btn_key_count + 1'b1;
        end

        if (rst == `RST_ENABLE) begin
            mid_btn_key_r <= 1'b0;
        end else if (mid_btn_key_sample) begin
            mid_btn_key_r <= mid_btn_key;
        end
    end

    /*********** left_btn_key ***********/
    reg left_btn_key_r;
    assign left_btn_key_v = {31'd0, left_btn_key_r};

    // eliminate jitter
    reg         left_btn_key_flag;
    reg [13:0]  left_btn_key_count;
    wire left_btn_key_start = !left_btn_key_r && left_btn_key;
    wire left_btn_key_end   = left_btn_key_r && !left_btn_key;
    wire left_btn_key_sample= left_btn_key_count[13];

    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            left_btn_key_r <= 1'b0;
            left_btn_key_flag <= 1'b0;
        end else if (left_btn_key_sample) begin
            left_btn_key_flag <= 1'b0;
        end else if (left_btn_key_start || left_btn_key_end) begin
            left_btn_key_flag <= 1'b1;
        end

        if (rst == `RST_ENABLE || !left_btn_key_flag) begin
            left_btn_key_count <= 20'b0;
        end else if(mid_btn_key_sample)begin
            left_btn_key_count <= left_btn_key_count ;
        end   
        else begin
            left_btn_key_count <= left_btn_key_count + 1'b1;
        end

        if (rst == `RST_ENABLE) begin
            left_btn_key_r <= 1'b0;
        end else if (left_btn_key_sample) begin
            left_btn_key_r <= left_btn_key;
        end
    end

    /*********** right_btn_key ***********/
    reg right_btn_key_r;
    assign right_btn_key_v = {31'd0, right_btn_key_r};

    // eliminate jitter
    reg         right_btn_key_flag;
    reg [13:0]  right_btn_key_count;
    wire right_btn_key_start = !right_btn_key_r && right_btn_key;
    wire right_btn_key_end   = right_btn_key_r && !right_btn_key;
    wire right_btn_key_sample= right_btn_key_count[13];

    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            right_btn_key_r <= 1'b0;
            right_btn_key_flag <= 1'b0;
        end else if (right_btn_key_sample) begin
            right_btn_key_flag <= 1'b0;
        end else if (right_btn_key_start || right_btn_key_end) begin
            right_btn_key_flag <= 1'b1;
        end

        if (rst == `RST_ENABLE || !right_btn_key_flag) begin
            right_btn_key_count <= 20'b0;
        end else if(right_btn_key_sample) begin
            right_btn_key_count <= right_btn_key_count;
        end
        else begin
            right_btn_key_count <= right_btn_key_count + 1'b1;
        end

        if (rst == `RST_ENABLE) begin
            right_btn_key_r <= 1'b0;
        end else if (right_btn_key_sample) begin
            right_btn_key_r <= right_btn_key;
        end
    end

    /*********** up_btn_key ***********/
    reg up_btn_key_r;
    assign up_btn_key_v = {31'd0, up_btn_key_r};

    // eliminate jitter
    reg         up_btn_key_flag;
    reg [13:0]  up_btn_key_count;
    wire up_btn_key_start = !up_btn_key_r && up_btn_key;
    wire up_btn_key_end   = up_btn_key_r && !up_btn_key;
    wire up_btn_key_sample= up_btn_key_count[13];

    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            up_btn_key_r   <= 1'b0;
            up_btn_key_flag <= 1'b0;
        end else if (up_btn_key_sample) begin
            up_btn_key_flag <= 1'b0;
        end else if (up_btn_key_start || up_btn_key_end) begin
            up_btn_key_flag <= 1'b1;
        end

        if (rst == `RST_ENABLE || !up_btn_key_flag) begin
            up_btn_key_count <= 20'b0;
        end else if(up_btn_key_sample)begin
            up_btn_key_count <= up_btn_key_count ;
        end 
        else begin
            up_btn_key_count <= up_btn_key_count + 1'b1;
        end

        if (rst == `RST_ENABLE) begin
            up_btn_key_r <= 1'b0;
        end else if (up_btn_key_sample) begin
            up_btn_key_r <= up_btn_key;
        end
    end

    /*********** down_btn_key ***********/
    reg down_btn_key_r;
    assign down_btn_key_v = {31'd0, down_btn_key_r};

    // eliminate jitter
    reg         down_btn_key_flag;
    reg [13:0]  down_btn_key_count;
    wire down_btn_key_start = !down_btn_key_r && down_btn_key;
    wire down_btn_key_end   = down_btn_key_r && !down_btn_key;
    wire down_btn_key_sample= down_btn_key_count[13];

    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            down_btn_key_r <= 1'b0;
            down_btn_key_flag <= 1'b0;
        end else if (down_btn_key_sample) begin
            down_btn_key_flag <= 1'b0;
        end else if (down_btn_key_start || down_btn_key_end) begin
            down_btn_key_flag <= 1'b1;
        end

        if (rst == `RST_ENABLE || !down_btn_key_flag) begin
            down_btn_key_count <= 20'b0;
        end else if(down_btn_key_sample)begin
            down_btn_key_count <= down_btn_key_count;
        end 
        else begin
            down_btn_key_count <= down_btn_key_count + 1'b1;
        end

        if (rst == `RST_ENABLE) begin
            down_btn_key_r <= 1'b0;
        end else if (down_btn_key_sample) begin
            down_btn_key_r <= down_btn_key;
        end
    end

endmodule