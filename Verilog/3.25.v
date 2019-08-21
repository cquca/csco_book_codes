module data_buffer(data en, data, clock);

parameter cycles =8;
input data_en;
input [15: 0] data;

input clock;

reg [15: 0] buffer [0: 7];

integer i ;

always @(posedge clock)
begin

if(data_en) //data_en信号为真

begin

i=0;

repeat(cycles) //在接下来的8个时钟周期的正跳变沿存

begin

@(posedge clock)buffer [i] = data;
i=i+1
end

end

end

endmodule