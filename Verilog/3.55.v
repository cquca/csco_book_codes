module fsm_eg_mult_seg
(
input wire clk, reset, 
input wire a, b,
output wire y0, y1
);
//符号状态声明

localparam [1: 0] s0=2'b00,

s1=2'b01,
s2=2'b10;

//信号声明

reg [1: 0] state_reg, state_next;
//状态寄存器
always@ (posedge clk, posedge reset)
begin

if (reset)

state_reg <= s0;
else

state_reg <= state_next; 
end

//下一状态逻辑
always @*

case (state_reg)

s0: begin if (a)
begin

if(b)

state_next=s2;
else

state_next=s1;

end

else

state_next = s0;
end
s1: begin

if (a) 

state_next = s0;

else

state_next=s1;
end

s2： state next=s0;

default: state_next=s0

endcase

end

//摩尔输出逻辑

assign yl =(state_reg==s0)||(state_reg = s1);
//米里输出逻辑

assign y0 =(state_ reg== s0)&a&b;

endmodule