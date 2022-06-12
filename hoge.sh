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
printf '\033[31m%s\033[m\n' 'RED'
printf '\033[32m%s\033[m\n' 'green'
printf '\033[33m%s\033[m\n' 'yellow'
