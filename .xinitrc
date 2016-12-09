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
hsetroot -fill $HOME/images/wallpapers/greybark.png
compton --config ~/.compton.conf &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
pulseaudio --start &
dunst &
udiskie -2 &
xfce4-power-manager &
$HOME/bin/bar &

# WM
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
