reg [15: 0] flag;
integer i; //用于计数的整数

initial

begin

flag=16'b0010_0000_0000_0000;

i=0

//while循环声明中的主模块是命名块 block1

begin: block1
	while(i< 16)

	begin

	if(flag [i])

		begin

		$display("Encountered a TRUE bit at element number %d", i);

//在标志寄存器中找到了值为真（1）的位，禁用b1ock1

		disable block1

		end

		i=1+1;

		end

	end 

end