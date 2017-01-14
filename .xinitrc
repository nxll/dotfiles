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
setxkbmap -layout gb &
xrdb -load ~/.Xresources &
udiskie -2 &
mpd &
compton --config ~/.compton.conf &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
pulseaudio --start &
#$HOME/bin/ws -wallpaper &
$HOME/bin/tt -r &
dunst &
$HOME/bin/bar &

# WM
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
