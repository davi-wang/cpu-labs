.data
block_write_base:   .word   0x0020000     # base addresses of the block in VGA
block_width:        .word   0x14         # width of the block
block_height:       .word   0x14         # height of the block

screen_width:   .word   160    # width of the screen
screen_height:  .word   120    # height of the screen

image_background_base:  .word   0x2000
image_tank_base:        .word   0x1000

abs_map:           .word    1, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0

.text

# function: main
main:
    # initialize
    addi $t1, $0, 0     # location x = 0
    addi $t2, $0, 0     # location y = 0

    addi $sp, $0, 0x0ff0    # stack pointer
    
    jal WRITE_ABS_MAP


    # scan the button
    # if pressed -> change
    lui $s3, 0xbfaf
	ori $s3, $s3, 0x8018
    lw $s0, ($s3) # up
    beq $s0, 1, SCAN_PRESS_UP

    lui $s3, 0xbfaf
	ori $s3, $s3, 0x801c
    lw $s0, ($s3) # down
    beq $s0, 1, SCAN_PRESS_DOWN

    lui $s3, 0xbfaf
	ori $s3, $s3, 0x8010
    lw $s0, ($s3) # left
    beq $s0, 1, SCAN_PRESS_LEFT

    lui $s3, 0xbfaf
	ori $s3, $s3, 0x8014
    lw $s0, ($s3) # right
    beq $s0, 1, SCAN_PRESS_RIGHT

    j SCAN_PRESS_END

SCAN_PRESS_UP:
    beq $t1, 0, WAIT_FOR_UP
    sub $t1, $t1, 1
    j WAIT_FOR_UP

SCAN_PRESS_DOWN:
    beq $t1, 5, WAIT_FOR_UP
    add $t1, $t1, 1
    j WAIT_FOR_UP

SCAN_PRESS_LEFT:
    beq $t2, 0, WAIT_FOR_UP
    sub $t2, $t2, 1
    j WAIT_FOR_UP

SCAN_PRESS_RIGHT:
    beq $t2, 7, WAIT_FOR_UP
    add $t2, $t2, 1

    # wait for button up
WAIT_FOR_UP:
    lw $s0, ($s3)
    beq $s0, 1, WAIT_FOR_UP

    # loop: refresh abs map
    lui $t3, 0  # row = 0
LOOP_REFRESH_ABS_MAP:
    beq $t3, 6, LOOP_REFRESH_ABS_MAP_END
    lui $t4, 0  # column = 0
    LOOP_REFRESH_ABS_MAP_ROW:
        beq $t4, 8, LOOP_REFRESH_ABS_MAP_ROW_END
        sub $s0, $t1, $t3
        sub $s1, $t2, $t4
        or $s0, $s0, $s1

        # select image (tank/background)
        bne $s0, 0, WRITE_BACKGROUND
    WRITE_TANK:
        addi $a0, $0, 1 # write 1 (a0)
        j WRITE_END
    WRITE_BACKGROUND:
        addi $a0, $0, 0 # write 0 (a0)
    WRITE_END:

        # write to the abs map
        sll $a1, $t3, 3
        add $a1, $a1, $t4
        sll $a1, $a1, 2
        sw $a0, abs_map($a1)
        addiu $t4, $t4, 1
        j LOOP_REFRESH_ABS_MAP_ROW
    LOOP_REFRESH_ABS_MAP_ROW_END:

    addiu $t3, $t3, 1   # row += 1
    j LOOP_REFRESH_ABS_MAP
LOOP_REFRESH_ABS_MAP_END:
    # end of loop

    # refresh VGA memory
    jal WRITE_ABS_MAP

SCAN_PRESS_END:

    # wait for a while
    addi $t0, $0, 0
LOOP_WAIT:
    addi $t0, $t0, 1
    bne $t0, 100000, LOOP_WAIT

    j main


##########################
# function: WRITE_ABS_MAP
##########################
WRITE_ABS_MAP:

    # preserve registers
    addi $sp, $sp, -24      
    sw $t0, 0($sp)          
    sw $t1, 4($sp)          
    sw $t2, 8($sp)          
    sw $t3, 12($sp)
    sw $t4, 16($sp)
    sw $ra, 20($sp)         # return address

    addi $t0, $0, 6 # row size
    addi $t1, $0, 8 # column size

    # loop: write blocks one by one
    lui $t2, 0  # row = 0
