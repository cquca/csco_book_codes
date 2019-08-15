module logic_gates(oY, iA, iB, iC);

	output oY;
	inputiA,iB,iC;
	assign oY=(iA&iB)|(iA&iC);
endmodule