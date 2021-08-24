" Author: 'Christopher MCA'
" Site: https:/github.com/christophermca/meta5
" Version:      0.15.1

"Note: a TRON inspired theme

highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let colors_name = "meta5"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#262626 gui=NONE ctermbg=234 cterm=NONE
  hi CursorColumn guifg=#ffffff guibg=#303030 ctermbg=238
  hi iCursor      guifg=#000000 guibg=#d0d0d0 ctermfg=0 ctermbg=252
  hi Incsearch    guifg=#ff00ff guibg=NONE gui=underline ctermfg=201 ctermbg=NONE cterm=underline
  hi MatchParen   guifg=#ffaf00 guibg=NONE gui=bold ctermfg=214 ctermbg=NONE cterm=bold
  hi Pmenu        guifg=#eeeeee guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel     guifg=#000000 guibg=#df8700 ctermfg=0 ctermbg=172
  hi Search       guifg=#ff00ff guibg=NONE gui=underline ctermfg=201 ctermbg=NONE cterm=underline
endif

" General colors
hi Cursor         guifg=#000000 guibg=#d0d0d0 ctermfg=0 ctermbg=252
hi CursorLineNr   guifg=#ffff00 guibg=NONE ctermfg=11 ctermbg=NONE
hi ColorColumn    guibg=#000080 ctermbg=4
hi Directory      guifg=#00ffff guibg=NONE ctermfg=14 ctermbg=NONE
hi ErrorMsg       guifg=#ffffff guibg=#ff0000 gui=NONE ctermfg=15 ctermbg=9 cterm=NONE
hi Error          guifg=#ffffff guibg=#ff0000 gui=underline ctermfg=15 ctermbg=9 cterm=underline
hi Folded         guifg=#005f5f guibg=#080808 ctermfg=23 ctermbg=0
hi LineNr         guifg=#808080 guibg=NONE ctermfg=244 ctermbg=NONE
hi NonText        guifg=#5f5fff ctermfg=63
hi Normal         guifg=#bcbcbc guibg=#1c1c1c ctermfg=250 ctermbg=233
hi SpecialKey     guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE
hi StatusLine     guifg=#005f5f guibg=#080808 gui=underline ctermfg=23 ctermbg=232 cterm=underline term=underline
hi StatusLineNC   guifg=#585858 guibg=#080808 ctermfg=240 ctermbg=232
hi Title          guifg=#df8700 ctermfg=172
hi VertSplit      guifg=#444444 guibg=#585858 ctermfg=238 ctermbg=240
hi Visual         guifg=#afffff guibg=#4e4e4e gui=bold ctermfg=159 ctermbg=239 cterm=bold
hi WarningMsg     guifg=#afffff ctermfg=159

" Syntax highlighting
hi Boolean        guifg=#87ff5f gui=bold ctermfg=119 cterm=bold
hi Character      guifg=#0087ff ctermfg=33
hi Comment        guifg=#808080 ctermfg=244
hi Constant       guifg=#af5fff ctermfg=195
hi Conditional    guifg=#5fdfff ctermfg=81
hi Define         guifg=#ff8700 ctermfg=208
hi Exception      guifg=#afdfff gui=bold ctermfg=153 cterm=bold
hi Function       guifg=#df8700 ctermfg=172
hi Identifier     guifg=#00afff ctermfg=39
hi Keyword        guifg=#dfffff guibg=NONE gui=bold ctermfg=195 ctermbg=NONE  cterm=bold
hi Label          guifg=#5f87ff ctermfg=69
hi Number         guifg=#5fdf5f ctermfg=77
hi Repeat         guifg=#afdfff gui=bold ctermfg=153 cterm=bold
hi Statement      guifg=#5fdfff gui=NONE ctermfg=81
hi String         guifg=#0087df ctermfg=32
hi Structure      guifg=#01dfdf ctermfg=44
hi StorageClass   guifg=#87ff5f ctermfg=119
hi Special        guifg=#5fdf5f gui=bold ctermfg=77 cterm=bold
hi Todo           guifg=#00ffff guibg=#606060 gui=bold ctermfg=6 ctermbg=239 cterm=bold
hi Type           guifg=#87dfff gui=NONE ctermfg=117
hi Typedef        guifg=#87dfff gui=bold ctermfg=117 cterm=bold
hi Operator       guifg=#8787ff ctermfg=105
hi PreCondit      guifg=#005faf ctermfg=25
hi PreProc        guifg=#00afff ctermfg=39

"Diff
hi DiffAdd        guifg=#00ff00 guibg=#005f00 cterm=NONE ctermfg=46 ctermbg=22 gui=NONE
hi DiffChange     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi DiffDelete     guifg=#df0000 guibg=#5f0000 cterm=NONE ctermfg=9 ctermbg=52 gui=NONE
hi DiffText       guifg=#00ff00 guibg=#4e4e4e cterm=underline ctermfg=10 ctermbg=239 gui=underline

"Spell
if has("spell")
   hi SpellBad       cterm=NONE ctermfg=9 ctermbg=52 gui=NONE guifg=#df0000 guibg=#5f0000
   hi SpellCap       cterm=NONE ctermfg=46 ctermbg=22 gui=NONE guifg=#00ff00 guibg=#005f00
   hi SpellLocal     cterm=NONE ctermfg=NONE ctermbg=20 gui=NONE guifg=NONE guibg=#0000df
   hi SpellRare      guifg=#bcbcbc guibg=#1c1c1c ctermfg=250 ctermbg=233
endif

" LANGUAGE OVERRIDES

" Coffeescript
hi coffeeEmbed          guifg=#87ffaf ctermfg=121

hi link coffeeSemicolonError NONE
hi link coffeeSpaceError NONE
hi link coffeeReservedError NONE
