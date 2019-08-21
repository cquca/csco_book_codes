`timescale 1ns/1ns

module tb92;

reg Clock, reset, d; 
wire q2, q3;

initial clock=0;
always #5 clock=~clock; 
initial d= 1;
begin

reset= 1

# 12 reset =0; 
#11 reset=1;
# 17 $stop;

end

dff2 dff2(clock, reset, d, q2);


endmodule