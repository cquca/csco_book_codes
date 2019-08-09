$s0=32;
top:cout<<"Input a value from 1 to 3";
cin>>$v0;
if($v0==1)
$s0=$s0<<1;
else if($v0==2)
$s0=$s0<<2;
else if($v0==3)
$s0=$s0<<3;
else goto top;
cout<<$s0;