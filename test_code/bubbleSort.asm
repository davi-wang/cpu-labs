# Translate C:
# void sort(int v[], int n)
# {
#     int i, j;
#     for (i = 0; i < n ; i += 1) {
#         for (j = i - 1; j >= 0 && v[j] > v[j + 1]; j -= 1){
#             swap(v,j)
#         }
#     }
# }

# $a0 = *v, $a1 = n
# $s0 = i, $s1 = j
    .data
v:  .word 0x4 0x3 0x1 0x5 0x2 0x6
temp: .word 0 0 0 0 0 0
    .text
    .globl main
main:
    lui      $a0,0
    li      $a1,6
    addi    $a2 ,$a2 , 24
    sw      $ra, 16($a2)
    sw      $s3, 12($a2)
    sw      $s2, 8($a2)
    sw      $s1, 4($a2)
    sw      $s0, 0($a2)

    move    $s2, $a0
    move    $s3, $a1
    move    $s0, $0             # i = 0
for1tst: # the first layer loop
    slt     $t0, $s0, $s3       # $t0 = 0 if $s0 >= $ a1  (i >= n)
    beq     $t0, $zero, exit1   # go to exit if $t0 = 0 (i < n)
    addi    $s1, $s0, -1        # j = i -1   
for2tst: # the second layer loop
    slti    $t0, $s1, 0         # whether j >= 0 ?
    bne     $t0, $0, exit2
    sll     $t1, $s1, 2
    add     $t1, $a0, $t1
    lw      $t2, 0($t1)         # $t2 = v[j]
    lw      $t3, 4($t1)         # $t3 = v[j+1]
    slt     $t0, $t3, $t2       # $t0 = 0 if t3 >= t2  -->  t2 > t3
    beq     $t0, $0, exit2

    move    $a0, $s2            # the address of v
    move    $a1, $s1            # the value of j
    jal     swap

    addi    $s1, $s1, -1
    j       for2tst   
    # the second layer loop end
exit2:
    addi    $s0, $s0, 1         # i+=1
    j       for1tst             #jump to the first layer loop
    # the first layer loop end
exit1:
    lw      $ra, 16($a2)
    lw      $s3, 12($a2)
    lw      $s2, 8($a2)
    lw      $s1, 4($a2)
    lw      $s0, 0($a2)      
    addi    $sp, $sp, 20
    jr      $ra
swap:
    sll     $t1, $a1, 2
    add     $t1, $t1, $a0
    lw      $t0, 0($t1)
    lw      $t2, 4($t1)
    sw      $t0, 4($t1)
    sw      $t2, 0($t1)
    jr      $ra

