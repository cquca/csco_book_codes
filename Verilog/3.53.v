`timescale 10ns/1ns
module test;
reg set;
parameter p=1.55;
initial
begin
$monitor($realtime,,"set=",set);
#p set=0;
#p set=1;
end 
endmodule