reg clock1;
initial
clock1=0;
always
#5 clock1=~clock1;