#                 ██                    
#                ░██                    
#  ██████  ██████░██      ██████  █████ 
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░ 
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████ 
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░  
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

export EDITOR="vim"
export BROWSER="firefox"

# HISTORY
HISTFILE=~/.zhist
HISTSIZE=1000
SAVEHIST=1000

# PROMPT
PROMPT="%F{2}≠ %F{7}%n%F{1}╾╼%F{6}[%F{7}%1~%F{6}]%F{2};%f"
#PROMPT="%F{2}≠%f "

# NO DUPES
setopt HIST_IGNORE_DUPS

# SCRIPTS
export PATH=$HOME/bin:$PATH

# ALIAS
alias ..='cd ..'
alias q='exit'
alias c='clear'
alias ls='ls -alhF'
alias mv='mv -v'
alias cp='cp -v'
alias df='df -h'
alias ps='ps -ef'
alias bin='cd ~/bin'
alias documents='cd ~/documents'
alias downloads='cd ~/downloads'
alias images='cd ~/images'
alias music='cd ~/music'
alias videos='cd ~/videos'

# PACMAN
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias update='sudo pacman -Syu'
alias search='sudo pacman -Ss'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# OTHER
alias todo='echo;cat $HOME/.todo;echo'
alias addtodo='echo "$(tput setaf 235)≠ $(tput setaf 4)$(date "+%d/%m")$(tput sgr0)$1" >> $HOME/.todo'
alias cleantodo='rm $HOME/.todo; touch $HOME/.todo'
alias ttyload='ttyload -i 1'
alias vol='pulsemixer'
alias qr='qrencode -t UTF8'
alias scr='scrot ~/images/screenshots/%d%b2k%y-%H%M%S.png'
#alias rec='ffmpeg -f x11grab -s 1280x800 -an -loglevel quiet -i $DISPLAY -b:v 5M -y'
#alias rec='ffmpeg -f x11grab -an -r 16 -video_size 1366x768 -i $DISPLAY -b:V 5M -vcodec huffyuv -y'
