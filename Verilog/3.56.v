module fsm_eg_2_seg
{
input wire clk, reset, 
input wire a, b ,
output reg y0, yi
};
//符号状态声明

localparam [1: 0] s0 =2'b00,
s1=2'b01,
s2=2'b10;

//信号声明



reg [1: 0] state_reg, state_next;//状态寄存器

always @(posedge clk, posedge reset)begin
if (reset)

state_reg<= s0;

else

state_reg<=state_next;

end

//下ー状态逻辑和输出逻辑

always@*

begin

state_next= state_reg;//默认输出：

y1=1'b0;

y0=1'b0;

case(state_reg)

s0: begin

y1=1'b1;

if (a)

begin

if (b)

begin

state_next = s2;
y0=1'b1;

end

else

state_next = sl;

end

end 
s1: begin

y1=1'b1;
if (a)

state_next= s0;

end

s2: state_next = s0;
default: state_next=s0;

endcase

end
endmodule