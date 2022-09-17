.data
temp0: .word -347
temp1: .word 2348
temp2: .word 234123
temp3: .word 78

.text                                           # ###test load####
    lw      $t1,        temp0
    lw      $t2,        temp1
    lw      $t3,        temp2
    lui     $t4,        temp3

# ###test cal####
    add     $t0,        $t1,        $t2         # $t0 = $t1 + $t2
    addi    $t0,        $t0,        1245        # $t0 = $t0 + 1245
    lw      $t0,        temp0
    addu    $t0,        $t0,        $t1
    sub     $t0,        $t1,        $t2         # $t0 = $t1 - $t2
    subu    $t0,        $t1,        $t2         # $t0 = $t1 - $t2
    addi    $t0,        $t0,        237         # $t0 = $t0 + 237
    addiu   $t0,        $t0,        -124        # $t0 = $t0 - 1245

# ###test logical####
    or      $t0,        $t1,        $t2         # $t0 = $t1 | $t2
    and     $t0,        $t1,        $t2         # $t0 = $t1 & $t2
    nor     $t0,        $t1,        $t2         # $t0 = ~($t1 | $t2)
    xor     $t0,        $t1,        $t2         # $t0 = $t1 ^ $t2
    ori     $t0,        $t1,        0x12472     # $t0 = $t1 | 0x12472
    xori    $t0,        $t1,        0x25468     # $t0 = $t1 ^ 0x25468
    andi    $t0,        $t1,        0x865407    # $t0 = $t1 & 0x865407
    lui     $t0,        71

# ###test mov####
    sll     $t0,        $t0,        3           # $t0 =  $t0 << 3
    srl     $t0,        $t0,        2           # $t0 =  $t0 >> 2
    sra     $t0,        $t0,        5
    sllv    $t0,        $t0,        $t1
    srlv    $t0,        $t0,        $t1
    srav    $t0,        $t0,        $t1

# ###test slt####
    slt     $t0,        $t1,        $t2         # $t0 = ($t1 < $t2) ? 1 : 0
    slti    $t0,        $t1,        0           # $t0 = ($t1 < 0) ? 1 : 0
    subi    $t0,        $0,         1234        # $t0 = $0 - 1234
    sltiu   $t0,        $t1,        0           # $t0 = ($t1 < 0) ? 1 : 0
    sltu    $t0,        $t1,        $t2

# ###test jump####
    lui     $t0,        0
    lw      $t1,        0($t0)
    lw      $t2,        0($t0)

# beq
    beq     $t1,        $t2,        label_1
    addiu   $t1,        $t1,        1
label_1:
    addiu   $t1,        $t1,        1
    beq     $t1,        $t2,        label_1
                                                # t1:101  t2:100
                                                # BNE
    lw      $t3,        8($t0)
    bne     $t1,        $t2,        label_2
    addiu   $t1,        $t1,        1
label_2:
    sub     $t1,        $t1,        $t3
    bne     $t1,        $t2,        label_2
                                                # t1:100 t2:100
                                                # BGTZ
    lw      $t4,        12($t0)
label_3:
    sub     $t4,        $t4,        $t3
    bgtz    $t4,        label_3
                                                # t3:1  t4:0
                                                # BGEZ
    add     $t4,        $t4,        $t3
label_4:
    sub     $t4,        $t4,        $t3
    bgez    $t4,        label_4
                                                # t3:1  t4:-1
                                                # BLTZ
    bltz    $t4,        label_5
    add     $t4,        $t4,        $t3
label_5:
    add     $t4,        $t4,        $t3
    bltz    $t4,        label_5
                                                # t3:1  t4:0
                                                # BLEZ
    blez    $t4,        label_6
    add     $t4,        $t4,        $t3
label_6:
    add     $t4,        $t4,        $t3
    blez    $t4,        label_6
                                                # t3:1  t4:1
                                                # jump part
    j       label_7
    addiu   $t3,        $t3,        1
label_7:
    jal     label_8
    addiu   $t3,        $t3,        1
label_8:
    lw      $t5,        16($t0)
    jr      $t5
    addiu   $t3,        $t3,        1
    lw      $t5,        20($t0)
    jalr    $t6,        $t5
    addiu   $t3,        $t3,        1
    addiu   $t3,        $t3,        1

# ###test load####
    ori     $3,         $0,         0xeeff      # $3 = $0 | 0xeeff
    sb      $3,         0x3($0)

    srl     $3,         $3,         8           # $3 = $3 >> 8
    sb      $3,         0x2($0)

    ori     $3,         $0,         0xccdd      # $3 = $0 | 0xccdd
    sb      $3,         0x1($0)

    srl     $3,         $3,         8           # $3 = $3 >> 8
    sb      $3,         0x0($0)

    lb      $1,         0x3($0)
    lbu     $1,         0x2($0)

    ori     $3,         $0,         0xaabb
    sh      $3,         0x4($0)

    lhu     $1,         0x4($0)
    lh      $1,         0x0($0)

    ori     $1,         $0,         0x8899
    sh      $3,         0x6($0)

    lh      $1,         0x6($0)
    lhu     $1,         0x6($0)

    ori     $3,         $0,         0x4455
    sll     $3,         $3,         0x10
    ori     $3,         $3,         0x6677
    sw      $3,         0x8($0)
    lw      $1,         0x8($0)

# ###test cp0####
    ori     $1,         $0,         0xf
    mtc0    $1,         $11

    lui     $1,         0x1000
    ori     $1,         $1,         0x401
    mtc0    $1,         $12
    mfc0    $2,         $12
    
_loop:
    j       _loop


