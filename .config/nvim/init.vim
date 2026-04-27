"           ██                           
"          ░░                            
"  ██    ██ ██ ██████████  ██████  █████ 
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░ 
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████ 
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░  

set nocompatible
filetype on

set nowrap
set number
set cursorline
set mouse=a
set termguicolors
syntax on
"set t_Co=16

map <S-Insert> <MiddleMouse>

" PLUGINS
source $HOME/.config/nvim/vim-plug/plugins.vim

colorscheme pywal

autocmd VimEnter * NERDTree | wincmd p

let g:NERDTreeWinSize = 20
let g:NERTreeWinPos = "right"
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ""
let g:NERDTreeDirArrowCollapsible = ""
let g:NERDTreeShowHidden = 1

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

autocmd VimEnter * ColorizerToggle
let g:colorizer_maxlines = 2000
