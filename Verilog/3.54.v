`timescale 1ns/1ns

module random_pulse( dout) ;
output [9: 0] dout ;
reg [9: 0] dout;

integer delay1, delay2, k ;
initial 

begin

#10 dout=0;

for(k=0;k<100;k=k+1)

begin

delay1=20*({$random}% 6);

delay2=20*(1+{$random}% 3);

#delay1 dout =1 <<( {$random}% 10);

//dout的0~9位中随机出现1，并且出现的时间在

#delay2 dout= 0; 
end

end
endmodule