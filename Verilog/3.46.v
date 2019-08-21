parameter PERIOD= 10;

reg Rst_n 
initial

begin

Rst_n =1;

# PERIOD Rst_n =0
#(5* PERIOD) Rst_n= a;


end

//同步复位信号

initial
begin

Rst_n= 1

@(negedge clock);
Rst_n= 0;
#30

@(negedge clock) Rst_n= 1;
end