#!/bin/bash

source ./color.conf

if [ $# -ne 0 ]; then
    echo "Ошибка. Ввод параметров не требуется."
else
    def_col1_bg=0
    def_col2_bg=0
    def_col1_font=0
    def_col2_font=0

    if ! [[ $column1_background =~ ^[1-6]?$ ]]; then
        column1_background=5
        def_col1_bg=1
    fi

    if ! [[ $column2_background =~ ^[1-6]?$ ]]; then
        column2_background=5
        def_col2_bg=1
    fi

    if ! [[ $column1_font_color =~ ^[1-6]?$ ]]; then
        column1_font_color=6
        def_col1_font=1
    fi

    if ! [[ $column2_font_color =~ ^[1-6]?$ ]]; then
        column2_font_color=6
        def_col2_font=1
    fi

    if [ "$column1_background" -eq "$column1_font_color" ] || [ "$column2_background" -eq "$column2_font_color" ]; then
        echo "Ошибка. Цвета шрифта и фона одного столбца не должны совпадать."
        exit 1
    fi

    bash script.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color" "$def_col1_bg" "$def_col2_bg" "$def_col1_font" "$def_col2_font"
    chmod +x script.sh
fi