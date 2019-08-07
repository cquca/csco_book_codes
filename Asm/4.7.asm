$s0=32;

top: cout <<"Input a value from 1 to 3";

cin >> $v0;
switch ($v0)

{case(1): {$s0=$s0 <<1; break;}

case(2): {$s0=$s0 <<2; break;}
case(3): {$so=$s0 <<3; break;}

default: goto top; }
cout << $s0;