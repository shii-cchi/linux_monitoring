#!/bin/bash

source ./colors.sh

bg_color_1=$(get_bg_color "$1")
font_color_1=$(get_font_color "$2")
bg_color_2=$(get_bg_color "$3")
font_color_2=$(get_font_color "$4")
bg_def=$(get_bg_color 0)
font_def=$(get_font_color 0)

echo -e "${bg_color_1}${font_color_1}HOSTNAME = ${bg_color_2}${font_color_2}$(hostname)${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}TIMEZONE = ${bg_color_2}${font_color_2}$(cat /etc/timezone) UTC $(date +"%Z")${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}USER = ${bg_color_2}${font_color_2}$(whoami)${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}OS = ${bg_color_2}${font_color_2}$(cat /etc/issue | awk '{printf("%s %s %s", $1, $2, $3);}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}DATE = ${bg_color_2}${font_color_2}$(date +"%d %b %Y %H:%M:%S")${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}UPTIME = ${bg_color_2}${font_color_2}$(uptime -p | awk '{print $2" "$3" "$4" "$5}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}UPTIME_SEC = ${bg_color_2}${font_color_2}$(cat /proc/uptime | awk '{print $1" sec"}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}IP = ${bg_color_2}${font_color_2}$(hostname -I)${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}MASK = ${bg_color_2}${font_color_2}$(route -n | awk 'NR==4{print $3}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}GATEWAY = ${bg_color_2}${font_color_2}$(route -n | awk 'NR==3{print $2}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}RAM_TOTAL = ${bg_color_2}${font_color_2}$(free -m | awk 'NR==2{printf "%.3f GB", $2/1024}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}RAM_USED = ${bg_color_2}${font_color_2}$(free -m | awk 'NR==2{printf "%.3f GB", $3/1024}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}RAM_FREE = ${bg_color_2}${font_color_2}$(free -m | awk 'NR==2{printf "%.3f GB", $4/1024}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}SPACE_ROOT = ${bg_color_2}${font_color_2}$(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$2/1024)}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}SPACE_ROOT_USER = ${bg_color_2}${font_color_2}$(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$3/1024)}')${bg_def}${font_def}"
echo -e "${bg_color_1}${font_color_1}SPACE_ROOT_USER = ${bg_color_2}${font_color_2}$(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$4/1024)}')${bg_def}${font_def}"

printf "\nColumn 1 background = $(print_scheme "$1" "$5")\n"
printf "Column 1 font color = $(print_scheme "$2" "$6")\n"
printf "Column 2 background = $(print_scheme "$3" "$7")\n"
printf "Column 2 font color = $(print_scheme "$4" "$8")\n"