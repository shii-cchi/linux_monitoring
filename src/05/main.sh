#!/bin/bash

time_start=$(date +%s)

if [ $# -ne 1 ]; then
    if [ $# -eq 0 ]; then
        echo "Ошибка. Введите 1 параметр."
    else
        echo "Ошибка. Вы ввели слишком много параметров. Введите 1 параметр."
    fi
else
    if ! [ -d "$1" ]; then
        echo "Ошибка. Нет такой директории."
    else
        if [[ "${1: -1}" != "/" ]]; then
            echo "Ошибка. Параметр должен заканчиваться знаком '/'."
        else
            bash script.sh $1 $time_start
            chmod +x script.sh
        fi
    fi
fi