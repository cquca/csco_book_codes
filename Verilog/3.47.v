`timescale 10ns/1ns 
module test;
reg set;

parameter d=1.55
initial 
begin

#d set=0;
#d set=1;
end

endmodule