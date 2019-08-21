function integer factorial;
input [3:0] a;
integer i;
begin
factorial=1;
for(i=2;i<=a;i=i+1)
	factorial=i*factorial;
end
endfunction