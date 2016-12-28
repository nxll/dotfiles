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
$HOME/bin/ws &
mpd &
compton --config ~/.compton.conf &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
pulseaudio --start &
dunst &
udiskie -2 &
$HOME/bin/bar &

# WM
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
