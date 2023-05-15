#!/bin/bash

COLOR=./colors.sh
chmod +x colors.sh

echo $($COLOR $1 $2) "HOSTNAME = $($COLOR $3 $4) $(hostname)"
echo $($COLOR $1 $2) "TIMEZONE = $($COLOR $3 $4) $(cat /etc/timezone) UTC $(date +"%Z")"
echo $($COLOR $1 $2) "USER = $($COLOR $3 $4) $(whoami)"
echo $($COLOR $1 $2) "OS = $($COLOR $3 $4) $(cat /etc/issue | awk '{printf("%s %s %s", $1, $2, $3);}')"
echo $($COLOR $1 $2) "DATE = $($COLOR $3 $4) $(date +"%d %b %Y %H:%M:%S")"
echo $($COLOR $1 $2) "UPTIME = $($COLOR $3 $4) $(uptime -p | awk '{print $2" "$3" "$4" "$5}')"
echo $($COLOR $1 $2) "UPTIME_SEC = $($COLOR $3 $4) $(cat /proc/uptime | awk '{print $1" sec"}')"
echo $($COLOR $1 $2) "IP = $($COLOR $3 $4) $(hostname -I)"
echo $($COLOR $1 $2) "MASK = $($COLOR $3 $4) $(route -n | awk 'NR==4{print $3}')"
echo $($COLOR $1 $2) "GATEWAY = $($COLOR $3 $4) $(route -n | awk 'NR==3{print $2}')"
echo $($COLOR $1 $2) "RAM_TOTAL = $($COLOR $3 $4) $(free -m | awk 'NR==2{printf "%.3f GB", $2/1024}')"
echo $($COLOR $1 $2) "RAM_USED = $($COLOR $3 $4) $(free -m | awk 'NR==2{printf "%.3f GB", $3/1024}')"
echo $($COLOR $1 $2) "RAM_FREE = $($COLOR $3 $4) $(free -m | awk 'NR==2{printf "%.3f GB", $4/1024}')"
echo $($COLOR $1 $2) "SPACE_ROOT = $($COLOR $3 $4) $(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$2/1024)}')"
echo $($COLOR $1 $2) "SPACE_ROOT_USER = $($COLOR $3 $4) $(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$3/1024)}')"
echo $($COLOR $1 $2) "SPACE_ROOT_USER = $($COLOR $3 $4) $(df -m /root/ | awk '/\/$/ {printf("%.2f MB",$4/1024)}')"