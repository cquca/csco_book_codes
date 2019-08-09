.data

align 2

jumptable: .word main, casel, case2, case3
prompt:.asciiz"\n\n Input a value from 1 to 3:"

.text

main: li $s0,32

li $vo, 4 

la $a0, prompt

syscall

li $v0,5
syscall
blez $v0 ，main
li $t3, 3
bgt $v0，$t3，main

la $a1， jumptable#装载査找表基地址
sll $t0 ，$v0，2#计算偏移

add $t1，$a1，$t0#计算跳转指令地址存放地址

lw $t2，0（$t1）#获取跳转地址ir $t2 跳转

case1: sll $s0, $s0, 1 

b output

case2：sll $s0，$s0 2

b output

case3: sll $s0, $s0, 3 
output:

li $V0, 1 
move $a0 ,$s0 
syscall

li $v0, 10

syscall