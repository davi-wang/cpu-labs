.data
	gmembase: .word 0x20000
	color: .word 0xa0f0f0
	gmemend: .word 0x12c00

.text
	lw $t5, gmembase
	lw $t6, color
	lw $t7, gmemend

start:
	lui $t1, 0  # 像素*4计数器
loop:
	# if $t2 == 19200*4 then $t1 <- 0
	beq $t1, $t7, end
	add $t2, $t5, $t1  # 计算地址
	sw $t6, ($t2)
	addiu $t1, $t1, 4
	j loop
end:
	j end
	
	
	
	
