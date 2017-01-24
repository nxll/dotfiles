#!/bin/sh
#          ██          ██   ██                  
#         ░░          ░░   ░██                  
#  ██   ██ ██ ███████  ██ ██████ ██████  █████  
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██ 
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░  
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██ 
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████  
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░   
#EXEC
setxkbmap -layout gb &
xrdb -load $HOME/.Xresources &
#tt -r &
hsetroot -fill $HOME/images/wallpapers/frost.png &
udiskie -2 &
mpd &
urxvtd -q -o -f &
pulseaudio --start &
xsetroot -cursor_name left_ptr &
compton --config $HOME/.compton.conf &
dunst &
bar &

#EXEC
#exec herbstluftwm
#exec openbox
#exec swm
exec 2bwm
