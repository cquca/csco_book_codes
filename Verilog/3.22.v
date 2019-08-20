reg [3:0] encoding;
integer state;
casex(encoding)
4'b1xxx: next_state=3;
4'bx1xx: next_state=2;
4'bxx1x: next_state=1;
4'bxxx1: next_state=0;
default: next_state=0;
endcase

