module edge_detect_gate(
input wire clk,reset,
input wire level,
output wire tick);

reg delay_reg;
always @(posedge clk,posedge reset)
begin
if(reset)
delay_reg<=1'b0;
else
delay_reg<=level;
end
assign tick=~delay_reg&level;
endmodule