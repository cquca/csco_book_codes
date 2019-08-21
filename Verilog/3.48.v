module test;
reg a,b,c;
wire out;
`define aa=a+b
`define cc=c+`aa
assign out=`cc;
endmodule