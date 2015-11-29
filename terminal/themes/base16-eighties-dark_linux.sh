#!/bin/bash

color00="2d2d2d" # Base 00 - Black
color01="f2777a" # Base 08 - Red
color02="99cc99" # Base 0B - Green
color03="ffcc66" # Base 0A - Yellow
color04="6699cc" # Base 0D - Blue
color05="cc99cc" # Base 0E - Magenta
color06="66cccc" # Base 0C - Cyan
color07="d3d0c8" # Base 05 - White
color08="747369" # Base 03 - Bright Black
color09=$color01 # Base 08 - Bright Red
color10=$color02 # Base 0B - Bright Green
color11=$color03 # Base 0A - Bright Yellow
color12=$color04 # Base 0D - Bright Blue
color13=$color05 # Base 0E - Bright Magenta
color14=$color06 # Base 0C - Bright Cyan
color15="f2f0ec" # Base 07 - Bright White

echo -en "\e]P0${color00}"
echo -en "\e]P1${color01}"
echo -en "\e]P2${color02}"
echo -en "\e]P3${color03}"
echo -en "\e]P4${color04}"
echo -en "\e]P5${color05}"
echo -en "\e]P6${color06}"
echo -en "\e]P7${color07}"
echo -en "\e]P8${color08}"
echo -en "\e]P9${color09}"
echo -en "\e]PA${color10}"
echo -en "\e]PB${color11}"
echo -en "\e]PC${color12}"
echo -en "\e]PD${color13}"
echo -en "\e]PE${color14}"
echo -en "\e]PF${color15}"

## In Linux TTY we need to clear the screen so we don't see
## all the escape sequences get printed...
clear

## Tody up after ourselves
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
