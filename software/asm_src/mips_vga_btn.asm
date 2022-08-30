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
	
	# ��ⰴť�Ƿ���
	lw  $t3, 0x0($t4)
	lui $t1, 0
	beq $t1, $t3, detectMidBtn
	nop
	lw $t5, color2  # ���� �л���ɫ
	detectMidBtn:
	
	lui $t1, 0  # ����*4������
loop:
	# if $t2 == 19200*4 then $t1 <- 0
	beq $t1, $t7, start  # д����������ʱ ��ת����ʼ��
	add $t2, $t6, $t1  # �����ַ
	sw $t5, ($t2)
	addiu $t1, $t1, 4
	j loop
end:
	nop
	j end
	nop
	
	
	
	
