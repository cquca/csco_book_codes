

module edge_detect_mealy
{
input wire clk, reset,

input wire level, 
output reg tick
}
//符号状态声明
local param zero=1'b0,
one=1'b1;

reg  state_reg, state_next;//状态寄存器
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

zero:begin

if (level)begin


tick = 1'b1;
state_next=one;


end
end
one:

if (~level)
state_next=zero;
default: state_next=zero;

endcase

end

endmodule

