" Name:         stellarized
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
   \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[stellarized] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'stellarized'

if &background ==# 'dark'
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=145 ctermbg=235 guifg=#bead9d guibg=#222532 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=137 ctermbg=NONE guifg=#9d8875 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=137 ctermbg=NONE guifg=#9d8875 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=137 ctermbg=NONE guifg=#9d8875 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=145 ctermbg=NONE guifg=#bead9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=145 ctermbg=235 guifg=#bead9d guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=145 ctermbg=NONE guifg=#bead9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=145 ctermbg=235 guifg=#bead9d guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=145 ctermbg=235 guifg=#bead9d guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=145 ctermbg=235 guifg=#bead9d guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=137 ctermbg=235 guifg=#9d8875 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=223 ctermbg=235 guifg=#ecdac9 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=223 ctermbg=235 guifg=#ecdac9 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=223 ctermbg=60 guifg=#ecdac9 guibg=#4a5067 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=145 ctermbg=236 guifg=#bead9d guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#4a5067 guibg=#4a5067 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=145 ctermbg=145 guifg=#bead9d guibg=#bead9d guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=236 ctermbg=236 guifg=#2d3243 guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=236 ctermbg=236 guifg=#2d3243 guibg=#2d3243 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=60 ctermbg=60 guifg=#4a5067 guibg=#4a5067 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff707e cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00b4ff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00c8d9 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ee81f9 cterm=NONE,underline gui=NONE,undercurl
  hi StorageClass ctermfg=136 ctermbg=NONE guifg=#a58949 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=136 ctermbg=NONE guifg=#a58949 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=136 ctermbg=NONE guifg=#a58949 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=136 ctermbg=NONE guifg=#a58949 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=139 ctermbg=235 guifg=#b178b5 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=139 ctermbg=235 guifg=#b178b5 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Function ctermfg=32 ctermbg=NONE guifg=#578fcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=32 ctermbg=NONE guifg=#578fcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=235 guifg=#ca7375 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=235 guifg=#ca7375 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=174 ctermbg=235 guifg=#ca7375 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=174 ctermbg=235 guifg=#ca7375 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=174 ctermbg=NONE guifg=#ca7375 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=136 ctermbg=235 guifg=#a58949 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=136 ctermbg=235 guifg=#a58949 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=94 ctermbg=223 guifg=#8d6e19 guibg=#ecdac9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=71 ctermbg=NONE guifg=#5c9a61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=71 ctermbg=235 guifg=#5c9a61 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=71 ctermbg=235 guifg=#5c9a61 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=139 ctermbg=NONE guifg=#b178b5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=139 ctermbg=NONE guifg=#b178b5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=139 ctermbg=NONE guifg=#b178b5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=139 ctermbg=NONE guifg=#b178b5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=139 ctermbg=NONE guifg=#b178b5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=37 ctermbg=235 guifg=#009ba2 guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=37 ctermbg=NONE guifg=#009ba2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=32 ctermbg=235 guifg=#578fcc guibg=#222532 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=60 ctermbg=255 guifg=#4a5067 guibg=#fceee0 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=60 ctermbg=NONE guifg=#666c85 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=60 ctermbg=NONE guifg=#666c85 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=60 ctermbg=NONE guifg=#666c85 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=60 ctermbg=NONE guifg=#4a5067 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=60 ctermbg=255 guifg=#4a5067 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=NONE guifg=#4a5067 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=60 ctermbg=255 guifg=#4a5067 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=255 guifg=#4a5067 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=255 guifg=#4a5067 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=60 ctermbg=255 guifg=#666c85 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=236 ctermbg=255 guifg=#2d3243 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=236 ctermbg=255 guifg=#2d3243 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=236 ctermbg=145 guifg=#2d3243 guibg=#bead9d guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=60 ctermbg=223 guifg=#4a5067 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=145 ctermbg=145 guifg=#bead9d guibg=#bead9d guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#4a5067 guibg=#4a5067 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=223 ctermbg=223 guifg=#ecdac9 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=223 ctermbg=223 guifg=#ecdac9 guibg=#ecdac9 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=145 ctermbg=145 guifg=#bead9d guibg=#bead9d guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f7003c cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0082ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0093b3 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#c709dd cterm=NONE,underline gui=NONE,undercurl
