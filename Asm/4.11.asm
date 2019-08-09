#函数名称:$um（&X,N,$P,$N)

#函数描述：

#该子程序计算长度为N的数组X中所有正数的和以及所有负数的和

#调用示例：
la $a0, array
li $a1,4
jal sum
move $a0, $v0


#算法伪代码

v0=0;
v1=0;
while(a1>0)do
{
a1=a1-1;
t0=Mem(a0);
a0=a0+4;
If (t0 >0) then
v0=v0+t0;
else

v1=v1+t0 ;
}

Return