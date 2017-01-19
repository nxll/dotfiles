hi clear
syntax reset
let g:colors_name = "fray"
if &background == "light"
    hi Boolean 	    gui=NONE ctermfg=2    ctermbg=NONE
    hi ColorColumn  gui=NONE ctermfg=7    ctermbg=NONE
    hi Comment 	    gui=NONE ctermfg=7    ctermbg=0
    hi Conceal 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi Conditional  gui=NONE ctermfg=5    ctermbg=NONE
    hi Constant     gui=NONE ctermfg=7    ctermbg=NONE
    hi Cursor 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine   gui=NONE ctermfg=NONE ctermbg=8    cterm=NONE
    hi CursorLineNr gui=NONE ctermfg=2    ctermbg=0
    hi DiffAdd 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffChange   gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffDelete   gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffText     gui=NONE ctermfg=7    ctermbg=NONE
    hi Directory    gui=NONE ctermfg=7    ctermbg=NONE
    hi Error 	    gui=NONE ctermfg=4    ctermbg=0
    hi ErrorMsg     gui=NONE ctermfg=4    ctermbg=0
    hi FoldColumn   gui=NONE ctermfg=NONE ctermbg=NONE
    hi Folded 	    gui=NONE ctermfg=4    ctermbg=0
    hi Ignore 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi IncSearch    gui=NONE ctermfg=NONE ctermbg=NONE
    hi LineNr 	    gui=NONE ctermfg=7    ctermbg=0
    hi MatchParen   gui=NONE ctermfg=0    ctermbg=7 cterm=NONE
    hi ModeMsg      gui=NONE ctermfg=0    ctermbg=2
    hi MoreMsg 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi NonText 	    gui=NONE ctermfg=8    ctermbg=NONE
    hi Normal 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Number 	    gui=NONE ctermfg=10   ctermbg=NONE
    hi Operator     gui=NONE ctermfg=2    ctermbg=NONE
    hi Pmenu 	    gui=NONE ctermfg=NONE ctermbg=0
    hi PmenuSbar    gui=NONE ctermfg=NONE ctermbg=0
    hi PmenuSel     gui=NONE ctermfg=NONE ctermbg=8
    hi PmenuThumb   gui=NONE ctermfg=NONE ctermbg=NONE
    hi Question     gui=NONE ctermfg=7    ctermbg=NONE
    hi Search 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi SignColumn   gui=NONE ctermfg=7    ctermbg=NONE
    hi Special 	    gui=NONE ctermfg=4    ctermbg=NONE
    hi SpecialKey   gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellBad     gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellCap     gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellLocal   gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellRare    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Statement    gui=NONE ctermfg=2    ctermbg=NONE
    hi StatusLine   gui=NONE ctermfg=11   ctermbg=0    cterm=NONE
    hi StatusLineNC gui=NONE ctermfg=3    ctermbg=0    cterm=NONE
    hi StorageClass gui=NONE ctermfg=6    ctermbg=NONE
    hi String 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi TabLine 	    gui=NONE ctermfg=7    ctermbg=8    cterm=NONE
    hi TabLineFill  gui=NONE ctermfg=0    ctermbg=8
    hi TabLineSel   gui=NONE ctermfg=0    ctermbg=2    cterm=NONE
    hi Title 	    gui=NONE ctermfg=7    ctermbg=0
    hi Todo 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi treeDir 	    gui=NONE ctermfg=7    ctermbg=0
    hi Type         gui=NONE ctermfg=7    ctermbg=NONE
    hi Underlined   gui=NONE ctermfg=7    ctermbg=NONE
    hi VertSplit    gui=NONE ctermfg=0    ctermbg=NONE
    hi Visual 	    gui=NONE ctermfg=8   ctermbg=0
    hi VisualNOS    gui=NONE ctermfg=7    ctermbg=NONE
    hi WarningMsg   gui=NONE ctermfg=4    ctermbg=0
    hi WildMenu     gui=NONE ctermfg=NONE ctermbg=NONE
    hi lCursor 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Identifier   gui=NONE ctermfg=7    ctermbg=NONE
    hi PreProc 	    gui=NONE ctermfg=7    ctermbg=NONE
