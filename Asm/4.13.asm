.data
array:.word -4,5,8,-1
msg1:.asciiz"\n The sum of the positive values="
msg2:.asciiz"\n The sum of the negative values="
.globl main
.text
main:
li $v0,4
la $a0,msg1
syscall
la $a0,array
li $a1,4
jal sum
move $a0,$v0
li $v0,1
syscall
li $v0,4
la $a0,msg2
syscall
li $v0,1
move $a0,$v1
syscall
li $v0,10
syscall