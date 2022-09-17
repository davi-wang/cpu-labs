.data
temp1:  .word 1000
temp2:  .word 1002
temp3:  .word -20
temp4:  .word -100
temp5:  .word 5
temp6:  .word 0

.text
	lw $t1, 0($t0)  #1000
	lw $t2, 4($t0)	 #1002
	lw $t3, 8($t0)  #-20
	lw $t4, 12($t0)  #-100
	
	add $t5, $t1, $t3
	add $t5, $t1, $t5
	addiu $t5, $t1, 100
	
	sw   $t5, 20($t0) 
	lui  $t5, 1000
	
	sub $t5, $t1, $t2
	sub $t5, $t1, $t3
	subu $t5, $5, $t1
	
	
	and $t6, $t1, $t2
	or  $t6, $t1, $t2
	xor $t6, $t1, $t1
	andi $t6, $t1,1002
	ori $t6, $t1,1002
	xori $t6, $t1,1002
	
	slt $t7, $t3, $t1
	sltu $t7, $t2, $t1
	slti $t7, $t3, 1
	sltiu $t7, $t2, 1100
	
	lw $t4, 16($t0)  #5
	sll $t6, $t1, 2
	sllv $t6, $t1, $t4
	srl  $t6, $t1, 3
	sra  $t6, $t3, 3
	srav $t6, $t3, $t4
	srlv $t6, $t3, $t4
	 
	
	
	
	
	
	
	
	
