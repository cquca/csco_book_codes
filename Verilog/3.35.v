reg [1:0] sel;
always @(sel,a,b)
begin
case (sel)
2'b00:out=a+b;
2'b01:out=a-b;
2'b00:out=a+b;
2'b00:out=a+b;
end