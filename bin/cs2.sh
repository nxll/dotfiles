#!/bin/bash
# Original: http://frexx.de/xterm-256-notes/
#           http://frexx.de/xterm-256-notes/data/colortable16.sh
# Modified by Aaron Griffin
# and further by Kazuo Teramoto


FGNAMES=(' black ' '  red  ' ' green ' ' yellow' '  blue ' 'magenta' '  cyan ' ' white ')
BGNAMES=('DFT' 'BLK' 'RED' 'GRN' 'YEL' 'BLU' 'MAG' 'CYN' 'WHT')
echo "     ┌──────────────────────────────────────────────────────────────────────────┐"
for b in $(seq 0 8); do
    if [ "$b" -gt 0 ]; then
      bg=$(($b+39))
    fi

    echo -en "\033[0m ${BGNAMES[$b]} │ "
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
    done
    echo -en "\033[0m │"

    echo -en "\033[0m\n\033[0m     │ "
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
    done
    echo -en "\033[0m │"
	echo -e "\033[0m"
    	
  if [ "$b" -lt 8 ]; then
    echo "     ├──────────────────────────────────────────────────────────────────────────┤"
  fi
done
echo "     └──────────────────────────────────────────────────────────────────────────┘"
