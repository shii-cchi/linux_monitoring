#!/bin/bash

DEFAULT='\033[0m'

BG_WHITE_COLOR='\033[47m'
BG_RED_COLOR='\033[41m'
BG_GREEN_COLOR='\033[42m'
BG_BLUE_COLOR='\033[46m'
BG_PURPLE_COLOR='\033[45m'
BG_BLACK_COLOR='\033[40m'

FONT_WHITE_COLOR='\033[37m'
FONT_RED_COLOR='\033[31m'
FONT_GREEN_COLOR='\033[32m'
FONT_BLUE_COLOR='\033[36m'
FONT_PURPLE_COLOR='\033[35m'
FONT_BLACK_COLOR='\033[30m'

function get_bg_color {
    bg_color=$DEFAULT

    case "$1"  in
        1) bg_color=$BG_WHITE_COLOR;;
        2) bg_color=$BG_RED_COLOR;;
        3) bg_color=$BG_GREEN_COLOR;;
        4) bg_color=$BG_BLUE_COLOR;;
        5) bg_color=$BG_PURPLE_COLOR;;
        6) bg_color=$BG_BLACK_COLOR;;
    esac

    echo $bg_color
}

function get_font_color {
    font_color=$DEFAULT

    case "$1"  in
        1) font_color=$FONT_WHITE_COLOR;;
        2) font_color=$FONT_RED_COLOR;;
        3) font_color=$FONT_GREEN_COLOR;;
        4) font_color=$FONT_BLUE_COLOR;;
        5) font_color=$FONT_PURPLE_COLOR;;
        6) font_color=$FONT_BLACK_COLOR;;
    esac

    echo $font_color
}

function get_color_name {
    color_name=""
    case "$1"  in
        1) color_name="white";;
        2) color_name="red";;
        3) color_name="green";;
        4) color_name="blue";;
        5) color_name="purple";;
        6) color_name="black";;
    esac

    echo $color_name
}

function print_color_name {
    if [[ "$2" -eq 0 ]]; then
        printf ""$1" ($(get_color_name "$1"))"
    else
        printf "default ($(get_color_name "$1"))"
    fi
}