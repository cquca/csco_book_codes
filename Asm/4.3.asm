$v0= 1;

While($al<$a2)do
{

$t1= mem [$a1]；
$t2= mem [$a2]；

if($t1 != $t2)go to break;
$al =$al+1;
$a2=$a2-1;
}
return;

break:

$v0=0;

return;