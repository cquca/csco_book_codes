integer state[0:31];
integer i;
initial
begin
for(i=0;i<32;i=i+2)
state[i]=0;
for(i=1;i<32;i=i+2)
state[i]=1;
end
