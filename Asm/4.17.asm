.data

msg1: asciiz"\n Please input a number N:"
msg2: asciiz"\n The fact of N is"


.gobl main
.text
main:
li $v0，4
la $a0, msg1
syscall

$v0，5
syscall
move $a0,$v0

jal fact

move $v1, $v0


li $v0，4

la $ao, msg2

move $a0 $v1 
li $v0,1

syscall
li $v0,10
syscall