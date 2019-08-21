initial
begin
clock5=0;
forever
begin
#10 clock5=1;
#10 clock5=0;
end
end