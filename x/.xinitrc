#!/bin/sh

# use capslock as control
setxkbmap -option ctrl:nocaps
setxkbmap -option altwin:swap_alt_win

# start compositor
picom &

# hide cursor
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork

# start qtile
qtile start
