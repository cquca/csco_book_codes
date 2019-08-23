`timescale 10ns/1ns
module test;
reg set;
parameter p=1.6;
initial
begin
$monitor($time,,"set=",set);
#p set=0;
#p set=1;
end 
endmodule