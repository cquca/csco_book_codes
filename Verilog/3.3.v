module Test

	reg a, b, c;
	wire y;
	...


	logic_gates my_logic_gates(.oY(y), .iB(b),.iC(c), .iA(a) )；//按名称连接

endmodule