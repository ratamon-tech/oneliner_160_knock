# 2,3列目を足す
awk -F ',' '{print $0,$2+$3}' table.csv

echo '----------'

# 縦に集計
awk -F ',' '{print;a+=$2;b+=$3}END{print "total",a,b}' table.csv

echo '----------'

# 1列目をキーにして連想配列で合計値を出す
awk -F ',' '{print;x[$1]+=$2;y[$1]+=$3}END{for(k in x){print k"合計",x[k],y[k]}}' table.csv

# 5列目に2,3列目を足した4列目の四捨五入した値を出す
awk -F ',' '{print $0,$2+$3}' table.csv | ruby -ane '$F[5]=$F[4].to_f.round(1);puts $F.join(" ")'