LOOP_WRITE_ALL_BLOCKS:
    beq $t2, $t0, LOOP_WRITE_ALL_BLOCKS_END
    lui $t3, 0  # column = 0
    LOOP_WRITE_ALL_BLOCKS_ROW:
        beq $t3, $t1, LOOP_WRITE_ALL_BLOCKS_ROW_END
        sll $a0, $t2, 3
        add $a0, $a0, $t3
        sll $a0, $a0, 2
        lw $a0, abs_map($a0)
        
        # write a block
        move $a1, $t2
        move $a2, $t3
        jal WRITE_BLOCK

        addiu $t3, $t3, 1
        j LOOP_WRITE_ALL_BLOCKS_ROW
    LOOP_WRITE_ALL_BLOCKS_ROW_END:

    addiu $t2, $t2, 1   # row += 1
    j LOOP_WRITE_ALL_BLOCKS
LOOP_WRITE_ALL_BLOCKS_END:
    # end of loop

    # preserve registers
    lw $t0, 0($sp)          
    lw $t1, 4($sp)          
    lw $t2, 8($sp)          
    lw $t3, 12($sp)
    lw $t4, 16($sp)
    lw $ra, 20($sp)         # return address
    addi $sp, $sp, 24      

    jr $ra

##########################
# function: WRITE_BLOCK
# $a0 WRITE_BLOCK_image_select:     select the image to show
# $a1 WRITE_BLOCK_row:              indicate the row
# $a2 WRITE_BLOCK_column:           indicate the column
##########################
WRITE_BLOCK:
    # preserve registers
    addi $sp, $sp, -44      
    sw $t0, 0($sp)          
    sw $t1, 4($sp)          
    sw $t2, 8($sp)          
    sw $t3, 12($sp)         
    sw $t4, 16($sp)         
    sw $t5, 20($sp)         
    sw $t6, 24($sp)         
    sw $t7, 28($sp)         
    sw $t8, 32($sp)         
    sw $t9, 36($sp)         
    sw $ra, 40($sp)         # return address

    # select the background image
    beq $a0, 0, IMAGE_BACKGROUND
IMAGE_TANK:
    lw $t0, image_tank_base             # base address of the background
    j IMAGE_SELECT_END
IMAGE_BACKGROUND:
    lw $t0, image_background_base       # base address of the background
IMAGE_SELECT_END:
    # end of select the background image

    # load addresses
    lw $t5, block_write_base        # base address of the block in VGA
    lw $t8, block_width             # width of the block
    lw $t9, block_height            # height of the block
    lw $t7, screen_width            # width of the screen
    sll $t8, $t8, 2

    # cal the VGA address to $t5 : $t5 + 20*(row*screen_width + col)*4
    move $t4, $a2
    move $a0, $t7
    jal MUL         # row * screen_width
    add $a0, $v0, $t4
    addi $a1, $0, 80
    jal MUL         # 80*(row*screen_width + column)
    add $t5, $v0, $t5
    
    sll $t7, $t7, 2

    # loop: write data to VGA
    lui $t3, 0  # row 0
LOOP_BLOCK:
    beq $t3, $t9, LOOP_BLOCK_END
    lui $t1, 0  # column 0
    LOOP_ROW:
        beq $t1, $t8, LOOP_ROW_END
        add $t4, $t0, $t1  # read address
        add $t2, $t5, $t1  # write address
        lw $t6, ($t4)
        sw $t6, ($t2)
        addiu $t1, $t1, 4
        j LOOP_ROW
    LOOP_ROW_END:

    # modify read&write base address
    add $t5, $t5, $t7   # write_base += screem_width
    add $t0, $t0, $t8   # read_base += block_width
    addiu $t3, $t3, 1   # row += 1
    j LOOP_BLOCK
LOOP_BLOCK_END:
    # end of loop: write data to VGA

    # preserve registers
    lw $t0, 0($sp)          
    lw $t1, 4($sp)          
    lw $t2, 8($sp)          
    lw $t3, 12($sp)         
    lw $t4, 16($sp)         
    lw $t5, 20($sp)         
    lw $t6, 24($sp)         
    lw $t7, 28($sp)         
    lw $t8, 32($sp)         
    lw $t9, 36($sp)         
    lw $ra, 40($sp)         # return address
    addi $sp, $sp, 44

    jr $ra


##########################
# function: MUL
# $a0 num1
# $a1 num2
# ret: v0 = num1*num2
##########################
MUL:
    lui $v0, 0
MUL_LOOP:
    beq $a0, 0, MUL_LOOP_END
    and $a2, $a0, 1
    beq $a2, 0, MUL_NOT_ADD
    add $v0, $v0, $a1
MUL_NOT_ADD:
    srl $a0, $a0, 1
    sll $a1, $a1, 1
    j MUL_LOOP
MUL_LOOP_END:
    jr $ra
	
	
END:
