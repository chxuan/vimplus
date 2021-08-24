" This file is built by ../source.vim.
" Do not modify this file directly.
highlight clear
if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'scheakur'

if &background == 'light'
	hi Normal guifg=#2e2e2e guibg=#f0f0e5 gui=none ctermfg=234 ctermbg=255 cterm=none
	hi ColorColumn guibg=#dfd6d1 ctermbg=145
	hi Comment guifg=#878965 ctermfg=101
	hi Conceal guifg=#0c6cc0 guibg=#f0f0e5 gui=none ctermfg=25 ctermbg=188
	hi Constant guifg=#00695c ctermfg=23
	hi Cursor guibg=#f39812 ctermbg=172
	hi CursorColumn guibg=#cce0ef ctermbg=146
	hi CursorIM guibg=#4a9f68 ctermbg=65
	hi CursorLine guibg=#cce0ef gui=none ctermbg=153 cterm=none
	hi CursorLineNr guifg=#567686 guibg=#cce0ef gui=none ctermfg=60 ctermbg=146
	hi DiffAdd guibg=#d0ead0 ctermbg=151
	hi DiffChange guibg=#fdfec9 ctermbg=229
	hi DiffDelete guifg=#ffe3e5 guibg=#ffe3e5 ctermfg=174 ctermbg=174
	hi DiffText guibg=#fed910 ctermbg=178
	hi Directory guifg=#1177dd ctermfg=25
	hi Error guifg=#d1160b guibg=#ffe3e5 ctermfg=124 ctermbg=223
	hi ErrorMsg guifg=#d1160b guibg=#ffe3e5 ctermfg=124 ctermbg=223
	hi FoldColumn guifg=#04530d guibg=#d0ead0 ctermfg=22 ctermbg=151
	hi Folded guifg=#04530d guibg=#d0ead0 ctermfg=22 ctermbg=151
	hi Function guifg=#cb1265 ctermfg=125
	hi Identifier guifg=#546e7a ctermfg=59
	hi Ignore guifg=#666666 ctermfg=240
	hi IncSearch guifg=#2e2e2e guibg=#f4b3c2 gui=none ctermfg=234 ctermbg=218
	hi LineNr guifg=#567686 guibg=#e2e2d0 ctermfg=236 ctermbg=145
	hi MatchParen guifg=#0e8ed3 guibg=#dbf2ff ctermfg=31 ctermbg=152
	hi ModeMsg guifg=#337ca3 ctermfg=24
	hi MoreMsg guifg=#1e7b3d ctermfg=22
	hi NonText guifg=#7878ba gui=none ctermfg=61
	hi Operator guifg=#6b118a ctermfg=54
	hi Pmenu guifg=#2e2e2e guibg=#f6e4e7 ctermfg=235 ctermbg=231
	hi PmenuSbar guifg=#2e2e2e guibg=#f6e4e7 ctermfg=235 ctermbg=231
	hi PmenuSel guifg=#2e2e2e guibg=#f4b3c2 gui=none ctermfg=234 ctermbg=218
	hi PmenuThumb guifg=#2e2e2e guibg=#f4b3c2 gui=none ctermfg=234 ctermbg=218
	hi PreProc guifg=#6b118a ctermfg=54
	hi Question guifg=#008080 ctermfg=30
	hi Search guifg=#2e2e2e guibg=#e9e7ac ctermfg=235 ctermbg=186
	hi SignColumn guifg=#567686 guibg=#e2e2d0 ctermfg=236 ctermbg=145
	hi Special guifg=#1041a8 ctermfg=18
	hi SpecialKey guifg=#aabbcc ctermfg=109
	hi SpellBad guifg=#d1160b guibg=#ffe3e5 gui=undercurl ctermfg=124 ctermbg=223 guisp=#d1160b cterm=underline
	hi SpellCap guifg=#1041a8 guibg=#dbf2ff gui=undercurl ctermfg=18 ctermbg=152 guisp=#1041a8 cterm=underline
	hi SpellLocal guifg=#4d4214 guibg=#fdfec9 gui=undercurl ctermfg=52 ctermbg=229 guisp=#4d4214 cterm=underline
	hi SpellRare guifg=#04530d guibg=#d0ead0 gui=undercurl ctermfg=22 ctermbg=151 guisp=#04530d cterm=underline
	hi Statement guifg=#0c6cc0 gui=none ctermfg=25
	hi StatusLine guifg=#dcdcdc guibg=#4a4642 gui=none ctermfg=251 ctermbg=237
	hi StatusLineNC guifg=#dcdcdc guibg=#7a7672 gui=italic ctermfg=251 ctermbg=242 cterm=none
	hi String guifg=#1041a8 ctermfg=18
	hi TabLine guifg=#dcdcdc guibg=#4a4642 gui=none ctermfg=251 ctermbg=237
	hi TabLineFill guifg=#dcdcdc guibg=#4a4642 gui=none ctermfg=251 ctermbg=237
	hi TabLineSel guifg=#4a4642 gui=none ctermfg=237
	hi Tag guifg=#a25a09 ctermfg=94
	hi Title guifg=#1041a8 gui=none ctermfg=18
	hi Todo guifg=#4d4214 guibg=#fdfec9 ctermfg=52 ctermbg=229
	hi Type guifg=#00695c gui=none ctermfg=23
	hi Underlined guifg=#0c6cc0 ctermfg=25
	hi VertSplit guifg=#4a4642 guibg=#4a4642 gui=none ctermfg=237 ctermbg=237
	hi Visual guibg=#cce0ef ctermbg=153
	hi WarningMsg guifg=#ea6042 ctermfg=166
	hi WildMenu guifg=#2e2e2e guibg=#f0f0e5 gui=none ctermfg=234 ctermbg=255 cterm=none
else
	hi Normal guifg=#dadad5 guibg=#121713 gui=none ctermfg=255 ctermbg=234 cterm=none
	hi ColorColumn guibg=#262f21 ctermbg=235
	hi Comment guifg=#707073 ctermfg=241
	hi Conceal guifg=#91b5d4 guibg=#121713 gui=none ctermfg=109 ctermbg=233
	hi Constant guifg=#70a395 ctermfg=66
	hi Cursor guibg=#f39812 ctermbg=172
	hi CursorColumn guibg=#23343d ctermbg=235
	hi CursorIM guibg=#4a9f68 ctermbg=65
	hi CursorLine guibg=#23343d gui=none ctermbg=24 cterm=none
	hi CursorLineNr guifg=#7c8884 guibg=#23343d gui=none ctermfg=66 ctermbg=235
	hi DiffAdd guibg=#013a06 gui=none ctermfg=71 ctermbg=16
	hi DiffChange guibg=#4a4707 ctermfg=178 ctermbg=235
	hi DiffDelete guifg=#491008 guibg=#491008 ctermfg=237 ctermbg=237
	hi DiffText guifg=#fefd03 guibg=#7b7b00 ctermfg=226 ctermbg=58
	hi Directory guifg=#6aaaea ctermfg=68
	hi Error guifg=#ff8485 guibg=#121713 ctermfg=174 ctermbg=234
	hi ErrorMsg guifg=#ff8485 guibg=#121713 ctermfg=174 ctermbg=234
	hi FoldColumn guifg=#a0cab0 guibg=#303a3b ctermfg=109 ctermbg=236
	hi Folded guifg=#a0cab0 guibg=#303a3b ctermfg=109 ctermbg=236
	hi Function guifg=#d789c8 ctermfg=168
	hi Identifier guifg=#91a8a5 ctermfg=102
	hi Ignore guifg=#666666 ctermfg=240
	hi IncSearch guifg=#dadad5 guibg=#d51487 gui=none ctermfg=251 ctermbg=162
	hi LineNr guifg=#7c8884 guibg=#132423 ctermfg=66 ctermbg=234
	hi MatchParen guifg=#dadad5 guibg=#088b8c ctermfg=251 ctermbg=30
	hi ModeMsg guifg=#6badd1 ctermfg=67
	hi MoreMsg guifg=#add581 ctermfg=108
	hi NonText guifg=#7878ba gui=none ctermfg=61
	hi Operator guifg=#8d89c7 ctermfg=103
	hi Pmenu guifg=#dadad5 guibg=#292c2f ctermfg=251 ctermbg=237
	hi PmenuSbar guifg=#dadad5 guibg=#292c2f ctermfg=251 ctermbg=237
	hi PmenuSel guifg=#dadad5 guibg=#d51487 gui=none ctermfg=251 ctermbg=162
	hi PmenuThumb guifg=#dadad5 guibg=#d51487 gui=none ctermfg=251 ctermbg=162
	hi PreProc guifg=#8d89c7 ctermfg=103
	hi Question guifg=#00a0a0 ctermfg=30
	hi Search guifg=#121713 guibg=#c9c73c ctermfg=233 ctermbg=142
	hi SignColumn guifg=#7c8884 guibg=#132423 ctermfg=66 ctermbg=234
	hi Special guifg=#a7a053 ctermfg=101
	hi SpecialKey guifg=#3a4857 ctermfg=59
	hi SpellBad guifg=#ff8485 guibg=#121713 gui=undercurl ctermfg=174 ctermbg=233 guisp=#ff8485 cterm=underline
	hi SpellCap guifg=#a7a053 guibg=#121713 gui=undercurl ctermfg=101 ctermbg=233 guisp=#a7a053 cterm=underline
	hi SpellLocal guifg=#fdfec9 guibg=#121713 gui=undercurl ctermfg=187 ctermbg=233 guisp=#fdfec9 cterm=underline
	hi SpellRare guifg=#a0cab0 guibg=#121713 gui=undercurl ctermfg=109 ctermbg=233 guisp=#a0cab0 cterm=underline
	hi Statement guifg=#91b5d4 gui=none ctermfg=109
	hi StatusLine guifg=#b2b5b2 guibg=#292c2f gui=none ctermfg=247 ctermbg=237
	hi StatusLineNC guifg=#727572 guibg=#020508 gui=italic ctermfg=235 ctermbg=232 cterm=none
	hi String guifg=#a7a053 ctermfg=101
	hi TabLine guifg=#b2b5b2 guibg=#292c2f gui=none ctermfg=247 ctermbg=237
	hi TabLineFill guifg=#b2b5b2 guibg=#292c2f gui=none ctermfg=247 ctermbg=237
	hi TabLineSel guifg=#d789c8 gui=none ctermfg=139
	hi Tag guifg=#d38d6b ctermfg=137
	hi Title guifg=#a7a053 gui=none ctermfg=101
	hi Todo guifg=#fdfec9 guibg=#4d4214 ctermfg=187 ctermbg=234
	hi Type guifg=#5f94ca gui=none ctermfg=67
	hi Underlined guifg=#91b5d4 ctermfg=109
	hi VertSplit guifg=#292c2f guibg=#292c2f gui=none ctermfg=237 ctermbg=237
	hi Visual guibg=#23343d ctermbg=24
	hi WarningMsg guifg=#e0b088 ctermfg=144
	hi WildMenu guifg=#dadad5 guibg=#121713 gui=none ctermfg=255 ctermbg=234 cterm=none
endif
