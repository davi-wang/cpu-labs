.org 0x0
.set noat
.set noreorder
.set nomarco
.global _start

_start:
    ori $1, $0, 0x20
    jr $1

ori		$1, $0, 0x8000			# $1 = $0 | 0x8000
ori		$1, $0, 0x9000			# $1 = $0 | 0x9000
mfc0    $1, $14
addi    $1, $1, 4
mtc0    $1, $14
eret

ori $1, $0, 0x1000
syscall
lw  $1, 0x1000($0)


_loop:
 j _loop
