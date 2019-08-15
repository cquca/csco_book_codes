module logic_gates(oY, iA, iB, iC)

output oY;

input iA,iB, iC;

and(and1, iA, iB)
and (and2, iA, iC)

or (oY, and1, and2);

endmodule