module clock_gen(output reg clock);
initial
	clock=1'b0;
always
	#10 clock=~clock;
initial
	#1000 $finish;
endmodule