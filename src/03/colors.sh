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

case "$1"  in
1) echo -en $BG_WHITE_COLOR;;
2) echo -en $BG_RED_COLOR;;
3) echo -en $BG_GREEN_COLOR;;
4) echo -en $BG_BLUE_COLOR;;
5) echo -en $BG_PURPLE_COLOR;;
6) echo -en $BG_BLACK_COLOR;;
*) echo -en $DEFAULT;;
esac

case "$2"  in
1) echo -en $FONT_WHITE_COLOR;;
2) echo -en $FONT_RED_COLOR;;
3) echo -en $FONT_GREEN_COLOR;;
4) echo -en $FONT_BLUE_COLOR;;
5) echo -en $FONT_PURPLE_COLOR;;
6) echo -en $FONT_BLACK_COLOR;;
*) echo -en $DEFAULT;;
esac
