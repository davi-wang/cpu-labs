.data
	temp1: .word 100
.text
	lw $t1, 0($t0)
	addiu $t3, $0, 6	#t3 = 6
	addiu $t2, $t1, 1	#t2 = 101
	addiu $t3, $t2, 2	#t3 = 103
	addiu $t4, $t2, 3	#t4 = 104
	addiu $t4, $t3, 4	#t4 = 107