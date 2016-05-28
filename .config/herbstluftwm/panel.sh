#!/bin/sh
# For use with herbstluftwm
# Deps: herbstluftwm, lemonbar, iw, mpc, xtitle, pamixer (if using pulseaudio) 

pkill lemonbar

monitor=${1:-0}
herbstclient pad $monitor 16;

fg=ffffff
altfg=808080
bg=151515
altbg=202020
col1=252525
col2=aadb0f

font="-benis-lemon-abunai-abunai-medium-r-normal--10-110-75-75-m-50-iso10646-1"
glyphs="-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1"

height=16
borderwidth=0

muslength=50

clk()
{
    echo -n "%{B#$col1}  $(date "+%H:%M ")%{B-}"
}

dat()
{
    echo -n "%{B#$altbg}  $(date "+%B %d " | tr [A-Z] [a-z])%{B-}"
}

mus()
{
    music=$(mpc current -f "%artist% %{F#$altbg}≠%{F-} %title%")

    playing=$(mpc status | sed -n 2p | awk '{print $1}')
    if [ $playing = "[playing]" ] ; then
        symbol="%{B#$altbg}  %{B-}"
    elif [ $playing = "[paused]" ] ; then
        symbol="%{B#$altbg}  %{B-}"
    fi

    echo -n "${symbol} ${music}"
}

wchat()
{   
     symbol="%{B#$altbg}%{F#$fg}  %{F-}%{B-}"
    
    hilight=$(
    if grep -q "≠" ~/.weechat/highlights.txt ; then
       cat ~/.weechat/highlights.txt
    else
       echo -n "none"
    fi)
   
    echo -n "${symbol} ${hilight}"
}

win()
{
    echo -n "%{B#$altbg}%{F#$fg}  %{F-}%{B-}"
    echo -n "%{B#$col1}%{F#$fg} $(xtitle) %{F-}%{B-}"
}

vol()
{
    percent=$(pamixer --get-volume)

    echo -n "%{B#$altbg}  %{B-} ${percent}%"
}

#bat()
#{
#    percent=$(cat /sys/class/power_supply/BAT0/capacity)
#    status=$(cat /sys/class/power_supply/BAT0/status)
#
#    fullthing="${symbol} ${percent}"
#
#    if test $status = "Charging"; then
#        symbol=""
#        echo -n "%{B#$altbg} ${symbol} %{B-} ${percent}%"
#    elif test $status = "Full"; then
#        symbol=""
#        echo -n "%{B#$altbg} ${symbol} %{B-} ${percent}%"
#    else
#        if test $percent -gt 66; then
#            symbol=""
#            echo -n "%{B#$altbg} ${symbol} %{B-} ${percent}%"
#        elif test $percent -gt 34; then
#            symbol=""
#            echo -n "%{B#$altbg} ${symbol} %{B-} ${percent}%"
#        else
#		symbol=""
#            echo -n "%{B#$altbg} ${symbol} %{B-} ${percent}%"
#        fi
#    fi
#}

net()
{
   symbol="%{B#$altbg}  %{B-}"
   wifi_ssid=$(
   if [ grep -q "Not connected."] ; then
      echo "No AP"
   else
      iw wlp8s5 link | grep 'SSID' | sed 's/SSID: //' | sed 's/\t//'
   fi)

   echo -n "${symbol} ${wifi_ssid}"
}

wrk()
{
    TAGS=( $(herbstclient tag_status $monitor) )
    unset TAGS[${#TAGS[@]}]
    visible=true

    while true ; do
        echo -n "%{l}"
        for i in "${TAGS[@]}" ; do
            case ${i:0:1} in
                '#') # current tag
                    echo -n "%{F#$bg}%{B#$col2}"
                    ;;
                '+') # active on other monitor
                    echo -n "%{B#$altbg}"
                    ;;
                ':')
                    echo -n "%{F-}%{B#$altbg}"
                    ;;
                '!') # urgent tag
                    echo -n "%{B#$fg}%"
                    ;;
                *)
                    echo -n "%{B-}%{F-}"
                    ;;
            esac
            echo -n " ${i:1} "
        done
        echo ""
        # wait for next event
        read line || break
        cmd=( $line ) 
        # find out event origin
        case "${cmd[0]}" in
            tag*)
                TAGS=( $(herbstclient tag_status $monitor) )
                unset TAGS[${#TAGS[@]}]
                ;;
            quit_panel)
                exit
                ;;
            reload)
                exit
                ;;
        esac
    done
}

floatbars()
{
 
    # add all the things
    while true; do
        buf="$(wrk)$(win)%{r}$(wchat) $(mus) $(net) $(vol) $(dat)$(clk)" 
        echo $buf
        sleep 0.1
    done | lemonbar -f $glyphs \
        -f $font \
        -F \#$fg \
        -B \#$bg \
        -R \#$fg \
        -u 3 \
        -r $borderwidth \
        -g 1920x$height+0+0 | sh &
}

topbar()
{
    while true; do
        buf="$(wrk)$(win)%{r}$(wchat) $(mus) $(net) $(vol) $(dat)$(clk)"
        echo "        ${buf}        "
        sleep 0.1
    done | lemonbar -f $glyphs \
        -f $font \
        -F \#$fg \
        -B \#$bg \
        -R \#$fg \
        -u 3 \
        -g x$height | sh &
}

floatbars
