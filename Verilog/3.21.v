module demultiplexer1_to_4 (out0, out1, out2, out3, in, s1, s0);
output out0, out1, out2, out3; 
reg out0, outl, out2, out3;

input in;
input s1, s0;

always @(s1 or s0 or in)

begin

case({s1, s0})

2'b00:

begin out0 = in; outl =1'bz; out2=1'bz; out3 =1'bz; end

2'b01:

begin out0 =1'bz; outl =in; out2 =1'bz; out3=1'bz; end

2'b10:

begin out0=1'bz; out1 =1'bz; out2 =in; out3 =1'bz end

2'b11:

begin out0 =1'bz; outl =1'bz; out2 =1'bz; out3 =in; end

2'bx0,2'bx1,2'bxz,2'bxx,2'b0x,2'b1x,2'bzx:


begin out0 =1'bx; outl=1'bx; out2= 1'bx; out3= 1bx; end
2bz0,2'bz1,2bzz,2'b0z,2'b1z:

begin out0 =1'bz; outl=1'bz; out2=1'bz; out3 =1'bz; end
default: $display("Unspecified control signals")

endcase end

endmodule