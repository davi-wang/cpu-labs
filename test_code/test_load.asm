.data
	temp1: .word 100
	temp2: .word 200
	temp3: .word 0
	temp4: .word -10
.text
	lui $t0, 0
	lui $t1, 100
	sw  $t1, 8($t0)
	lw  $t2, 8($t0)
	lb  $t1, 12($t0)
	lbu $t1, 4($t0)
	lh  $t1, 12($t0)
	lhu $t1, 4($t0)
	sb  $t1, 3($t0)
	sh  $t1, 2($t0)
	

	
	