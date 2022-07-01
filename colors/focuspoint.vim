" Vim color file inherit from the molokai.vim file
"
" Author:  Chase Colman <chase@colman.io>
" Version:  0.2 (2014.05.26)
"
" Note: Based on the molokai theme for vim
" by Tomas Restrepo who based it on Monokai for Textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="focuspoint"

hi Boolean        guifg=#CD5C5C
hi Character      guifg=#E6DB74
hi Number         guifg=#CD5C5C
hi String         guifg=#E6DB74 guibg=#242829
hi Conditional    guifg=#43AB59 gui=bold
hi Constant       guifg=#CD5C5C gui=bold
hi Cursor         guifg=#000000 guibg=#F8F8F0
hi Debug          guifg=#BCA3A3 gui=bold
hi Define         guifg=#71ABC2
hi Delimiter      guifg=#8F8F8F
hi DiffAdd        guifg=#94FFAB guibg=#3E804C
hi DiffChange     guifg=#89807D guibg=#4C4745
hi DiffDelete     guifg=#CD5C5C guibg=#571F1F
hi DiffText       guibg=#4C4745 gui=italic,bold

hi Directory      guifg=#d1c79e gui=bold
hi Error          guifg=#CD5C5C guibg=#571F1F
hi ErrorMsg       guifg=#43AB59 guibg=#232526 gui=bold
hi Exception      guifg=#d1c79e gui=bold
hi Float          guifg=#CD5C5C
hi FoldColumn     guifg=#465457 guibg=#000000
hi Folded         guifg=#465457 guibg=#000000
hi Function       guifg=#d1c79e
hi Identifier     guifg=#BD8F2E
hi Ignore         guifg=#808080 guibg=bg
hi IncSearch      guifg=#C4BE89 guibg=#000000

hi Keyword        guifg=#43AB59 gui=bold
hi Label          guifg=#E6DB74 gui=none
hi Macro          guifg=#C4BE89 gui=italic
hi SpecialKey     guifg=#71ABC2 gui=italic

hi MatchParen     guifg=fg      guibg=#455354 gui=bold
hi ModeMsg        guifg=#E6DB74
hi MoreMsg        guifg=#E6DB74
hi Operator       guifg=#43AB59

" complete menu
hi Pmenu          guifg=#F8F8F2 guibg=#465457
hi PmenuSel       guifg=#232526 guibg=#43AB59
hi PmenuSbar      guibg=#43AB59
hi PmenuThumb     guifg=#F8F8F2

hi PreCondit      guifg=#d1c79e gui=bold
hi PreProc        guifg=#d1c79e
hi Question       guifg=#71ABC2
hi Repeat         guifg=#43AB59 gui=bold
hi Search         guifg=#FFFFFF guibg=#455354
" marks column
hi SignColumn     guifg=#d1c79e guibg=#232526
hi SpecialChar    guifg=#43AB59 guibg=#242829 gui=bold
hi SpecialComment guifg=#465457 gui=bold
hi Special        guifg=#71ABC2 guibg=bg      gui=italic
hi SpecialKey     guifg=#888A85 gui=italic
if has("spell")
    hi SpellBad   guisp=#FF0000 gui=undercurl
    hi SpellCap   guisp=#7070F0 gui=undercurl
    hi SpellLocal guisp=#70F0F0 gui=undercurl
    hi SpellRare  guisp=#FFFFFF gui=undercurl
endif
hi Statement      guifg=#43AB59 gui=bold
hi StatusLine     guifg=#455354 guibg=fg
hi StatusLineNC   guifg=#7F7F7F guibg=#232526
hi StorageClass   guifg=#BD8F2E gui=italic
hi Structure      guifg=#71ABC2
hi Tag            guifg=#43AB59 gui=italic
hi Title          guifg=#FFC66D
hi Todo           guifg=bg      guibg=#71ABC2 gui=underline,bold

hi Typedef        guifg=#71ABC2
hi Type           guifg=#71ABC2 gui=bold
hi Underlined     guifg=#808080 gui=underline

hi VertSplit      guifg=#080808 guibg=#080808 gui=bold
hi VisualNOS      guibg=#403D3D
hi Visual         guibg=#403D3D
hi WarningMsg     guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu       guifg=#71ABC2 guibg=#000000

hi Normal         guifg=#F8F8F2 guibg=#1B1D1E
hi Comment        guifg=#465457
hi CursorLine     guibg=#293739
hi CursorColumn   guibg=#293739
hi LineNr         guifg=#7F7F7F guibg=#232526
hi NonText        guifg=#232526 guibg=#232526
hi ExtraWhitespace guibg=#CD5C5C

if &t_Co > 255
    hi Boolean        ctermfg=167
    hi Character      ctermfg=221
    hi Number         ctermfg=167
    hi String         ctermfg=221 ctermbg=235
    hi Conditional    ctermfg=35  cterm=bold
    hi Constant       ctermfg=167 cterm=bold
    hi Cursor         ctermfg=0   ctermbg=15
    hi Debug          ctermfg=131 cterm=bold
    hi Define         ctermfg=74
    hi Delimiter      ctermfg=245
    hi DiffAdd        ctermfg=121 ctermbg=35
    hi DiffChange     ctermfg=245 ctermbg=237
    hi DiffDelete     ctermfg=167 ctermbg=1
    hi DiffText       ctermbg=239 cterm=bold

    hi Directory      ctermfg=223 cterm=bold
    hi Error          ctermfg=15  ctermbg=1
    hi ErrorMsg       ctermfg=35  ctermbg=235 cterm=bold
    hi Exception      ctermfg=223 cterm=bold
    hi Float          ctermfg=167
    hi FoldColumn     ctermfg=239 ctermbg=0
    hi Folded         ctermfg=239 ctermbg=0
    hi Function       ctermfg=223
    hi Identifier     ctermfg=179 cterm=none
    hi Ignore         ctermfg=8   ctermbg=0
    hi IncSearch      ctermfg=186 ctermbg=0

    hi Keyword        ctermfg=35  cterm=bold
    hi Label          ctermfg=221 cterm=none
    hi Macro          ctermfg=186
    hi SpecialKey     ctermfg=74

    hi MatchParen     ctermbg=238 cterm=bold
    hi ModeMsg        ctermfg=221
    hi MoreMsg        ctermfg=221
    hi Operator       ctermfg=35

    " complete menu
    hi Pmenu          ctermfg=15 ctermbg=238
    hi PmenuSel       ctermfg=235 ctermbg=35
    hi PmenuSbar      ctermbg=35
    hi PmenuThumb     ctermfg=15

    hi PreCondit      ctermfg=223 cterm=bold
    hi PreProc        ctermfg=223
    hi Question       ctermfg=74
    hi Repeat         ctermfg=35  cterm=bold
    hi Search         ctermfg=15  ctermbg=238
    " marks column
    hi SignColumn     ctermfg=223 ctermbg=235
    hi SpecialChar    ctermfg=35  ctermbg=235 cterm=bold
    hi SpecialComment ctermfg=239 cterm=bold
    hi Special        ctermfg=74
    hi SpecialKey     ctermfg=245
    hi Statement      ctermfg=35  cterm=bold
    hi StatusLine     ctermfg=238 ctermbg=15
    hi StatusLineNC   ctermfg=243 ctermbg=235
    hi StorageClass   ctermfg=179
    hi Structure      ctermfg=74
    hi Tag            ctermfg=35
    hi Title          ctermfg=214
    hi Todo           ctermfg=0   ctermbg=74  cterm=bold

    hi Typedef        ctermfg=74
    hi Type           ctermfg=74  cterm=bold
    hi Underlined     ctermfg=8   cterm=underline

    hi VertSplit      ctermfg=232 ctermbg=232 cterm=bold
    hi VisualNOS      ctermbg=237
    hi Visual         ctermbg=237
    hi WarningMsg     ctermfg=15  ctermbg=236 cterm=bold
    hi WildMenu       ctermfg=74  ctermbg=0

    hi Normal         ctermfg=15  ctermbg=234
    hi Comment        ctermfg=239
    hi CursorLine     ctermbg=236
    hi CursorColumn   ctermbg=236
    hi LineNr         ctermfg=243 ctermbg=235
    hi NonText        ctermfg=235 ctermbg=235
