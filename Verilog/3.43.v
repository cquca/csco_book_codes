initial begin
clock4=0;
forever 
#10 clock4=!clock4;
end