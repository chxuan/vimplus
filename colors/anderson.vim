"                  __                            _     
"    ___ ____  ___/ /__ _______ ___  ___   _  __(_)_ _ 
"   / _ `/ _ \/ _  / -_) __(_-</ _ \/ _ \_| |/ / /  ' \
"   \_,_/_//_/\_,_/\__/_/ /___/\___/_//_(_)___/_/_/_/_/
"                                                      
" Dark vim colorscheme based on colors from Wes Anderson films
"
" File:         anderson.vim
" URL:          github.com/tlhr/anderson.vim
" Author:       Thomas Löhr
" License:      MIT
"
" Copyright (c) 2015 Thomas Löhr
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "anderson"
set background=dark

if version > 800
	set termguicolors
endif

if &t_Co >= 256 || has("gui_running")
    hi Normal         ctermbg=0  ctermfg=15   cterm=NONE      guibg=#363432 guifg=#c5beba gui=NONE
    hi NonText        ctermbg=bg ctermfg=8    cterm=NONE      guibg=bg      guifg=#645d59 gui=NONE
    hi Comment        ctermbg=bg ctermfg=7    cterm=NONE      guibg=bg      guifg=#837d7a gui=NONE
    hi Constant       ctermbg=bg ctermfg=5    cterm=NONE      guibg=bg      guifg=#c7a095 gui=NONE
    hi Character      ctermbg=bg ctermfg=5    cterm=NONE      guibg=bg      guifg=#c7a095 gui=NONE
    hi Error          ctermbg=8  ctermfg=1    cterm=NONE      guibg=#645d59 guifg=#be503e gui=NONE
    hi Identifier     ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Function       ctermbg=bg ctermfg=2    cterm=NONE      guibg=bg      guifg=#7bb292 gui=NONE
    hi Ignore         ctermbg=bg ctermfg=13   cterm=NONE      guibg=bg      guifg=#e7c6be gui=NONE
    hi PreProc        ctermbg=bg ctermfg=13   cterm=NONE      guibg=bg      guifg=#e7c6be gui=NONE
    hi Include        ctermbg=bg ctermfg=4    cterm=NONE      guibg=bg      guifg=#628b97 gui=NONE
    hi Define         ctermbg=bg ctermfg=1    cterm=NONE      guibg=bg      guifg=#be503e gui=NONE
    hi Macro          ctermbg=bg ctermfg=13   cterm=NONE      guibg=bg      guifg=#e7c6be gui=NONE
    hi PreCondit      ctermbg=bg ctermfg=13   cterm=bold      guibg=bg      guifg=#e7c6be gui=bold
    hi Special        ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi SpecialChar    ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Tag            ctermbg=bg ctermfg=9    cterm=bold      guibg=bg      guifg=#f0a4af gui=bold
    hi Delimiter      ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi SpecialComment ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Debug          ctermbg=bg ctermfg=9    cterm=NONE      guibg=bg      guifg=#f0a4af gui=NONE
    hi Statement      ctermbg=bg ctermfg=1    cterm=NONE      guibg=bg      guifg=#be503e gui=NONE
    hi Conditional    ctermbg=bg ctermfg=4    cterm=NONE      guibg=bg      guifg=#628b97 gui=NONE
    hi Repeat         ctermbg=bg ctermfg=4    cterm=NONE      guibg=bg      guifg=#628b97 gui=NONE
    hi Label          ctermbg=bg ctermfg=4    cterm=NONE      guibg=bg      guifg=#628b97 gui=NONE
    hi Operator       ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Exception      ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Keyword        ctermbg=bg ctermfg=3    cterm=NONE      guibg=bg      guifg=#d7ae38 gui=NONE
    hi String         ctermbg=bg ctermfg=6    cterm=NONE      guibg=bg      guifg=#88a2a4 gui=NONE
    hi Number         ctermbg=bg ctermfg=5    cterm=NONE      guibg=bg      guifg=#c7a095 gui=NONE
    hi Float          ctermbg=bg ctermfg=5    cterm=NONE      guibg=bg      guifg=#c7a095 gui=NONE
    hi Boolean        ctermbg=bg ctermfg=12   cterm=NONE      guibg=bg      guifg=#bad4f5 gui=NONE
    hi Todo           ctermbg=bg ctermfg=2    cterm=bold      guibg=bg      guifg=#7bb292 gui=bold
    hi Type           ctermbg=bg ctermfg=11   cterm=NONE      guibg=bg      guifg=#c4c18b gui=NONE
    hi StorageClass   ctermbg=bg ctermfg=5    cterm=NONE      guibg=bg      guifg=#c7a095 gui=NONE
    hi Structure      ctermbg=bg ctermfg=11   cterm=NONE      guibg=bg      guifg=#c4c18b gui=NONE
    hi Typedef        ctermbg=bg ctermfg=11   cterm=NONE      guibg=bg      guifg=#c4c18b gui=NONE
    hi Underlined     ctermbg=bg ctermfg=11   cterm=underline guibg=bg      guifg=#c4c18b gui=underline
    hi StatusLine     ctermbg=8  ctermfg=15   cterm=NONE      guibg=#645d59 guifg=#c5beba gui=NONE
    hi StatusLineNC   ctermbg=bg ctermfg=8    cterm=NONE      guibg=bg      guifg=#645d59 gui=NONE
    hi VertSplit      ctermbg=8  ctermfg=8    cterm=NONE      guibg=#645d59 guifg=#645d59 gui=NONE
    hi TabLine        ctermbg=bg ctermfg=8    cterm=NONE      guibg=bg      guifg=#645d59 gui=NONE
    hi TabLineFill    ctermbg=bg ctermfg=8    cterm=NONE      guibg=bg      guifg=#645d59 gui=NONE
    hi TabLineSel     ctermbg=bg ctermfg=2    cterm=bold      guibg=bg      guifg=#7bb292 gui=bold
    hi Title          ctermbg=bg ctermfg=15   cterm=NONE      guibg=bg      guifg=#c5beba gui=NONE
    hi CursorLine     ctermbg=8  ctermfg=NONE cterm=NONE      guibg=#645d59 guifg=NONE    gui=NONE
    hi LineNr         ctermbg=bg ctermfg=8    cterm=NONE      guibg=bg      guifg=#645d59 gui=NONE
    hi CursorLineNr   ctermbg=bg ctermfg=2    cterm=bold      guibg=bg      guifg=#7bb292 gui=bold
    hi helpLeadBlank  ctermbg=bg ctermfg=NONE cterm=NONE      guibg=bg      guifg=NONE    gui=NONE
    hi helpNormal     ctermbg=bg ctermfg=15   cterm=NONE      guibg=bg      guifg=#c5beba gui=NONE
    hi Visual         ctermbg=8  ctermfg=NONE cterm=NONE      guibg=#645d59 guifg=NONE    gui=NONE
    hi VisualNOS      ctermbg=0  ctermfg=8    cterm=bold      guibg=#363432 guifg=#645d59 gui=bold
    hi Pmenu          ctermbg=8  ctermfg=14   cterm=NONE      guibg=#645d59 guifg=#a8c1c5 gui=NONE
    hi PmenuSbar      ctermbg=8  ctermfg=0    cterm=NONE      guibg=#645d59 guifg=#363432 gui=NONE
    hi PmenuSel       ctermbg=14 ctermfg=0    cterm=NONE      guibg=#a8c1c5 guifg=#363432 gui=NONE
    hi PmenuThumb     ctermbg=10 ctermfg=0    cterm=NONE      guibg=#9ad1bc guifg=#363432 gui=NONE
    hi FoldColumn     ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi Folded         ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi WildMenu       ctermbg=8  ctermfg=14   cterm=underline guibg=#645d59 guifg=#a8c1c5 gui=underline
    hi SpecialKey     ctermbg=8  ctermfg=2    cterm=NONE      guibg=#645d59 guifg=#7bb292 gui=NONE
    hi DiffAdd        ctermbg=10 ctermfg=0    cterm=bold      guibg=#9ad1bc guifg=#363432 gui=bold
    hi DiffChange     ctermbg=11 ctermfg=0    cterm=NONE      guibg=#c4c18b guifg=#363432 gui=NONE
    hi DiffDelete     ctermbg=13 ctermfg=8    cterm=bold      guibg=#e7c6be guifg=#645d59 gui=bold
    hi DiffText       ctermbg=9  ctermfg=0    cterm=bold      guibg=#f0a4af guifg=#363432 gui=bold
    hi IncSearch      ctermbg=15 ctermfg=4    cterm=bold      guibg=#c5beba guifg=#628b97 gui=bold
    hi Search         ctermbg=12 ctermfg=0    cterm=NONE      guibg=#bad4f5 guifg=#363432 gui=NONE
    hi Directory      ctermbg=bg ctermfg=14   cterm=bold      guibg=bg      guifg=#a8c1c5 gui=bold
    hi MatchParen     ctermbg=8  ctermfg=9    cterm=bold      guibg=#645d59 guifg=#f0a4af gui=bold
    hi SpellBad       ctermbg=bg ctermfg=NONE cterm=undercurl guibg=bg      guifg=NONE    gui=undercurl guisp=#f0a4af
    hi SpellCap       ctermbg=bg ctermfg=NONE cterm=undercurl guibg=bg      guifg=NONE    gui=undercurl guisp=#bad4f5
    hi SpellLocal     ctermbg=bg ctermfg=NONE cterm=undercurl guibg=bg      guifg=NONE    gui=undercurl guisp=#e7c6be
    hi SpellRare      ctermbg=bg ctermfg=NONE cterm=undercurl guibg=bg      guifg=NONE    gui=undercurl guisp=#a8c1c5
    hi ColorColumn    ctermbg=8  ctermfg=15   cterm=NONE      guibg=#645d59 guifg=#c5beba gui=NONE
    hi signColumn     ctermbg=bg ctermfg=14   cterm=NONE      guibg=bg      guifg=#a8c1c5 gui=NONE
    hi ErrorMsg       ctermbg=bg ctermfg=1    cterm=bold      guibg=bg      guifg=#be503e gui=bold
    hi ModeMsg        ctermbg=bg ctermfg=2    cterm=NONE      guibg=bg      guifg=#7bb292 gui=NONE
    hi MoreMsg        ctermbg=bg ctermfg=14   cterm=bold      guibg=bg      guifg=#a8c1c5 gui=bold
    hi Question       ctermbg=bg ctermfg=15   cterm=bold      guibg=bg      guifg=#c5beba gui=bold
    hi WarningMsg     ctermbg=bg ctermfg=3    cterm=NONE      guibg=bg      guifg=#d7ae38 gui=NONE
    hi Cursor         ctermbg=14 ctermfg=0    cterm=bold      guibg=#a8c1c5 guifg=#363432 gui=bold
    hi CursorColumn   ctermbg=8  ctermfg=15   cterm=NONE      guibg=#645d59 guifg=#c5beba gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal         ctermbg=black    ctermfg=white       cterm=NONE
    hi NonText        ctermbg=bg       ctermfg=darkgray    cterm=NONE
    hi Comment        ctermbg=bg       ctermfg=gray        cterm=NONE
    hi Constant       ctermbg=bg       ctermfg=darkmagenta cterm=NONE
    hi Character      ctermbg=bg       ctermfg=darkmagenta cterm=NONE
    hi Error          ctermbg=darkgray ctermfg=darkred     cterm=NONE
    hi Identifier     ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Function       ctermbg=bg       ctermfg=darkgreen   cterm=NONE
    hi Ignore         ctermbg=bg       ctermfg=magenta     cterm=NONE
    hi PreProc        ctermbg=bg       ctermfg=magenta     cterm=NONE
    hi Include        ctermbg=bg       ctermfg=darkblue    cterm=NONE
    hi Define         ctermbg=bg       ctermfg=darkred     cterm=NONE
    hi Macro          ctermbg=bg       ctermfg=magenta     cterm=NONE
    hi PreCondit      ctermbg=bg       ctermfg=magenta     cterm=bold
    hi Special        ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi SpecialChar    ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Tag            ctermbg=bg       ctermfg=red         cterm=bold
    hi Delimiter      ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi SpecialComment ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Debug          ctermbg=bg       ctermfg=red         cterm=NONE
    hi Statement      ctermbg=bg       ctermfg=darkred     cterm=NONE
    hi Conditional    ctermbg=bg       ctermfg=darkblue    cterm=NONE
    hi Repeat         ctermbg=bg       ctermfg=darkblue    cterm=NONE
    hi Label          ctermbg=bg       ctermfg=darkblue    cterm=NONE
    hi Operator       ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Exception      ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Keyword        ctermbg=bg       ctermfg=darkyellow  cterm=NONE
    hi String         ctermbg=bg       ctermfg=darkcyan    cterm=NONE
    hi Number         ctermbg=bg       ctermfg=darkmagenta cterm=NONE
    hi Float          ctermbg=bg       ctermfg=darkmagenta cterm=NONE
    hi Boolean        ctermbg=bg       ctermfg=blue        cterm=NONE
    hi Todo           ctermbg=bg       ctermfg=darkgreen   cterm=bold
    hi Type           ctermbg=bg       ctermfg=yellow      cterm=NONE
    hi StorageClass   ctermbg=bg       ctermfg=darkmagenta cterm=NONE
    hi Structure      ctermbg=bg       ctermfg=yellow      cterm=NONE
    hi Typedef        ctermbg=bg       ctermfg=yellow      cterm=NONE
    hi Underlined     ctermbg=bg       ctermfg=yellow      cterm=underline
    hi StatusLine     ctermbg=darkgray ctermfg=white       cterm=NONE
    hi StatusLineNC   ctermbg=bg       ctermfg=darkgray    cterm=NONE
    hi VertSplit      ctermbg=darkgray ctermfg=darkgray    cterm=NONE
    hi TabLine        ctermbg=bg       ctermfg=darkgray    cterm=NONE
    hi TabLineFill    ctermbg=bg       ctermfg=darkgray    cterm=NONE
    hi TabLineSel     ctermbg=bg       ctermfg=darkgreen   cterm=bold
    hi Title          ctermbg=bg       ctermfg=white       cterm=NONE
    hi CursorLine     ctermbg=darkgray ctermfg=NONE        cterm=NONE
    hi LineNr         ctermbg=bg       ctermfg=darkgray    cterm=NONE
    hi CursorLineNr   ctermbg=bg       ctermfg=darkgreen   cterm=bold
    hi helpLeadBlank  ctermbg=bg       ctermfg=NONE        cterm=NONE
    hi helpNormal     ctermbg=bg       ctermfg=white       cterm=NONE
    hi Visual         ctermbg=darkgray ctermfg=NONE        cterm=NONE
    hi VisualNOS      ctermbg=black    ctermfg=darkgray    cterm=bold
    hi Pmenu          ctermbg=darkgray ctermfg=cyan        cterm=NONE
    hi PmenuSbar      ctermbg=darkgray ctermfg=black       cterm=NONE
    hi PmenuSel       ctermbg=cyan     ctermfg=black       cterm=NONE
    hi PmenuThumb     ctermbg=green    ctermfg=black       cterm=NONE
    hi FoldColumn     ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi Folded         ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi WildMenu       ctermbg=darkgray ctermfg=cyan        cterm=underline
    hi SpecialKey     ctermbg=darkgray ctermfg=darkgreen   cterm=NONE
    hi DiffAdd        ctermbg=green    ctermfg=black       cterm=bold
    hi DiffChange     ctermbg=yellow   ctermfg=black       cterm=NONE
    hi DiffDelete     ctermbg=magenta  ctermfg=darkgray    cterm=bold
    hi DiffText       ctermbg=red      ctermfg=black       cterm=bold
    hi IncSearch      ctermbg=white    ctermfg=darkblue    cterm=bold
    hi Search         ctermbg=blue     ctermfg=black       cterm=NONE
    hi Directory      ctermbg=bg       ctermfg=cyan        cterm=bold
    hi MatchParen     ctermbg=darkgray ctermfg=red         cterm=bold
    hi SpellBad       ctermbg=bg       ctermfg=NONE        cterm=undercurl
    hi SpellCap       ctermbg=bg       ctermfg=NONE        cterm=undercurl
    hi SpellLocal     ctermbg=bg       ctermfg=NONE        cterm=undercurl
    hi SpellRare      ctermbg=bg       ctermfg=NONE        cterm=undercurl
    hi ColorColumn    ctermbg=darkgray ctermfg=white       cterm=NONE
    hi signColumn     ctermbg=bg       ctermfg=cyan        cterm=NONE
    hi ErrorMsg       ctermbg=bg       ctermfg=darkred     cterm=bold
    hi ModeMsg        ctermbg=bg       ctermfg=darkgreen   cterm=NONE
    hi MoreMsg        ctermbg=bg       ctermfg=cyan        cterm=bold
    hi Question       ctermbg=bg       ctermfg=white       cterm=bold
    hi WarningMsg     ctermbg=bg       ctermfg=darkyellow  cterm=NONE
    hi Cursor         ctermbg=cyan     ctermfg=black       cterm=bold
    hi CursorColumn   ctermbg=darkgray ctermfg=white       cterm=NONE
endif

if $NVIM_TUI_ENABLE_TRUE_COLOR == 1
  let g:terminal_foreground =  "#c5beba"
  let g:terminal_background =  "#363432"
  let g:terminal_color_0 =     "#363432"
  let g:terminal_color_1 =     "#be503e"
  let g:terminal_color_2 =     "#7bb292"
  let g:terminal_color_3 =     "#d7ae38"
  let g:terminal_color_4 =     "#628b97"
  let g:terminal_color_5 =     "#c7a095"
  let g:terminal_color_6 =     "#88a2a4"
  let g:terminal_color_7 =     "#837d7a"
  let g:terminal_color_8 =     "#645d59"
  let g:terminal_color_9 =     "#f0a4af"
  let g:terminal_color_10 =    "#9ad1bc"
  let g:terminal_color_11 =    "#c4c18b"
  let g:terminal_color_12 =    "#bad4f5"
  let g:terminal_color_13 =    "#e7c6be"
  let g:terminal_color_14 =    "#a8c1c5"
  let g:terminal_color_15 =    "#c5beba"
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
