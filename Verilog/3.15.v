red x,y;

reg [1: 0]z,w ;
initial
fork

	x=1'b0;

	#5 y=1'b1;
	#10 z={x,y};
	#20 w={y,z};
join