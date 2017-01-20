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
export RHISK_COMM="zenbu"

source $HOME/.ioup_token
source $HOME/.urxvt/completions/rhisk-comp.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#SCRIPTS
export PATH=$HOME/bin:$PATH

#HISTORY
HISTFILE=$HOME/.zhist
HISTSIZE=1000
SAVEHIST=1000
#NO DUPES
setopt HIST_IGNORE_DUPS

#PROMPT
PROMPT="%K{8}%F{11} » %K{0}%F{6} [%F{7}%1~%F{6}]%F{2};;%f%k "

#ZSH SYNTAX HIGHTLIGHTING
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red.bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=white,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=none
ZSH_HIGHLIGHT_STYLES[builtin]=fg=none
ZSH_HIGHLIGHT_STYLES[function]=fg=white
ZSH_HIGHLIGHT_STYLES[command]=fg=none
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=blue
ZSH_HIGHLIGHT_STYLES[path]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=white
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=white
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=white
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[assign]=none

#ALIAS
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

#PACMAN
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias update='sudo pacman -Syu'
alias search='sudo pacman -Ss'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pkgcnt='pacman -Q | wc -l'

#OTHER
alias v='vim'
alias mktar='tar -cvzf'
alias scr='screenshot'
alias vol='pulsemixer'
alias rsync='rsync -rtv'
alias rec='yaxg -w -D 2 -f $HOME/videos/screencasts/%d%b2k%y-%H%M%S'
alias highlight='highlight --out-format=ansi'
alias qr='qrencode -t UTF8'

#TODO
alias todo='echo;echo "$(print " ")$(tput setaf 8)≠ $(tput setaf 2)TODO$(tput sgr0)";cat $HOME/.todo;echo'
alias atodo='echo "$(print " ")$(tput setaf 8)≠ $(tput setaf 4)$(date "+%d/%m")$(tput sgr0)$1" >> $HOME/.todo'
alias rtodo='sed -i '$d' $HOME/.todo'
alias ctodo='rm $HOME/.todo; touch $HOME/.todo'

#FUNCTIONS
ioup_clear()
{
	for file in `ioup -l | awk '{print $1}'`; do
		ioup -r $file
	done
}

ix()
{
	cat "$1" | curl -F 'f:1=<-' -F 'read:1=2' ix.io 
}

mtp-mount()
{
	gvfs-mount -li | awk -F= '{if(index($2,"mtp") == 1)system("gvfs-mount "$2)}'
}

separator()
{
	for ((x = 0; x < $(tput cols); x++)); do
		printf %s "$(tput setaf 0)█$(tput sgr0)"
	done
}
