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

sum:li $v0,0
li $v1,0
loop:
blez $a1,retzz
addi $a1,$a1,-1
lw $t0,0($a0)
addi $a0,$a0,4
bltz $t0,negg
add $v0,$v0,$t0
b loop
negg:
add $v1,$v1,$t0
b loop
retzz:jr $ra