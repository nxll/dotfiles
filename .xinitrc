#!/bin/sh
#
#          ██          ██   ██                 
#         ░░          ░░   ░██                 
#  ██   ██ ██ ███████  ██ ██████ ██████  █████ 
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░ 
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████ 
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░  
#

setxkbmap -layout gb &
xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources &
xset s off -dpms &
xset fp+ /usr/share/fonts/artwiz-fonts &
xset fp+ /usr/share/fonts/termsyn &
xset fp+ /usr/share/fonts/jmk &
xset fp+ /usr/share/fonts/tangerine &
xset fp rehash &
compton --config ~/.compton.conf &
pulseaudio --start &
thunar --daemon &
urxvtd -q -o -f &
mpd &
#sxhkd & 

#exec bspwm
exec herbstluftwm
