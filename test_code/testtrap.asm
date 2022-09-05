.org 0x0
_start:
    ori $1, $0, 0x100
    jr $1

.org 0x40
ori		$1, $0, 0xf0f0			# $1 = $0 | 0x8000
ori		$1, $0, 0xffff			# $1 = $0 | 0x9000
ori		$1, $0, 0x0f0f			# $1 = $0 | 0x9000
mfc0    $4, $14, 0x0
addi    $4, $4, 4
mtc0    $4, $14, 0x0
eret

.org 0x100
ori $1, $0, 0x1000
sw $1, 0x0100($0)
ori $1, $0, 0x1000
ori $2, $0, 0x1000
teq $1, $1

ori $1, $0, 0x2000
tne $1, $2

ori $1, $0, 0x3000
teqi $1, 0x3000

ori $1, $0, 0x4000
tnei $1, 0x2000

ori $1, $0, 0x5000
tge $1, $2

ori $1, $0, 0x6000
tgei $1, 0x4000

ori $1, $0, 0x7000
tgeiu $1, 0x7000

ori $1, $0, 0x8000
tgeu $1, $2

ori $1, $0, 0x9000
tlt $1, $2

ori $1, $0, 0xa0000
tlti $1,0x9000

ori $1, $0, 0xb000
tltiu $1, 0xb000

ori $1, $0, 0xc000
tltu $2, $1

ori $!, $0, 0xd000

_loop:
 j _loop