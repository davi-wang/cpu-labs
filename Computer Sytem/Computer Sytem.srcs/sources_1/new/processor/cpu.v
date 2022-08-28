

module mycpu(
    input clk,
    input rstn,

    output [31:0] inst_rom_addr,
    input  [31:0] inst_rom_rdata,

    output        data_ram_wen,
    output [31:0] data_ram_wdata,
    output [31:0] data_ram_addr,
    input  [31:0] data_ram_rdata
);

reg [31:0] program_counter;

// 线网声明
wire [31:0] npc_out;

wire [31:0] instruction;
wire [5:0]  op_code;
wire [4:0]  rs;
wire [4:0]  rt;
wire [4:0]  rd;
wire [4:0]  sa;
wire [5:0]  func;
wire [15:0] imm;
wire [15:0] offset;
wire [25:0] index;
wire [31:0] num;

wire [4:0] reg_raddr1, reg_raddr2, reg_waddr;
wire [31:0] reg_rdata1, reg_rdata2, reg_wdata;
wire reg_we;

wire [31:0] alu_1, alu_2, alu_result;
wire [1:0] alu_ctrl;

wire c_ra1, c_ra2, c_alu1, c_alu2, c_wa;
wire [1:0] c_wd;
wire c_num;

// PC 接线
branchunit bru(
    .op_code(op_code),
    .opd1(reg_rdata1),
    .opd2(reg_rdata2),
    .offset(offset),
    .index(index),
    .current_pc(program_counter),

    .next_pc(npc_out)
);
always @(posedge clk or negedge rstn) begin
    if (!rstn) program_counter <= 32'h0 ;
    else program_counter <= npc_out ;
end

// 取指接线
assign inst_rom_addr = program_counter;
assign instruction = inst_rom_rdata;
assign op_code = instruction[31:26];
assign rs = instruction[25:21];
assign rt = instruction[20:16];
assign rd = instruction[15:11];
assign sa = instruction[10:6];
assign func = instruction[5:0];
assign imm = instruction[15:0];
assign offset = imm;
assign index = instruction[25:0];

// RegFile, ALU, CU
regfile regfile0(
    .clk(clk),
    .raddr1(reg_raddr1),
    .rdata1(reg_rdata1),
    .raddr2(reg_raddr2),
    .rdata2(reg_rdata2),
    .we(reg_we),
    .waddr(reg_waddr),
    .wdata(reg_wdata)
);
alu alu0(
    .clk(clk),
    .alu_ctrl(alu_ctrl),
    .alu_num1(alu_1),
    .alu_num2(alu_2),
    .alu_result(alu_result)
);
controlunit cu0(
    .op_code(op_code),
    .func(func),
    .alu_op(alu_ctrl),
    .c_ra1(c_ra1),
    .c_ra2(c_ra2),
    .c_alu1(c_alu1),
    .c_alu2(c_alu2),
    .c_wa(c_wa),
    .c_wd(c_wd),
    .c_num(c_num),
    .reg_we(reg_we),
    .mem_wen(data_ram_wen)
);


// 搭建数据通路
assign num = c_num ? {{27'b0}, sa[4:0]} : {{16{imm[15]}}, imm[15:0]} ;

assign reg_raddr1 = c_ra1 ? rt : rs;
assign reg_raddr2 = c_ra2 ? rs : rt;
assign alu_1 = c_alu1 ? reg_rdata1 : {{16{1'b0}}, offset[15:0]};
assign alu_2 = c_alu2 ? reg_rdata2 : num;
assign reg_waddr = c_wa ? rd : rt;
assign reg_wdata = 
    ({32{c_wd==2'b00}} & {imm, 16'b0}) |
    ({32{c_wd==2'b01}} & data_ram_rdata) |
    ({32{c_wd==2'b10}} & alu_result) |
    ({32{c_wd==2'b11}} & {32'b0}) ;

assign data_ram_wdata = reg_rdata1;
assign data_ram_addr = alu_result;



endmodule