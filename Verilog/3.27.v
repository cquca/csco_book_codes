reg x,y,z;

reg [15: 0] reg_a, reg_b;

integer count;


initial
begin

x=0;y=1;z=1; 
count=0;
reg_a= 16'b0; reg_b= reg_a; 
#15 reg_a[2]=1'b1;

#10 reg_b[15:13]={x,y,z} 

count = count + 1


end