.globl main
.text
main:
li $v0,4
la $a0,str
syscall
li $v0,4
la $a0,strn
syscall
li $v0,1
la $t0,b0
lb $a0,0($t0)
syscall
lh $a0,0($t0)
syscall
lw $a0,0($t0)
syscall
la $t0,$h0
lh $a0,0($t0)
syscall
lw $a0,0($t0)
syscall
la $t0,w0
lw $a0,0($t0)
syscall
li $v0,10
syscall