elseif &background == "dark"
    hi Boolean 	    gui=NONE ctermfg=2    ctermbg=NONE
    hi ColorColumn  gui=NONE ctermfg=7    ctermbg=NONE
    hi Comment 	    gui=NONE ctermfg=7    ctermbg=0
    hi Conceal 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi Conditional  gui=NONE ctermfg=5    ctermbg=NONE
    hi Constant     gui=NONE ctermfg=7    ctermbg=NONE
    hi Cursor 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine   gui=NONE ctermfg=NONE ctermbg=8    cterm=NONE
    hi CursorLineNr gui=NONE ctermfg=2    ctermbg=0
    hi DiffAdd 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffChange   gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffDelete   gui=NONE ctermfg=NONE ctermbg=NONE
    hi DiffText     gui=NONE ctermfg=7    ctermbg=NONE
    hi Directory    gui=NONE ctermfg=7    ctermbg=NONE
    hi Error 	    gui=NONE ctermfg=4    ctermbg=0
    hi ErrorMsg     gui=NONE ctermfg=4    ctermbg=0
    hi FoldColumn   gui=NONE ctermfg=NONE ctermbg=NONE
    hi Folded 	    gui=NONE ctermfg=4    ctermbg=0
    hi Ignore 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi IncSearch    gui=NONE ctermfg=NONE ctermbg=NONE
    hi LineNr 	    gui=NONE ctermfg=7    ctermbg=0
    hi MatchParen   gui=NONE ctermfg=0    ctermbg=7 cterm=NONE
    hi ModeMsg      gui=NONE ctermfg=0    ctermbg=2
    hi MoreMsg 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi NonText 	    gui=NONE ctermfg=8    ctermbg=NONE
    hi Normal 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Number 	    gui=NONE ctermfg=10   ctermbg=NONE
    hi Operator     gui=NONE ctermfg=2    ctermbg=NONE
    hi Pmenu 	    gui=NONE ctermfg=NONE ctermbg=0
    hi PmenuSbar    gui=NONE ctermfg=NONE ctermbg=0
    hi PmenuSel     gui=NONE ctermfg=NONE ctermbg=8
    hi PmenuThumb   gui=NONE ctermfg=NONE ctermbg=NONE
    hi Question     gui=NONE ctermfg=7    ctermbg=NONE
    hi Search 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi SignColumn   gui=NONE ctermfg=7    ctermbg=NONE
    hi Special 	    gui=NONE ctermfg=4    ctermbg=NONE
    hi SpecialKey   gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellBad     gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellCap     gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellLocal   gui=NONE ctermfg=NONE ctermbg=NONE
    hi SpellRare    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Statement    gui=NONE ctermfg=2    ctermbg=NONE
    hi StatusLine   gui=NONE ctermfg=11   ctermbg=0    cterm=NONE
    hi StatusLineNC gui=NONE ctermfg=3    ctermbg=0    cterm=NONE
    hi StorageClass gui=NONE ctermfg=6    ctermbg=NONE
    hi String 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi TabLine 	    gui=NONE ctermfg=7    ctermbg=8    cterm=NONE
    hi TabLineFill  gui=NONE ctermfg=0    ctermbg=8
    hi TabLineSel   gui=NONE ctermfg=0    ctermbg=2    cterm=NONE
    hi Title 	    gui=NONE ctermfg=7    ctermbg=0
    hi Todo 	    gui=NONE ctermfg=7    ctermbg=NONE
    hi treeDir 	    gui=NONE ctermfg=7    ctermbg=0
    hi Type         gui=NONE ctermfg=7    ctermbg=NONE
    hi Underlined   gui=NONE ctermfg=7    ctermbg=NONE
    hi VertSplit    gui=NONE ctermfg=0    ctermbg=NONE
    hi Visual 	    gui=NONE ctermfg=8    ctermbg=0
    hi VisualNOS    gui=NONE ctermfg=7    ctermbg=NONE
    hi WarningMsg   gui=NONE ctermfg=4    ctermbg=0
    hi WildMenu     gui=NONE ctermfg=NONE ctermbg=NONE
    hi lCursor 	    gui=NONE ctermfg=NONE ctermbg=NONE
    hi Identifier   gui=NONE ctermfg=7    ctermbg=NONE
    hi PreProc 	    gui=NONE ctermfg=7    ctermbg=NONE
endif
