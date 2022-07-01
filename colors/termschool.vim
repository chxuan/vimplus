" Termschool - A 256 color theme for vim
"
" The original codeschool theme was converted by @AstonJ (http://astonj) to
" work with 256 color terminals. I liked the original theme, but didn't
" completely like the conversion, so I started to tweak it. The resulting
" theme is now called "termschool" and was tweaked to be a medium contrast
" theme with a gray/dark background.
"
" The theme is aimed at people using 256 color terminals, but should display
" correctly in gvim (GUI Vim) as well.
"
" Feedback, corrections and ideas: <paganini_at_paganini_dot_net>
"
" Please note that this theme is a work in progress. Once in a while, I find
" something I don't like and change it. If you prefer it to be static, clone
" my github repository and keep a separate copy. Push requests are welcome.
"
" Source: http://github.com/marcopaganini/termschool-vim-theme

set background=dark
highlight clear
highlight clear CursorLineNr

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "termschool"

hi Conceal ctermfg=60 ctermbg=NONE cterm=NONE guifg=#5f5f87 guibg=NONE gui=NONE
hi Cursor ctermfg=16 ctermbg=145 cterm=NONE guifg=#000000 guibg=#afafaf gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#5f5f5f gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303030 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303030 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303030 gui=NONE
hi LineNr ctermfg=102 ctermbg=NONE cterm=NONE guifg=#878787 guibg=NONE gui=NONE
hi VertSplit ctermfg=59 ctermbg=235 cterm=NONE guifg=#5f5f5f guibg=#262626 gui=NONE
hi MatchParen ctermfg=NONE ctermbg=245 cterm=NONE guifg=NONE guibg=#8a8a8a gui=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5f gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#ffffff guibg=#5f5f5f gui=NONE
hi Pmenu ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#5f5f5f gui=NONE
hi PmenuSel ctermfg=231 ctermbg=68 cterm=NONE guifg=#ffffff guibg=#5f87d7 gui=NONE
hi IncSearch ctermfg=15 ctermbg=107 cterm=NONE guifg=#ffffff guibg=#87af5f gui=NONE
hi Search ctermfg=3 ctermbg=239 cterm=NONE guifg=#808000 guibg=#4e4e4e gui=NONE
hi Directory ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi Folded ctermfg=247 ctermbg=16 cterm=NONE guifg=#9e9e9e guibg=#000000 gui=NONE

