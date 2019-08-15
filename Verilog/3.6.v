//连续赋值语句。out是线网，i1和i2也是线网
assign out= i1&i2;

//向量线网的连续赋值语句。addr是16位的向量线网
assign addr[15: 0]=addr1[15: 0]^ addr2[ 15: 0]

//拼接操作。赋值操作符左側是标量线网和向量线网的拼接
assign {c_out, sum[3: 0]}=a[3: 0] +b[3: 0] +c_in