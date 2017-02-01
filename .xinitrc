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
#sxhkd &
xrdb -load $HOME/.Xresources &
tt -r &
#hsetroot -fill $HOME/images/wallpapers/frost.png &
udiskie -2 &
mpd &
urxvtd -q -o -f &
pulseaudio --start &
xsetroot -cursor_name left_ptr &
compton --config $HOME/.compton.conf &
dunst &
bar &
rnbw &
#workspace -i &

#EXEC
#exec herbstluftwm
#exec windowchef -c $HOME/.config/windowchef/windowchefrc
exec 2bwm
