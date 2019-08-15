reg [255: 0] datal;
reg [0: 255] data2;
reg [7: 0] byte;
byte= datal[31-: 8];
byte= datal[24+: 8];
byte= data2[31-: 8];
byte= data2[24+: 8];
for(j=0;j<=31;j=j+1)
byte=data1[(j*8)+:8];