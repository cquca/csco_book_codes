reg clock6
parameter cycle=15;
always
begin
#(cycle/3) clock6=0;
#((cycle/3)*2) clock6=1;
end