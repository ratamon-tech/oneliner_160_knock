# 2,3列目を足す
awk -F ',' '{print $0,$2+$3}' table.csv

echo '----------'

# 縦に集計
awk -F ',' '{print;a+=$2;b+=$3}END{print "total",a,b}' table.csv
