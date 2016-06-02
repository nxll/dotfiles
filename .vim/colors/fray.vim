hi clear
syntax reset
let g:colors_name = "fray"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#969696 guibg=NONE ctermbg=236
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE ctermfg=236 ctermbg=234
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE ctermfg=231
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed ctermfg=236 ctermbg=234
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#808080 guibg=NONE ctermfg=2
    hi ColorColumn gui=NONE guifg=NONE guibg=#121212 ctermfg=7
    hi Comment gui=NONE guifg=#707070 guibg=NONE ctermfg=253 ctermbg=234
    hi Conceal gui=NONE guifg=#808080 guibg=NONE ctermfg=7
    hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE ctermfg=5
    hi Constant gui=NONE guifg=#808080 guibg=NONE ctermfg=7
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#121212
    hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a ctermbg=234
    hi CursorLineNr gui=NONE guifg=#ffffff guibg=#121212 ctermfg=2 ctermbg=234
    hi DiffAdd gui=NONE guifg=NONE guibg=#141414
    hi DiffChange gui=NONE guifg=NONE guibg=#1a1a1a
    hi DiffDelete gui=NONE guifg=NONE guibg=#212121
    hi DiffText gui=NONE guifg=NONE guibg=#333333 ctermfg=7
    hi Directory gui=NONE guifg=#acdb0f guibg=#141414 ctermfg=7
    hi Error gui=NONE guifg=NONE guibg=#171717 ctermfg=7
    hi ErrorMsg gui=NONE guifg=#2b2b2b guibg=#121212
    hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
    hi Folded gui=NONE guifg=#707070 guibg=NONE ctermfg=7
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#333333
    hi LineNr gui=NONE guifg=#acdb0f guibg=#121212 ctermfg=236 ctermbg=234
    hi MatchParen gui=NONE guifg=NONE guibg=#333333 ctermfg=7
    hi ModeMsg gui=NONE guifg=#303030 guibg=#121212 ctermfg=236 ctermbg=234
    hi MoreMsg gui=NONE guifg=#303030 guibg=#121212
    hi NonText gui=NONE guifg=#616161 guibg=#141414 ctermfg=233
    hi Normal gui=NONE guifg=#ffffff guibg=#141414 ctermfg=7
    hi Number gui=NONE guifg=#98e203 guibg=NONE ctermfg=249
    hi Pmenu gui=NONE guifg=NONE guibg=#141414
    hi PmenuSbar gui=NONE guifg=NONE guibg=#141414
    hi PmenuSel gui=NONE guifg=#acdb0f guibg=#1a1a1a ctermfg=7 ctermbg=234
    hi PmenuThumb gui=NONE guifg=NONE guibg=#ffffff
    hi Question gui=NONE guifg=NONE guibg=NONE ctermfg=7
    hi Search gui=NONE guifg=NONE guibg=#262626
    hi SignColumn gui=NONE guifg=#616161 guibg=NONE ctermfg=7
    hi Special gui=NONE guifg=#808080 guibg=NONE ctermfg=4
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=#545454 guibg=#000000
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#141414
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
    hi Statement gui=NONE guifg=#ffffff guibg=NONE ctermfg=2
    hi StatusLine gui=NONE guifg=#262626 guibg=#121212 ctermfg=234 ctermbg=238
    hi StatusLineNC gui=NONE guifg=#2e2e2e guibg=#121212 ctermfg=234 ctermbg=236
    hi StorageClass gui=NONE guifg=#8f8f8f guibg=NONE ctermfg=248
    hi String gui=NONE guifg=#808080 guibg=NONE ctermfg=7
    hi TabLine gui=NONE guifg=#303030 guibg=#121212 ctermbg=234 ctermfg=7
    hi TabLineFill gui=NONE guifg=#808080 guibg=#121212 ctermbg=234 ctermfg=236
    hi TabLineSel gui=bold guifg=#acdb0f guibg=#141414 ctermfg=74 ctermbg=234
    hi Title gui=NONE guifg=#ffffff guibg=NONE ctermbg=234 ctermfg=236
    hi Todo gui=standout guifg=NONE guibg=NONE ctermfg=7
    hi treeDir guifg=#FFFFFF guibg=#191919 ctermfg=74 ctermbg=234
    hi Type gui=NONE guifg=#8f8f8f guibg=NONE ctermfg=7
    hi Underlined gui=NONE guifg=NONE guibg=NONE ctermfg=7
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE ctermfg=234 ctermbg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#121212 ctermfg=7
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE ctermfg=7
    hi WarningMsg gui=NONE guifg=#ff0000 guibg=#121212
    hi WildMenu gui=NONE guifg=NONE guibg=#141414
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE ctermfg=7
    hi PreProc gui=NONE guifg=NONE guibg=NONE ctermfg=7
endif
