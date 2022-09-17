.data
	temp1: .word 100
	temp2: .word 99
	temp3: .word 1 
	temp4: .word 2
	temp5: .word 0x3084
	temp6: .word 0x3090

.text
	lui $t0, 0
	lw $t1, 0($t0)				#t1 = 100
	lw $t2, 0($t0)				#t2 = 100
	# beq
	beq $t1, $t2 , label_1		#jump
	addiu $t1, $t1, 1			#ignored
	label_1:
	addiu $t1, $t1, 2			#t1 = 101
	beq $t1, $t2 , label_1
	# t1:101  t2:100 
	#BNE
	lw $t3, 8($t0)
	bne $t1, $t2, label_2
	addiu $t1, $t1, 1
	label_2:
	sub $t1, $t1, $t3
	bne $t1, $t2, label_2
	# t1:100 t2:100 
	#BGTZ
	lw $t4, 12($t0)
	label_3:
	sub $t4, $t4, $t3
	bgtz  $t4, label_3
	# t3:1  t4:0
	#BGEZ
	add $t4, $t4, $t3
	label_4:
	sub $t4, $t4, $t3
	bgez $t4, label_4
	# t3:1  t4:-1
	#BLTZ
	bltz $t4, label_5
	add $t4, $t4, $t3
	label_5:
	add $t4, $t4, $t3
	bltz $t4, label_5
	# t3:1  t4:0
	#BLEZ
	blez $t4, label_6
	add $t4, $t4, $t3
	label_6:
	add $t4, $t4, $t3
	blez $t4, label_6
	# t3:1  t4:1
	#jump part
	j label_7
	addiu $t3, $t3, 1
	label_7:
	jal label_8
	addiu $t3, $t3, 1
	label_8:
	lw    $t5, 16($t0)
	jr    $t5
	addiu $t3, $t3, 1
	lw    $t5, 20($t0)
	jalr  $t6, $t5
	addiu $t3, $t3, 1
	addiu $t3, $t3, 1
