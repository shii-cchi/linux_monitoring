#!/bin/bash

source ./color.conf

if [ $# -ne 0 ]; then
    echo "Ошибка. Ввод параметров не требуется."
else
    default=0

    if ! [[ $column1_background =~ ^[1-6]?$ ]] || ! [[ $column2_background =~ ^[1-6]?$ ]] || ! [[ $column1_font_color =~ ^[1-6]?$ ]] || ! [[ $column2_font_color =~ ^[1-6]?$ ]] ||
    [[ -z "$column1_background" ]] || [[ -z "$column2_background" ]] || [[ -z "$column1_font_color" ]] || [[ -z "$column2_font_color" ]]; then
        column1_background=5
        column2_background=5
        column1_font_color=1
        column2_font_color=1
        default=1
    fi

    if [ "$column1_background" -eq "$column1_font_color" ] || [ "$column2_background" -eq "$column2_font_color" ]; then
        echo "Ошибка. Цвета шрифта и фона одного столбца не должны совпадать."
        exit 1
    fi

    bash script.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color" "$default"
    chmod +x script.sh
fi