hi Normal ctermfg=188 ctermbg=234 cterm=NONE guifg=#d7d7d7 guibg=#1c1c1c gui=NONE
hi Boolean ctermfg=68 ctermbg=NONE cterm=bold guifg=#5f87d7 guibg=NONE gui=bold
hi Character ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi Comment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9e9e9e guibg=NONE gui=italic
hi Conditional ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi Define ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=NONE guifg=#ffffff guibg=#5f8700 gui=NONE
hi DiffDelete ctermfg=88 ctermbg=167 cterm=NONE guifg=#870000 guibg=#d75f5f gui=NONE
hi DiffChange ctermfg=231 ctermbg=68 cterm=NONE guifg=#ffffff guibg=#5f87d7 gui=NONE
hi DiffText ctermfg=231 ctermbg=61 cterm=bold guifg=#ffffff guibg=#5f5faf gui=bold
hi ErrorMsg ctermfg=131 ctermbg=231 cterm=reverse guifg=#af5f5f guibg=#ffffff gui=reverse
hi WarningMsg ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi Function ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi Keyword ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi Label ctermfg=107 ctermbg=NONE cterm=NONE guifg=#87af5f guibg=NONE gui=NONE
hi NonText ctermfg=243 ctermbg=234 cterm=NONE guifg=#767676 guibg=#1c1c1c gui=NONE
hi Number ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi Operator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi PreProc ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey ctermfg=60 ctermbg=NONE cterm=NONE guifg=#5f5f87 guibg=NONE gui=NONE
hi Statement ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi String ctermfg=107 ctermbg=NONE cterm=NONE guifg=#87af5f guibg=NONE gui=NONE
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi Todo ctermfg=247 ctermbg=NONE cterm=inverse,bold guifg=#9e9e9e guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi rubyFunction ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi rubyConstant ctermfg=146 ctermbg=NONE cterm=NONE guifg=#afafd7 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=107 ctermbg=NONE cterm=NONE guifg=#87af5f guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi rubyInclude ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#d7af5f guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#d7af5f guibg=NONE gui=NONE
hi rubyEscape ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi rubyControl ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi rubyOperator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi rubyException ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=146 ctermbg=NONE cterm=NONE guifg=#afafd7 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9e9e9e guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi yamlAlias ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=107 ctermbg=NONE cterm=NONE guifg=#87af5f guibg=NONE gui=NONE
hi cssURL ctermfg=74 ctermbg=NONE cterm=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi cssClassName ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=NONE
hi cssValueLength ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=151 ctermbg=NONE cterm=NONE guifg=#afd7af guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi SpellBad ctermfg=0 ctermbg=224 guifg=#000000 guibg=#ffd7d7
hi SpellCap ctermfg=0 ctermbg=81 guifg=#000000 guibg=#5fd7ff
hi SpellRare ctermfg=0 ctermbg=225 guifg=#000000 guibg=#ffd7ff
hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi TabLineSel ctermfg=NONE ctermbg=23 cterm=bold guifg=NONE guibg=#005f5f gui=bold
hi TabLine ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi SignColumn ctermfg=0 ctermbg=240 guifg=#000000 guibg=#585858
hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE guifg=#878787 guibg=NONE gui=NONE
hi WildMenu ctermfg=NONE ctermbg=23 cterm=bold guifg=NONE guibg=#005f5f gui=bold

" Git
hi diffAdded ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi diffRemoved ctermfg=167 ctermbg=NONE cterm=NONE guifg=#d75f5f guibg=NONE gui=NONE
hi diffChanged ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 guibg=NONE gui=NONE

" C highlighting
hi! link cConditional   Conditional
hi! link cRepeat        Conditional
hi cTodo ctermfg=113 ctermbg=NONE cterm=bold guifg=#87d75f guibg=NONE gui=bold
hi cType ctermfg=231 ctermbg=234 cterm=NONE guifg=#ffffff guibg=#1c1c1c gui=NONE
hi cConstant ctermfg=231 ctermbg=234 cterm=NONE guifg=#ffffff guibg=#1c1c1c gui=NONE

" Markdown specific colors
hi markdownCode ctermfg=74 ctermbg=NONE guifg=#5fafd7 guibg=NONE gui=NONE
hi markdownH1 ctermfg=178 ctermbg=NONE cterm=bold guifg=#d7af00 guibg=NONE gui=bold
hi markdownH2 ctermfg=44 ctermbg=NONE cterm=bold guifg=#00d7d7 guibg=NONE gui=bold
hi markdownH3 ctermfg=113 ctermbg=NONE cterm=bold guifg=#87d75f guibg=NONE gui=bold
hi markdownH4 ctermfg=172 ctermbg=NONE cterm=bold guifg=#d78700 guibg=NONE gui=bold
hi markdownH5 ctermfg=172 ctermbg=NONE cterm=bold guifg=#d78700 guibg=NONE gui=bold
hi markdownH6 ctermfg=172 ctermbg=NONE cterm=bold guifg=#d78700 guibg=NONE gui=bold
hi markdownListMarker ctermfg=75 ctermbg=NONE cterm=bold guifg=#5fafff guibg=NONE gui=bold
hi markdownOrderedListMarker ctermfg=75 ctermbg=NONE cterm=bold guifg=#5fafff guibg=NONE gui=bold
hi markdownUrl ctermfg=45 ctermbg=NONE guifg=#00d7ff guibg=NONE

hi markdownItalic cterm=italic gui=italic
hi markdownBold cterm=bold gui=bold
hi markdownBoldItalic cterm=bold,italic gui=bold,italic
