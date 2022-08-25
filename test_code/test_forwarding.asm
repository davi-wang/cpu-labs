.data
	temp1: .word 100
.text
	lw $t1, 0($t0)
	addiu $t2, $t1, 1
	addiu $t2, $t1, 2
	addiu $t2, $t1, 3
	addiu $t2, $t1, 4