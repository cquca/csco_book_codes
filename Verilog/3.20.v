reg [1:0] alu_control;
...
case (alu_control)
	2'd0: y=x+z;
	2'd1: y=x-z;
	2'd2: y=x*z;
	default: $display("invalid ALU control signal");
endcase