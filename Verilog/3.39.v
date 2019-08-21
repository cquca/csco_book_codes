module dff2(clock,reset,d,q);
input clock,reset,d;
output q;
reg q;
always @(posedge clock or negedge reset)
begin
if(!reset)
q<=0;
else
q<=d;
end
endmodule