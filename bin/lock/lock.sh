#!/bin/bash
#
#  /$$                     /$$      
# | $$                    | $$      
# | $$  /$$$$$$   /$$$$$$$| $$   /$$
# | $$ /$$__  $$ /$$_____/| $$  /$$/
# | $$| $$  \ $$| $$      | $$$$$$/ 
# | $$| $$  | $$| $$      | $$_  $$ 
# | $$|  $$$$$$/|  $$$$$$$| $$ \  $$
# |__/ \______/  \_______/|__/  \__/
#
ICON=$HOME/bin/lock/goathead_300px.png
TMPBG=/tmp/screen.png

scrot $TMPBG
convert $TMPBG -blur 0x3 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
rm $TMPBG
