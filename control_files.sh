# 大量のファイルを扱う

# 事前準備:100個ファイル作成
## mkdir ./tmp
## cd ./tmp
## seq 100 | xargs -P2 touch    # -Pで並列処理

# ファイルの個数
find ./tmp/ | wc -l # カレントディレクトリの分1個多い
