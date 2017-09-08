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

LS_COLORS='di=31:fi=32:ln=36:pi=1;33:so=1;34:bd=1;35:cd=34:or=30:mi=30:ex=1;32'

#SCRIPTS
export PATH=$HOME/bin:$PATH

export EDITOR="vim"
export BROWSER="google-chrome-stable"
export RHISK_COMM="zenbu"
export LS_COLORS

source $HOME/.ioup_token
source $HOME/.zsh/completions/rhisk-comp.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#HISTORY
HISTFILE=$HOME/.zhist
HISTSIZE=1000
SAVEHIST=1000
#NO DUPES
setopt HIST_IGNORE_DUPS

#PROMPT
PROMPT="%K{8}%F{11} » %K{0}%F{6} [%F{7}%1~%F{6}]%F{2};;%f%k "

#ZSH SYNTAX HIGHTLIGHTING
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red.bold,standout
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=none
ZSH_HIGHLIGHT_STYLES[builtin]=fg=none
ZSH_HIGHLIGHT_STYLES[function]=fg=white
ZSH_HIGHLIGHT_STYLES[command]=fg=none
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=blue
ZSH_HIGHLIGHT_STYLES[path]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=yellow
ZSH_HIGHLIGHT_STYLES[path_approx]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=red,standout
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=red
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=red
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=white
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=green
ZSH_HIGHLIGHT_STYLES[assign]=fg=white,bold

#ALIAS
alias ..='cd ..'
alias q='exit'
alias c='clear'
alias ls='ls -alhF --color=auto'
alias mv='mv -v'
alias cp='cp -v'
alias df='df -h'
alias ps='ps -ef'

#PACMAN
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias update='sudo pacman -Syu'
alias search='sudo pacman -Ss'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pkgcnt='pacman -Q | wc -l'

#PATHS
alias bin='cd $HOME/bin'
alias documents='cd $HOME/documents'
alias downloads='cd $HOME/downloads'
alias images='cd $HOME/images'
alias music='cd $HOME/music'
alias videos='cd $HOME/videos'

#OTHER
alias v='vim'
alias mktar='tar -cvzf'
alias scr='screenshot'
alias vol='pulsemixer'
alias vtop='vtop --theme base8'
alias tcli='transmission-cli'
alias rsync='rsync -rtv'
alias colorz='colorz -n 8'
alias rec='yaxg -w -D 2 -f $HOME/videos/screencasts/%d%b2k%y-%H%M%S'
alias highlight='highlight --out-format=ansi'
alias qr='qrencode -t UTF8'

#FUNCTIONS
ioup_clear() {
	for file in `ioup -l | awk '{print $1}'`; do
		ioup -r $file
	done
}

ix() {
	cat "$1" | curl -F 'f:1=<-' -F 'read:1=2' ix.io 
}

getip() {
	w3m -no-cookie -dump "https://duckduckgo.com/?q=what+is+my+ip+address&t=ffab&ia=answer" | awk '/address is/ {print $5}' | head -1
}

mtp-mount() {
	gvfs-mount -li | awk -F= '{if(index($2,"mtp") == 1)system("gvfs-mount "$2)}'
}

separator() {
	for ((x = 0; x < $(tput cols); x++)); do
		printf %s "$(tput setaf 0)█$(tput sgr0)"
	done
}
