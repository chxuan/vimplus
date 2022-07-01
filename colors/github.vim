" Vim color file -- with 256 colour support!
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
" Contributors: Lucas Tadeu <lucastadeuteixeira@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

set background=light

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "github"

" {{{ General colors
hi Normal   ctermfg=0   ctermbg=255  guifg=#000000   guibg=#F8F8FF
hi Cursor   ctermfg=239   ctermbg=15  guifg=#F8F8FF   guibg=#444454
hi Visual   ctermfg=15   ctermbg=61  guifg=#FFFFFF   guibg=#3465a3
hi VisualNOS   ctermfg=15   ctermbg=24  guifg=#FFFFFF   guibg=#204a87
hi Search   ctermfg=236   ctermbg=228  guifg=#000000   guibg=#FFFF8C  cterm=bold gui=bold
hi Folded   ctermfg=8 ctermbg=15 guifg=#808080 guibg=#ECECEC gui=bold cterm=bold
hi Title    ctermfg=167 guifg=#ef5939
hi StatusLine ctermfg=238 ctermbg=250 guifg=#404040 guibg=#bbbbbb gui=bold cterm=bold
hi StatusLineNC ctermfg=238 ctermbg=252 guifg=#404040 guibg=#d4d4d4 gui=italic cterm=italic
hi VertSplit ctermfg=250 ctermbg=250 guifg=#bbbbbb guibg=#bbbbbb gui=none cterm=none
hi LineNr   ctermfg=246 ctermbg=15 guifg=#959595 guibg=#ECECEC gui=bold cterm=bold
hi SpecialKey ctermfg=6 guifg=#177F80 gui=italic cterm=italic
hi WarningMsg ctermfg=167 guifg=#ef5939
hi ErrorMsg ctermbg=15 ctermfg=196 guibg=#f8f8ff guifg=#ff1100 gui=undercurl cterm=undercurl
hi ColorColumn ctermbg=254 guibg=#e4e4e4
" }}}

" {{{ Vim => 7.0 specific colors
if version >= 700
    hi CursorLine ctermbg=253 guibg=#D8D8DD
    hi MatchParen ctermfg=0 ctermbg=252 guifg=#000000 guibg=#cdcdfd
    hi Pmenu        ctermfg=15 ctermbg=8 guifg=#ffffff guibg=#808080 gui=bold   cterm=bold
    hi PmenuSel     ctermfg=0 ctermbg=252 guifg=#000000 guibg=#cdcdfd  gui=italic cterm=italic
    hi PmenuSbar    ctermfg=238 ctermbg=0 guifg=#444444 guibg=#000000
    hi PmenuThumb   ctermfg=248 ctermbg=248 guifg=#aaaaaa guibg=#aaaaaa
endif
" }}}

" {{{ Diff highlighting
hi DiffAdd    ctermfg=233 ctermbg=194 guifg=#003300 guibg=#DDFFDD gui=none cterm=none
hi DiffChange ctermbg=255  guibg=#ececec gui=none   cterm=none
hi DiffText   ctermfg=233  ctermbg=189  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
hi DiffDelete ctermfg=252 ctermbg=224   guifg=#DDCCCC guibg=#FFDDDD gui=none    cterm=none
" }}}

" {{{ Syntax highlighting
hi Ignore   ctermfg=8 guifg=#808080
hi Identifier   ctermfg=31 guifg=#0086B3
hi PreProc  ctermfg=247 guifg=#A0A0A0 gui=bold cterm=bold
hi Comment  ctermfg=246 guifg=#999988
hi Constant ctermfg=6 guifg=#177F80 gui=none cterm=none
hi String   ctermfg=161 guifg=#D81745
hi Function ctermfg=88 guifg=#990000 gui=bold cterm=bold
hi Statement    ctermfg=0 guifg=#000000 gui=bold cterm=bold
hi Type     ctermfg=60 guifg=#445588 gui=bold   cterm=bold
hi Number   ctermfg=30 guifg=#1C9898
hi Todo     ctermfg=15 ctermbg=88 guifg=#FFFFFF guibg=#990000 gui=bold cterm=bold
hi Special  ctermfg=28 guifg=#159828 gui=bold   cterm=bold
hi Todo         ctermbg=15 ctermfg=196 guibg=#f8f8ff guifg=#ff1100 gui=underline cterm=underline
hi Label        ctermfg=0 guifg=#000000 gui=bold    cterm=bold
hi StorageClass ctermfg=0 guifg=#000000 gui=bold    cterm=bold
hi Structure    ctermfg=0 guifg=#000000 gui=bold    cterm=bold
hi TypeDef      ctermfg=0 guifg=#000000 gui=bold    cterm=bold

" {{{ Links
hi! link FoldColumn Folded
hi! link CursorColumn   CursorLine
hi! link NonText    LineNr
" }}}

" {{{ Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character       Number
hi link htmlTag         htmlEndTag
hi link htmlLink        Underlined
hi link pythonFunction  Identifier
hi link Question        Type
hi link CursorIM        Cursor
hi link VisualNOS       Visual
hi link xmlTag          Identifier
hi link xmlTagName      Identifier
hi link shDeref         Identifier
hi link shVariable      Function
hi link rubySharpBang   Special
hi link perlSharpBang   Special
hi link schemeFunc      Statement
" }}}

" {{{ Tabs
hi TabLine ctermfg=238 ctermbg=188 guifg=#404040 guibg=#dddddd gui=none
hi TabLineFill ctermfg=238 ctermbg=188 guifg=#404040 guibg=#dddddd gui=none
hi TabLineSel   ctermfg=238 guifg=#404040 gui=bold
" }}}

" {{{ Spelling
if has("spell")
    hi spellBad     guisp=#fcaf3e
    hi spellCap     guisp=#73d216
    hi spellRare    guisp=#fcaf3e
    hi spellLocal   guisp=#729fcf
endif
" }}}

" {{{ Airline
hi airlineN1 ctermfg=188 ctermbg=0 guifg=#dddddd guibg=#000000 gui=none cterm=none
hi airlineN2 ctermfg=188 ctermbg=238 guifg=#dddddd guibg=#404040 gui=none cterm=none
hi airlineN3 ctermfg=0 ctermbg=188 guifg=#000000 guibg=#dddddd gui=none cterm=none
hi airlineInsert1 ctermfg=188 ctermbg=26 guifg=#dddddd guibg=#005cc5 gui=none cterm=none
hi airlineInsert2 ctermfg=188 ctermbg=17 guifg=#dddddd guibg=#032f62 gui=none cterm=none
hi airlineVisual1 ctermfg=188 ctermbg=91 guifg=#dddddd guibg=#6f42c1 gui=none cterm=none
hi airlineVisual2 ctermfg=188 ctermbg=237 guifg=#dddddd guibg=#45267d gui=none cterm=none
hi airlineReplace1 ctermfg=188 ctermbg=167 guifg=#dddddd guibg=#d73a49 gui=none cterm=none
hi airlineReplace2 ctermfg=188 ctermbg=124 guifg=#dddddd guibg=#b31d28 gui=none cterm=none
" }}}
