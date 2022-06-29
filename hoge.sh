# 今日日付YYYYmmdd
date '+%Y%m%d'
# YYmmdd
date '+%y%m%d'
# YYYY-mm-dd
date '+%Y-%m-%d'

echo `date`
echo `date '+%Y%m%d'`
echo `date '+%Y-%m-%d'`
# 文字と背景の色の色見本を表示する
# for fore in `seq 30 37`; do printf "\e[${fore}m \\\e[${fore}m \e[m\n"; for mode in 1 4 5; do printf "\e[${fore};${mode}m \\\e[${fore};${mode}m \e[m"; for back in `seq 40 47`; do printf "\e[${fore};${back};${mode}m \\\e[${fore};${back};${mode}m \e[m"; done; echo; done; echo; done; printf " \\\e[m\n"
# echo -e "\e[31mhoge\e[m" # これは赤くならない
printf '\033[30m%s\033[m\n' 'glay'
printf '\033[31m%s\033[m\n' 'RED'
printf '\033[32m%s\033[m\n' 'green'
printf '\033[33m%s\033[m\n' 'yellow'
printf '\033[34m%s\033[m\n' 'blue'
printf '\033[35m%s\033[m\n' 'purple'
printf '\033[36m%s\033[m\n' 'skyblue'
printf '\033[37m%s\033[m\n' 'white'
printf '\thoge\nfuga'
echo '---'
printf '\033[31m%s\033[m\n' 'HOGE'
printf '\x1b[31m%s\033[m\n' 'HOGE'
printf '\e[31m%s\033[m\n' 'HOGE'

ESC=$(printf '\033')
printf "${ESC}[31m%s${ESC}[m\n" 'fuga'
GREEN='[32m%s'
printf  "${ESC}${GREEN}${ESC}[m\n" 'piyo'
printf  "${ESC}${GREEN}${ESC}[m" 'piyo' #　最後に改行がない

echo ''

BN='[m\n'
printf  "${ESC}${GREEN}${ESC}${BN}" 'piyo'

echo $SHELL

sudo -V

echo {a,b,c}

# zsh
date -v -1d
date -v +1d
date -v +1y -v -1m
date '+%Y%m%d%H%M%s'
date '+%Y%m%d%H%M%S'

`echo $SHELL` --version