reg x,y,z;
always @(x,y,z,posedge reset)
begin
if(reset)
out=0;
else
out=x^y^z;
end