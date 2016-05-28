#!/bin/bash

ICON=$HOME/bin/lock/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -blur 0x1 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
