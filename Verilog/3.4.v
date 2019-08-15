module logic_gates(oY, iA, iB, iC);

	output oY;
	inputiA,iB,iC;
	wire andl, and2 //连接线

	and(and1, iA, iB);
	and(and2, iA, iC);
	or(oY, andl, and2)
endmodule