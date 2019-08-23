

module edge_detect_moore
{
input wire clk, reset,

input wire level, 
output reg tick
}
//符号状态声明
localparam [1: 0]

zero =2'b00,

eda=2'b01,
one =2'b10;//信号声明

reg [1: 0] state_reg, state_next;//状态寄存器
always@(posedge clk, posedge reset)

begin

if (reset)state_reg <= zero;

else

state_reg <=state_next;

end

//下一状态逻辑和输出逻辑
always@*

begin


state_next=state_reg;
tick=1'b0; 
case (state_reg)

zero:

if (level)

state_next= edg;
edg:

begin

tick = 1'b1;
if (level)

state_next=one;
else

state_next =zero;

end

one:

if (~level)
state_next=zero;
default: state_next=zero;

endcase

end

endmodule