else
    hi Boolean        ctermfg=9
    hi Character      ctermfg=11
    hi Number         ctermfg=9
    hi String         ctermfg=11 ctermbg=8
    hi Conditional    ctermfg=10 cterm=bold
    hi Constant       ctermfg=9  cterm=bold
    hi Cursor         ctermfg=0  ctermbg=15
    hi Debug          ctermfg=7  cterm=bold
    hi Define         ctermfg=12
    hi Delimiter      ctermfg=7
    hi DiffAdd        ctermbg=4
    hi DiffChange     ctermfg=8  ctermbg=0
    hi DiffDelete     ctermfg=9  ctermbg=1
    hi DiffText       ctermbg=0  cterm=bold

    hi Directory      ctermfg=11 cterm=bold
    hi Error          ctermfg=15 ctermbg=1
    hi ErrorMsg       ctermfg=6  ctermbg=0 cterm=bold
    hi Exception      ctermfg=11 cterm=bold
    hi Float          ctermfg=9
    hi FoldColumn     ctermfg=8  ctermbg=0
    hi Folded         ctermfg=8  ctermbg=0
    hi Function       ctermfg=11
    hi Identifier     ctermfg=3  cterm=none
    hi Ignore         ctermfg=8  ctermbg=0
    hi IncSearch      ctermfg=3  ctermbg=0

    hi Keyword        ctermfg=6  cterm=bold
    hi Label          ctermfg=11 cterm=none
    hi Macro          ctermfg=3
    hi SpecialKey     ctermfg=4

    hi MatchParen     ctermbg=0  cterm=bold
    hi ModeMsg        ctermfg=11
    hi MoreMsg        ctermfg=11
    hi Operator       ctermfg=6

    " complete menu
    hi Pmenu          ctermfg=15 ctermbg=8
    hi PmenuSel       ctermfg=15 ctermbg=2
    hi PmenuSbar      ctermbg=2
    hi PmenuThumb     ctermfg=15

    hi PreCondit      ctermfg=11 cterm=bold
    hi PreProc        ctermfg=11
    hi Question       ctermfg=4
    hi Repeat         ctermfg=6  cterm=bold
    hi Search         ctermfg=15 ctermbg=0
    " marks column
    hi SignColumn     ctermfg=11 ctermbg=0
    hi SpecialChar    ctermfg=6  ctermbg=0 cterm=bold
    hi SpecialComment ctermfg=8  cterm=bold
    hi Special        ctermfg=4
    hi SpecialKey     ctermfg=8
    hi Statement      ctermfg=6  cterm=bold
    hi StatusLine     ctermfg=0  ctermbg=15
    hi StatusLineNC   ctermfg=8  ctermbg=0
    hi StorageClass   ctermfg=3
    hi Structure      ctermfg=4
    hi Tag            ctermfg=6
    hi Title          ctermfg=3
    hi Todo           ctermfg=0  ctermbg=4 cterm=bold

    hi Typedef        ctermfg=4
    hi Type           ctermfg=4  cterm=bold
    hi Underlined     ctermfg=8

    hi VertSplit      ctermfg=0  ctermbg=0 cterm=bold
    hi VisualNOS      ctermbg=7
    hi Visual         ctermbg=7
    hi WarningMsg     ctermfg=15 ctermbg=8 cterm=bold
    hi WildMenu       ctermfg=4  ctermbg=0

    hi Normal         ctermfg=15 ctermbg=0
    hi Comment        ctermfg=8
    hi CursorLine     ctermbg=0
    hi CursorColumn   ctermbg=0
    hi LineNr         ctermfg=8  ctermbg=0
    hi NonText        ctermfg=0  ctermbg=0
endif

set background=dark
