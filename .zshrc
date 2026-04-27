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

#LS_COLORS='di=31:fi=32:ln=36:pi=1;33:so=1;34:bd=1;35:cd=34:or=30:mi=30:ex=1;32'

# SCRIPTS
export PATH=$HOME/.local/bin:$PATH
export TERM=xterm-256color
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="vivaldi-stable"
#export LS_COLORS

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# IMPORT ALIASES AND FUNCTIONS
source $HOME/.zsh_aliases
source $HOME/.zsh_functions

#HISTORY
HISTFILE=$HOME/.zhist
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS

#PROMPT
PROMPT="%K{2} > %k%K{8} %1~ %k "

#ZSH SYNTAX HIGHTLIGHTING
#ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red.bold,standout
#ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
#ZSH_HIGHLIGHT_STYLES[alias]=fg=none
#ZSH_HIGHLIGHT_STYLES[builtin]=fg=none
#ZSH_HIGHLIGHT_STYLES[function]=fg=white
#ZSH_HIGHLIGHT_STYLES[command]=fg=none
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=green,bold
#ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=blue
#ZSH_HIGHLIGHT_STYLES[path]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=red,bold
#ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[path_approx]=fg=yellow,bold
#ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=red,standout
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=red
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=red
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=white
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=green
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=green
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=green
#ZSH_HIGHLIGHT_STYLES[assign]=fg=white,bold

#REMOVE UNDERLINE FROM HIGHLIGHTING
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
