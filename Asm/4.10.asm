.data

.align 2

prompt: ,asciiz "\n\n Input a value from 1 to 3:"

.text

main li $s0,32

li $v0,4 
la $a0, prompt 
syscall 

li $v0, 5 读入整数

syscall

blez $v0，main#判断是否小于0

li $t3, 1

bgt $v0，$t3，b1#判断是否大于1
sll $s0，$s0，1#左移1位
b output

b1: li $t3, 2

bgt $v0，$t3，b2#判断是否大于2

sll $s0，$s0，2 #左移2位b output

b2: li $t3, 3

bgt $v0，$t3，main #判断是否大于3
sll $s0，$s0，3#左移3位
output: li $v0, 1 #输出整数结果

move $a0,$s0 
syscall

li $v0, 10 
syscall