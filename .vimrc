version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
set viminfo=
colors fray
set nobackup
set nowritebackup
set noswapfile
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=PragmataPro\ 8
syntax on
set number
set cursorline
set guioptions=aegiLtm
set helplang=en
set mouse=a
set ruler
set termencoding=utf-8
set window=90
set shortmess=filnxtToO
set shortmess+=I
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeToggle
autocmd VimEnter * wincmd p
let g:NERDTreeWinSize=14
let g:NERDTreeMinimalUI=1
" let g:NERDTreeDirArrows=0
" let g:NERDTreeShowHidden=1
" vim: set ft=vim :

function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()