hi StorageClass ctermfg=94 ctermbg=NONE guifg=#8b6800 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=94 ctermbg=NONE guifg=#8b6800 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=94 ctermbg=NONE guifg=#8b6800 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=94 ctermbg=NONE guifg=#8b6800 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=255 guifg=#a348ae guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=255 guifg=#a348ae guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Function ctermfg=25 ctermbg=NONE guifg=#006dcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=25 ctermbg=NONE guifg=#006dcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=161 ctermbg=255 guifg=#c6394c guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=161 ctermbg=255 guifg=#c6394c guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=161 ctermbg=255 guifg=#c6394c guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=161 ctermbg=255 guifg=#c6394c guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=161 ctermbg=NONE guifg=#c6394c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=255 guifg=#8b6800 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=255 guifg=#8b6800 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=236 guifg=#ffd506 guibg=#2d3243 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#007f25 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=255 guifg=#007f25 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=255 guifg=#007f25 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=133 ctermbg=NONE guifg=#a348ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=133 ctermbg=NONE guifg=#a348ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=133 ctermbg=NONE guifg=#a348ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=133 ctermbg=NONE guifg=#a348ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=133 ctermbg=NONE guifg=#a348ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=30 ctermbg=255 guifg=#007989 guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=30 ctermbg=NONE guifg=#007989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=25 ctermbg=255 guifg=#006dcc guibg=#fceee0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fceee0 ~
" Color:      gry1 #ecdac9 ~
" Color:      gry2 #666c85 ~
" Color:      gry3 #4a5067 ~
" Color:      gryc #2d3243 ~
" Color:      srch #ffd506 ~
" Color:      grys #2d3243 ~
" Color:      gryp #bead9d ~
" Color:      sprd #f7003c ~
" Color:      spbl #0082ff ~
" Color:      spcy #0093b3 ~
" Color:      spmg #c709dd ~
" Color:      red_ #c6394c ~
" Color:      gold #8b6800 ~
" Color:      gren #007f25 ~
" Color:      cyan #007989 ~
" Color:      blue #006dcc ~
" Color:      mgnt #a348ae ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       gold   none
" Structure          gold   none
" Type               gold   none
" Typedef            gold   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           blue   none
" Identifier         blue   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              red_   none
" Delimiter          red_   none
" Special            red_   none
" SpecialChar        red_   none
" SpecialComment     red_   none
" SpecialKey         red_   none
" Tag                red_   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             mgnt   none
" Include            mgnt   none
" Macro              mgnt   none
" PreCondit          mgnt   none
" PreProc            mgnt   none
" Todo               cyan   gry0   reverse
" Boolean            cyan   none
" Character          cyan   none
" Constant           cyan   none
" Float              cyan   none
" Number             cyan   none
" String             cyan   none
" Visual             blue   gry0   reverse
" Background: dark
" Color:      gry0 #222532 ~
" Color:      gry1 #2d3243 ~
" Color:      gry2 #9d8875 ~
" Color:      gry3 #bead9d ~
" Color:      gryc #ecdac9 ~
" Color:      srch #8d6e19 ~
" Color:      grys #ecdac9 ~
" Color:      gryp #4a5067 ~
" Color:      sprd #ff707e ~
" Color:      spbl #00b4ff ~
" Color:      spcy #00c8d9 ~
" Color:      spmg #ee81f9 ~
" Color:      red_ #ca7375 ~
" Color:      gold #a58949 ~
" Color:      gren #5c9a61 ~
" Color:      cyan #009ba2 ~
" Color:      blue #578fcc ~
" Color:      mgnt #b178b5 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       gold   none
" Structure          gold   none
" Type               gold   none
" Typedef            gold   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           blue   none
" Identifier         blue   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              red_   none
" Delimiter          red_   none
" Special            red_   none
" SpecialChar        red_   none
" SpecialComment     red_   none
" SpecialKey         red_   none
" Tag                red_   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             mgnt   none
" Include            mgnt   none
" Macro              mgnt   none
" PreCondit          mgnt   none
" PreProc            mgnt   none
" Todo               cyan   gry0   reverse
" Boolean            cyan   none
" Character          cyan   none
" Constant           cyan   none
" Float              cyan   none
" Number             cyan   none
" String             cyan   none
" Visual             blue   gry0   reverse
