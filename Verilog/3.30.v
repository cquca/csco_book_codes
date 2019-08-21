task add4;
input [3:0] x,y;
input cin;
output [3:0] s;
output cout;
begin
{cout,s}=x+y+cin;
end
endtask