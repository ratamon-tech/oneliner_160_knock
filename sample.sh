# 実行は[. sample.sh]

# 使ってるシェルの確認
echo $0

# 算術式(小数は扱えない)
echo $((1 + 1)) # 2
echo $((2 ** 2)) # 4
echo $((3 / 2)) # 1

# パイプで渡すパターン
echo '1 + 1' | sed 's/.*/echo $((&))/' | bash
echo '1 + 1' | sed 's/^/puts /' | ruby
echo '1 + 1' | sed 's/.*/print(&)/' | python

# xargsで並べる個数を制御
seq 10 | xargs -n5

# 文字置き換え
seq 5 10 | xargs -I @ echo 'hoge @'

# ランダム数(0~32767)出力
echo $RANDOM
echo ${RANDOM}

# 最後に出力された数の桁数で0埋め
seq -w 10

# for文の例
seq 5 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}' | tac # tacは環境依存

# フォーマット文字列
printf "%*s\n" 5 x 4 x 3 x 2 x 1 x

# 今日の日付と昨日の日付
date '+%Y/%m/%d'
date '+%Y/%m/%d' -d 'yesterday' #BSD版だとだめ

# BSD版用
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"

# 形式
date '+%F' # yyyy-mm-dd
date '+%D' # mm/dd/yy

# 指定日付から曜日付きで10日分
seq 0 10 | xargs -I@ date '+%F %a' -d '2022-04-25 @day'

# ファイル形式確認
file README.md

# grepで縦に並べて出力
echo 'aaaaaa' | grep -o 'a'

# grepで縦に並べてそれを数える
echo 'aaaaaa' | grep -o 'a' | grep -c 'a'
echo 'aaaaaa' | grep -o 'a' | uniq -c
