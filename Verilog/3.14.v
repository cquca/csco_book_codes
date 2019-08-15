reg x,y;
reg[1:0]z,w;
initial
begin
	x=1'b0；
	y=1'b1;
	z={x,y};
	w={y,x};
end

//例子2：带延迟的顺序块

red x,y;

reg [1: 0]z,w ;
initial
begin

	x=1'b0;

	#5 y=1'b1;
	#10 z={x,y};
	#20 w={y,z};
end