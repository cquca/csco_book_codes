module Test;

	reg a, b, c //定义为reg是因为它们要连接实例化模块的输入端
	wire y; //定义为wire是因为它们要连接实例化模块的输出茸
	...
	logi_gates mylogic_gates(y, a, b,c);

endmodule

module logic_gates(oY, iA, iB, iC);

	output oY;
	input iA,iB,iC;
	...
endmodule