.text
addiu $t1, $t1, 1
addiu $t2, $t2, 2
addiu $t3, $t3, 3
addiu $t4, $t4, 4
addiu $t5, $t5, 5
or $t3, $t2, $t1
or $t4, $t3, $t2
or $t5, $t4, $t3
or $t1, $t5, $t4
or $t3, $t1, $t2
