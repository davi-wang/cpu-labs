.data
temp1:  .word 1000
temp2:  .word 1002
temp3:  .word -20
temp4:  .word -100
temp5:  .word 5
temp6:  .word 0

.text
	lui $t0, 0
	lw $t1, 0($t0)  #1000
	lw $t3, 8($t0)  #-20
		
	lw $t4, 16($t0)  #5
	sll $t6, $t1, 2
	sllv $t6, $t1, $t4
	srl  $t6, $t1, 3
	sra  $t6, $t3, 3
	srav $t6, $t3, $t4
	srlv $t6, $t3, $t4