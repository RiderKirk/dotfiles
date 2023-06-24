# use capslock as control
setxkbmap -option ctrl:nocaps

# start compositor
picom &

# hide cursor
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork

# start qtile
qtile start
