reg [1:0] out;
always @ (posedge clock)
begin
if(s==2'b00) out<=2'b00;

else if(s==2'b11) out<=2'b11;
else out<=2'b11;
end