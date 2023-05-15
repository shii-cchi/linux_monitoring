#!/bin/bash

if [ $# -ne 0 ]; then
    echo "Ошибка. Ввод параметров не требуется."
else
    bash script.sh
    chmod +x script.sh

    read -p "Сохранить данные в файл? (Y/N): " input

    if [[ "Yy" =~ "$input" && ! -z "$input" ]]; then
        file="$(date +"%d_%m_%y_%H_%M_%S").status"
        bash script.sh > $file
        chmod +x script.sh
    fi
fi