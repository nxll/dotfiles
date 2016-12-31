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
export BROWSER="inox"
export RHISK_COMM="zenbu"

source $HOME/.urxvt/completions/rhisk-comp.zsh
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh

# SCRIPTS
export PATH=$HOME/bin:$PATH

# HISTORY
HISTFILE=$HOME/.zhist
HISTSIZE=1000
SAVEHIST=1000

# PROMPT
PROMPT="%K{8}%F{11} » %K{0}%F{6} [%F{7}%1~%F{6}]%F{2};%f%k "
#PROMPT="%F{2}≠ %F{7}%n%F{1}╾╼%F{6}[%F{7}%1~%F{6}]%F{2};%f"
#PROMPT="%F{2}≠%f "

# NO DUPES
setopt HIST_IGNORE_DUPS

# ALIAS
alias ..='cd ..'
alias q='exit'
alias c='clear'
alias ls='ls -alhF'
alias mv='mv -v'
alias cp='cp -v'
alias df='df -h'
alias ps='ps -ef'
alias bin='cd $HOME/bin'
alias documents='cd $HOME/documents'
alias downloads='cd $HOME/downloads'
alias images='cd $HOME/images'
alias music='cd $HOME/music'
alias videos='cd $HOME/videos'

# PACMAN
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias update='sudo pacman -Syu'
alias search='sudo pacman -Ss'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pkgcnt='pacman -Q | wc -l'

# OTHER
alias v='vim'
alias todo='separator;echo;echo "$(print " ")$(tput setaf 8)≠ $(tput setaf 2)TODO$(tput sgr0)";cat $HOME/.todo;echo;separator'
alias atodo='echo "$(print " ")$(tput setaf 8)≠ $(tput setaf 4)$(date "+%d/%m")$(tput sgr0)$1" >> $HOME/.todo'
alias rtodo='sed -i '$d' $HOME/.todo'
alias ctodo='rm $HOME/.todo; touch $HOME/.todo'
alias rec='yaxg -w -D 2 -f $HOME/videos/screencasts/%d%b2k%y-%H%M%S'
alias ttyload='ttyload -i 1'
alias vol='pulsemixer'
alias qr='qrencode -t UTF8'
alias scr='scrot $HOME/images/screenshots/%d%b2k%y-%H%M%S.png'
#alias rec='ffmpeg -f x11grab -s 1280x800 -an -loglevel quiet -i $DISPLAY -b:v 5M -y'
#alias rec='ffmpeg -f x11grab -an -r 16 -video_size 1366x768 -i $DISPLAY -b:V 5M -vcodec huffyuv -y'
