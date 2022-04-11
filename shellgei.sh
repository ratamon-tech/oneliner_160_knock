# ファイルを探す
find shellgei160/ | grep files

# データの連結
readonly local MASTER="shellgei160/qdata/practice/master.txt"
readonly local TRANSACTION="shellgei160/qdata/practice/transaction.txt"

# マスター分のみ
join ${MASTER} ${TRANSACTION}
