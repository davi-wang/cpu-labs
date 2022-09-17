.data
temp1: .word 100

.text
lw $1, temp1        #$1 = 100
addiu $2, $1, 123   #$2 = 223
addu $3, $1, $2     #$3 = 323