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

# ランダム数(0~32767)出力
echo $RANDOM
echo ${RANDOM}
