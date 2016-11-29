#!/bin/sh
#          ██          ██   ██                  
#         ░░          ░░   ░██                  
#  ██   ██ ██ ███████  ██ ██████ ██████  █████  
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██ 
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░  
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██ 
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████  
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░   
# EXEC
#sxhkd &
xrdb -load ~/.Xresources &
hsetroot -fill ~/images/wallpapers/mountains-clouds-forest-trees.jpg
setxkbmap -layout gb &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
pulseaudio --start &
dunst &
mpd &
udiskie -2 &
xfce4-power-manager &
#compton --config ~/.compton.conf &
#compton -cCb -t-5 -l-5 -r4 -o.4
thunar --daemon &

# WM
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
