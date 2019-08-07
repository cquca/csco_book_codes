li $v0, 1

loop:

bgeu $al, $a2, done

lb $t1，0（$a1）
lb $t2，0（$a2）
bne $tl，$t2， break
addi $al, $al, 1 
addi $a2, $a2,-1 
b loop 

break:

li $v0, 0 

done: