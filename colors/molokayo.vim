let g:molokai_original = 1

runtime colors/molokai.vim

let g:colors_name="molokayo"

if !exists("g:molokayo#high_contrast#comments")
    let g:molokayo#high_contrast#comments = 0
endif
if !exists("g:molokayo#focus_variant")
    let g:molokayo#focus_variant = 0
endif

hi! Normal guibg=#202020 guifg=#ffffff ctermbg=234 ctermfg=15
if g:molokayo#focus_variant == 1
    hi! NonText guibg=bg guifg=#303030 ctermbg=bg ctermfg=233
else
    hi! link NonText Delimiter
endif
hi! link EndOfBuffer NonText
hi! Ignore guibg=bg guifg=#303030 ctermbg=bg ctermbg=233
hi! Special guibg=bg guifg=#66d0ef ctermbg=bg ctermfg=81 gui=italic cterm=italic
hi! Conceal guifg=#f92672 guibg=bg cterm=bold ctermfg=198 ctermbg=bg
hi! Search guifg=#000000 guibg=#ffcc00 gui=bold cterm=bold ctermfg=0 ctermbg=220
hi! Identifier guifg=#ffb700 ctermfg=214
hi! link Directory SpecialChar
hi! PreProc guibg=bg guifg=#2ee252 ctermbg=bg ctermfg=41
hi! PreCondit guibg=bg guifg=#2ee252 ctermbg=bg ctermfg=41
hi! Title guibg=bg guifg=#ef7511 ctermbg=bg ctermfg=208
hi! ColorColumn guibg=#1e1e1e ctermbg=233
hi! Error guibg=#990023 guifg=#ffca00 ctermbg=160 ctermfg=214
hi! TabLineFill guibg=#202020 guifg=#141414 ctermbg=234 ctermfg=233
hi! TabLineSel guibg=#141414 guifg=#ffb700 ctermbg=233 ctermfg=214 cterm=bold gui=bold
hi! TabLine guibg=#141414 guifg=#404040 ctermbg=233 ctermfg=238

if g:molokayo#high_contrast#comments == 1
    hi! Comment guibg=bg guifg=#A6A185 ctermbg=bg ctermfg=248
endif

" Folds:
if g:molokayo#focus_variant == 1
    hi! FoldColumn guibg=bg guifg=#303030 ctermbg=236 ctermfg=238
else
    hi! FoldColumn guibg=#282828 guifg=#505050 ctermbg=236 ctermfg=244
endif
hi! Folded guibg=#252525 guifg=#808080 ctermbg=235 ctermfg=244

" Cursor:
hi! Cursor guibg=#f92672 guifg=#ffffff gui=bold cterm=bold ctermbg=197 ctermfg=15
hi! CursorInsert guibg=#0077ff guifg=#ffffff ctermbg=39  ctermfg=15
hi! CursorVisual guibg=#2077ff guifg=#ffffff ctermbg=38 ctermfg=15
hi! CursorReplace guibg=#ff2000 guifg=#ffffff ctermbg=196 ctermfg=15
set guicursor=
            \a:block-blinkon0,
            \i:blinkwait200-blinkoff150-blinkon200-CursorInsert,
            \r:CursorReplace,
            \v:CursorVisual,
            \c:ver30-blinkon300-CursorInsert
" Split:
hi! VertSplit guibg=#151515 guifg=#151515 ctermbg=233  ctermfg=233
" Statuline:
hi! StatusLine guibg=#151515 guifg=#ffffff gui=None cterm=None ctermbg=233 ctermfg=15
hi! StatusLineNC guibg=#252525 guifg=#808080 gui=None cterm=None ctermbg=235 ctermfg=244
hi! Wildmenu guibg=#f92672 guifg=#ffffff gui=bold cterm=bold ctermbg=199 ctermfg=15
hi! SLSpecial guibg=#151515 guifg=#66d0ef ctermbg=233 ctermfg=81
hi! SLDelim guibg=#151515 guifg=#808080 ctermbg=233 ctermfg=244
hi! SLNumber guibg=#151515 guifg=#ae81ff ctermbg=233 ctermfg=141
hi! SLDirectory guibg=#151515 guifg=#f92672 gui=bold cterm=bold ctermbg=233 ctermfg=197
hi! SLIdentifier guibg=#151515 guifg=#ffb700 gui=bold cterm=bold ctermbg=233i ctermfg=214
hi! SLCharacter guibg=#151515 guifg=#e6db74 ctermbg=233 ctermfg=227
hi! SLConstant guibg=#151515 guifg=#ae81ff ctermbg=233 ctermfg=141
hi! SLType guibg=#151515 guifg=#66d9ae gui=bold cterm=bold ctermbg=233 ctermfg=81
hi! SLFunction guibg=#151515 guifg=#a6e2e2 ctermbg=233 ctermfg=153
hi! SLSpellBad guibg=#151515 gui=undercurl guisp=#ff0000 cterm=underline ctermbg=233
hi! SLVCS guibg=#151515 guifg=#ff5000 gui=italic cterm=italic ctermbg=233 ctermfg=202
" Completion:
hi! link PMenu SLDelim
hi! link PMenuSel WildMenu

" vim-buftabline support
hi! link BufTabLineFill StatusLine
hi! link BufTabLineCurrent SLIdentifier
hi! link BufTabLineActive SLCharacter
hi! link BufTabLineHidden SLType

" ctrlp support
hi! link CtrlPMatch Search
hi! link CtrlPLinePre Operator
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMode1 SLType
hi! link CtrlPMode2 SLSpecial
hi! link CtrlPStats SLFunction
