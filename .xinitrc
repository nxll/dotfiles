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
#$HOME/bin/ws -wallpaper &
$HOME/bin/tt $HOME/images/tiles/gplay.png &
mpd &
compton --config ~/.compton.conf &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
pulseaudio --start &
dunst &
$HOME/bin/bar &

# WM
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
