#!/bin/sh
#          ██          ██   ██                  
#         ░░          ░░   ░██                  
#  ██   ██ ██ ███████  ██ ██████ ██████  █████  
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██ 
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░  
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██ 
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████  
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░   

setxkbmap -layout gb &
xrdb -load $HOME/.Xresources &
xsetroot -cursor_name left_ptr &
tt -r &
compton --config $HOME/.compton.conf &
dunst &
rnbw &
urxvtd -q -o -f &
pulseaudio --start &
mpd &
udiskie -2 &
unclutter &
#bar &

SESSION=2bwm
case "$1" in
	hlwm) exec herbstluftwm ;;
	2bwm) exec 2bwm ;;
	wndwchf)
		sxhkd &
		workspace -i & 
		exec windowchef -c $HOME/.config/windowchef/windowchefrc
		;;
	*) exec $SESSION ;;
esac
