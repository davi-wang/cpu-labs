
// 负责生成下一个 PC 值的部件 纯组合逻辑实现
module branchunit (
    input [5:0] op_code,    // 当前指令
    input [31:0] opd1, opd2,// 待比较的两个数
    input [15:0] offset,    // beq 中的偏移
    input [25:0] index,     // j 中的跳转目标
    input [31:0] current_pc,// 当前 pc

    output [31:0] next_pc   // 下一个pc

);

wire [31:0] add_pc, short_jump_pc, target_pc;

// 无跳转的下一个 pc
assign add_pc = current_pc + 32'd4;

// 若两数相等 则转移到 offset左移2 再有符号扩展 + 当前pc + 4
assign short_jump_pc = (opd1 == opd2)
    ? add_pc + {{14{offset[15]}}, offset[15:0], 2'b00}
    : add_pc ;

// 无条件跳转目的地址 : 高4位(当前pc + 4) 拼接 index左移两位
assign target_pc = { add_pc[31:28], index, 2'b00 };

// 根据操作码判断应该选用哪个 pc
assign next_pc = 
    (op_code == 6'b000100) ? short_jump_pc :
    (op_code == 6'b000010) ? target_pc :
                             add_pc ;

endmodule