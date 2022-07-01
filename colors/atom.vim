"Maintainer:    Greg Sexton <gregsexton@gmail.com>
"Last Change:   2011-04-22
"Version:       1.1
"URL:           http://www.gregsexton.org/vim-color-schemes/atom-color/

set background=dark
if version > 580
    "no guarantees for version 5.8 and below, but this makes it stop complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="atom"

hi Normal       guifg=#e8ecf0     guibg=#304050

hi DiffDelete   guifg=#304050     guibg=#203040
hi DiffAdd      guibg=#002851
hi DiffChange   guibg=#450303
hi DiffText     guibg=#990909     gui=none

hi diffAdded    guifg=#00bf00     guibg=#1d2c1b
hi diffRemoved  guifg=#e00000     guibg=#2d1c20

hi Cursor       guibg=khaki       guifg=slategrey
hi VertSplit    guibg=#102030     guifg=#102030   gui=none
hi Folded       guifg=#cccccc     guibg=#405060
hi FoldColumn   guibg=grey30      guifg=tan
hi IncSearch    guifg=slategrey   guibg=khaki
hi LineNr       guifg=#556575     guibg=#203040
hi ModeMsg      guifg=goldenrod
hi MoreMsg      guifg=SeaGreen
hi NonText      guifg=#304050     guibg=#304050
hi Question     guifg=springgreen
hi Search       guibg=#ffff7d     guifg=#000000
hi SpecialKey   guifg=yellowgreen
hi StatusLine   guibg=#102030     guifg=grey70    gui=none
hi StatusLineNC guibg=#203040     guifg=grey50    gui=none
hi Title        guifg=indianred
hi Visual       gui=none          guifg=white     guibg=#D04040
hi WarningMsg   guifg=salmon
hi Directory    guifg=#A6E22E
hi SignColumn   guifg=#A6E22E     guibg=#203040

if version >= 700 " Vim 7.x specific colors
    hi CursorLine   guifg=NONE    guibg=#203040 gui=NONE
    hi CursorColumn guifg=NONE    guibg=#203040 gui=NONE
    hi MatchParen   guifg=red     guibg=#304050 gui=BOLD
    hi Pmenu        guifg=#f6f3e8 guibg=#152535 gui=NONE
    hi PmenuSel     guifg=#000000 guibg=#cae682 gui=NONE
endif

if version >= 703 " Vim 7.x specific colors
    hi ColorColumn  guifg=#e8ecf0 guibg=#283848
endif

" syntax highlighting groups
hi Comment    guifg=#8090a0   gui=none
hi Constant   guifg=#ff6070   gui=none
hi Identifier guifg=#70d080   gui=none
hi Statement  guifg=#6699D0   gui=none
hi PreProc    guifg=indianred gui=none
hi Type       guifg=#8cd0d3   gui=none
hi Special    guifg=#ecad2b   gui=none
hi Delimiter  guifg=#8090a0
hi Number     guifg=#FFFF80
hi Ignore     guifg=grey40    gui=none
hi Todo       guifg=orangered guibg=#304050 gui=none

"vim: sw=4
