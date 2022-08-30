.data
	gmembase: .word 0x20000
	gmemend: .word 0x12c00
	color1: .word 0xa0f0f0
	color2: .word 0xf0a0f0

.text
	lw $t6, gmembase
	lw $t7, gmemend
	lui $t4, 0xbfaf
	ori $t4, $t4, 0x800c  # mid button address

start:
	lw $t5, color1
	
	# 检测按钮是否按下
	lw  $t3, 0x0($t4)
	lui $t1, 0
	beq $t1, $t3, detectMidBtn
	nop
	lw $t5, color2  # 按下 切换颜色
	detectMidBtn:
	
	lui $t1, 0  # 像素*4计数器
loop:
	# if $t2 == 19200*4 then $t1 <- 0
	beq $t1, $t7, start  # 写完所有像素时 跳转到开始处
	add $t2, $t6, $t1  # 计算地址
	sw $t5, ($t2)
	addiu $t1, $t1, 4
	j loop
end:
	nop
	j end
	nop
	
	
	
	
