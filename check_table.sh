# 2,3列目を足す
awk -F ',' '{print $0,$2+$3}' table.csv

echo '----------'

# 縦に集計
awk -F ',' '{print;a+=$2;b+=$3}END{print "total",a,b}' table.csv

echo '----------'

# 1列目をキーにして連想配列で合計値を出す
awk -F ',' '{print;x[$1]+=$2;y[$1]+=$3}END{for(k in x){print k"合計",x[k],y[k]}}' table.csv

echo '----------'

# 5列目に2,3列目を足した4列目の合計値を出す
awk -F ',' '{print $0,$2+$3}' table.csv | ruby -ane '$F[4]=$F[3];puts $F.join(" ")'

echo '----------'
# BSD版シェルで改行を操作
# GNU版でも同じ出力結果にはなる
sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\t/g' table.csv # a,0.02,5        b,-0.65,3       b,10.05,-30     a,0.22,-30
