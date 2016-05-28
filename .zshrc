#                 ██                    
#                ░██                    
#  ██████  ██████░██      ██████  █████ 
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░ 
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████ 
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░  
#
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export EDITOR="vim"

zstyle :compinstall filename '/home/nxll/.zshrc'

autoload -Uz compinit
compinit

# Custom Scripts
export PATH=$PATH:$HOME/bin

# No duplicate history commands
setopt HIST_IGNORE_DUPS

PROMPT="%F{green}≠ %F{white}%n%F{red}╾╼%F{cyan}[%F{white}%1~%F{cyan}]%F{green};%f"
#PROMPT="%F{green}✖ %F{white}%n%F{red}╾╼%F{cyan}[%F{white}%B%1~%b%F{cyan}]%F{green};%f"

# Aliases
alias ..='cd ..'
alias q='exit'
alias c='clear'
alias ls='ls -al'
alias mv='mv --verbose'
alias bin='cd ~/bin'
alias documents='cd ~/documents'
alias downloads='cd ~/downloads'
alias images='cd ~/images'
alias music='cd ~/music'
alias videos='cd ~/videos'
alias wmfsconf='vim ~/.config/wmfsrc'

# Easier Pacman
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias update='sudo pacman -Syu'
alias cleanup='sudo pacman -Sc'
alias search='sudo pacman -Ss'

## Other shortcuts
#alias mocp='mocp -T blackwhite'  
alias i2p='~/.i2p/i2prouter'
alias gmail='python ~/bin/gmail'
alias ttyload='ttyload -i 1'
alias emacs='emacs -nw'
alias vol='pulsemixer'
alias skype='apulse32 skype'
alias scr='scrot ~/images/screenies/%d%b2k%y-%H%M%S.png'
alias scrnftch='screenfetch -p -a ~/images/nxllsf; echo ""'
#alias rec='ffmpeg -f x11grab -an -r 16 -video_size 1366x768 -i $DISPLAY -b:V 5M -vcodec huffyuv -y'
alias rec='ffmpeg -f x11grab -s 1366x768 -an -loglevel quiet -i $DISPLAY -b:v 5M -y'
