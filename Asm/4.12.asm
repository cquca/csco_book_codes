sum: li $v0,0
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