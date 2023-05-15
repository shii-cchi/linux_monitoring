#!/bin/bash

if [ $# -ne 4 ]; then
    echo "Ошибка. Введите 4 параметра."
else
    for var in $1 $2 $3 $4; do
        if [[ ! "123456" =~ "$var" ]]; then
            echo "Ошибка. Значения параметров должны быть от 1 до 6."
            exit 1
        fi
    done

    if [ "$1" -eq "$2" ] || [ "$3" -eq "$4" ]; then
        echo "Ошибка. Цвета шрифта и фона одного столбца не должны совпадать."
        exit 1
    fi

    bash script.sh
    chmod +x script.sh
fi