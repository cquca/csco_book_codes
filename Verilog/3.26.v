reg clock;
initial
begin
clock=1'b0
forever #10 clock=~clock;
end

reg clock;
reg x,y;
forever@(posedge clock)x=y;
