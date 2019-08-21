reg x,y,z;
always @(posedge reset)
begin
if(reset)
begin
x<=0;
y<=0;
z<=0;
end
else
...
end

assign out=x^y^z;