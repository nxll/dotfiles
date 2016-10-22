#!/bin/sh
#
#            /$$           /$$   /$$                        
#           |__/          |__/  | $$                        
#  /$$   /$$ /$$ /$$$$$$$  /$$ /$$$$$$    /$$$$$$   /$$$$$$$
# |  $$ /$$/| $$| $$__  $$| $$|_  $$_/   /$$__  $$ /$$_____/
#  \  $$$$/ | $$| $$  \ $$| $$  | $$    | $$  \__/| $$      
#   >$$  $$ | $$| $$  | $$| $$  | $$ /$$| $$      | $$      
#  /$$/\  $$| $$| $$  | $$| $$  |  $$$$/| $$      |  $$$$$$$
# |__/  \__/|__/|__/  |__/|__/   \___/  |__/       \_______/
#
nitrogen --restore &
setxkbmap -layout gb &
xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources &
pulseaudio --start &
xfce4-power-manager &
udiskie -2 &
dunst &
compton --config ~/.compton.conf &
thunar --daemon &
urxvtd -q -o -f &
mpd &
urxvt &

#exec herbstluftwm
exec 2bwm
