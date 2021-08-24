"AUTHOR: Alessandro Yorba
"SCRIPT: https://github.com/AlessandroYorba/Alduin

"UPDATED: November 26th, 2019
"CHANGES: Reverted back to original LineNr for all modes

"Arch Linux Package: George Angelopoulos https://github.com/lathan
"Design Inspiration: Karolis Koncevičius https://github.com/KKPMW
"Design Inspiration: Romain Lafourcade https://github.com/romainl
"UI Contributions: jiyyti https://github.com/jiyyt
"UI Contributions: Aramis Razzaghipour arzg https://github.com/arzg
"
"SUPPORT:
"256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
"INSTALL LOCATION:
"Unix users, place alduin.vim in ~/.vim/colors
"Windows users, place alduin.vim in ~\vimfiles\colors

"From your .vimrc add one of the following options
"colorscheme alduin
"
"DARKER GRAY BACKGROUND COLOR:
"let g:alduin_Shout_Dragon_Aspect = 1
"colorscheme alduin
"
"BLACK BACKGROUND COLOR:
"let g:alduin_Shout_Become_Ethereal = 1
"colorscheme alduin
"
"ADDS DEEP RED COLOR FOR SPECIAL HIGHLIGHT GROUPS:
"let g:alduin_Shout_Fire_Breath = 1
"colorscheme alduin
"
"REMOVE SUBTLE BACKGROUND HIGHLIGHTING FROM STRINGS:
"let g:alduin_Shout_Animal_Allegiance = 1
"colorscheme alduin
"
"REMOVES BLOCK MATCHPARENS ADDS UNDERLINE:
"let g:alduin_Shout_Aura_Whisper = 1
"colorscheme alduin
"
"ALDUIN:
set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="alduin"

if !exists( "g:alduin_Shout_Aura_Whisper")
	let g:alduin_Shout_Aura_Whisper = 0
endif

if !exists( "g:alduin_Shout_Fire_Breath" )
	let g:alduin_Shout_Fire_Breath = 0
endif

if !exists("g:alduin_Shout_Animal_Allegiance")
	let g:alduin_Shout_Animal_Allegiance = 0
endif

if !exists("g:alduin_Shout_Dragon_Aspect" )
	let g:alduin_Shout_Dragon_Aspect = 0
endif

if !exists( "g:alduin_Shout_Become_Ethereal" )
	let g:alduin_Shout_Become_Ethereal = 0
endif

" COMMON COLORS AND SETTINGS
highlight PreProc guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Function guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
highlight Statement guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Constant guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
highlight Type guifg=#af875f guibg=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
highlight Label guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Special guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Operator guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Title guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Conditional guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight StorageClass guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight htmlStatement guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight htmlItalic guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight htmlArg guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight cssIdentifier guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight cssClassName guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Structure guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Typedef guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Repeat guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Keyword guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Exception guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Number guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Character guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Boolean guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Float guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Include guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Define guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Comment guifg=#87875f guibg=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE

" VIMSCRIPT
highlight link vimAutoCmdSfxList Type
highlight link vimAutoEventList Identifier
highlight link vimCmdSep Special
highlight link vimCommentTitle SpecialComment
highlight link vimFunction Function
highlight link vimUserFunc Function

"WINDOW UI
highlight MoreMsg guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight SpecialComment guifg=#87875f guibg=NONE gui=reverse ctermfg=101 ctermbg=NONE cterm=reverse
highlight Underlined guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Todo guifg=#af5f00 guibg=NONE gui=reverse ctermfg=130 ctermbg=NONE cterm=reverse
highlight Visual guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight Question guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Search guifg=#dfdfaf guibg=#878787 gui=NONE ctermfg=187 ctermbg=102 cterm=NONE
highlight PmenuSel guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight MatchParen guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE

highlight Error guifg=#af5f5f guibg=#121212 gui=reverse ctermfg=131 ctermbg=233 cterm=reverse
highlight ErrorMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight WarningMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Directory guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Cursor guifg=#000000 guibg=#dfdfaf gui=NONE ctermfg=16 ctermbg=187 cterm=NONE

highlight WildMenu guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight ModeMsg guifg=#dfdfaf guibg=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
highlight Macro guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight PreCondit guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight IncSearch guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

"DIFF
highlight DiffAdd guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight DiffText guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight DiffChange guifg=#005f5f guibg=NONE gui=reverse ctermfg=23 ctermbg=NONE cterm=reverse
highlight DiffDelete guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight link diffAdded DiffAdd
highlight link diffBDiffer WarningMsg
highlight link diffChanged DiffChange
highlight link diffCommon WarningMsg
highlight link diffDiffer WarningMsg
highlight link diffFile Directory
highlight link diffIdentical WarningMsg
highlight link diffIndexLine Number
highlight link diffIsA WarningMsg
highlight link diffNoEOL WarningMsg
highlight link diffOnly WarningMsg
highlight link diffRemoved DiffDelete

"SPELLING
highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
highlight SpellRare guifg=#d75f00 guibg=NONE gui=undercurl ctermfg=166 ctermbg=NONE cterm=undercurl

"DEFAULT
if 1
	"COLORS
	highlight Normal guifg=#dfdfaf guibg=#1c1c1c gui=NONE ctermfg=187 ctermbg=234 cterm=NONE
	highlight String guifg=#ffdf87 guibg=#262626 gui=NONE ctermfg=222 ctermbg=235 cterm=NONE
	"WINDOW UI

	highlight CursorLineNR guifg=#9e9e9e guibg=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
	highlight StatusLine guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#6c6c6c guibg=#121212 gui=NONE ctermfg=242 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#6c6c6c guibg=#121212 gui=NONE ctermfg=242 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#626262 guibg=#262626 gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
	highlight PmenuSbar guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight PmenuThumb guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight TabLineSel guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight TabLine guifg=#6c6c6c guibg=#121212 gui=NONE ctermfg=242 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=#6c6c6c guibg=#121212 gui=NONE ctermfg=242 ctermbg=233 cterm=NONE

	highlight CursorLine guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE

	highlight CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight Folded guifg=#444444 guibg=#121212 gui=NONE ctermfg=238 ctermbg=233 cterm=NONE
	highlight VertSplit guifg=#444444 guibg=#1c1c1c gui=NONE ctermfg=238 ctermbg=234 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight FoldColumn guifg=#87afaf guibg=#1c1c1c gui=NONE ctermfg=109 ctermbg=234 cterm=NONE
	highlight SignColumn guifg=#87875f guibg=#080808 gui=NONE ctermfg=101 ctermbg=233 cterm=NONE
	highlight NonText guifg=#444444 guibg=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
endif

"DARKEST GRAY
if g:alduin_Shout_Dragon_Aspect
	"COLORS
	highlight Normal guifg=#dfdfaf guibg=#121212 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
	highlight String guifg=#ffdf87 guibg=#1c1c1c gui=NONE ctermfg=222 ctermbg=234 cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#949494 guibg=#080808 gui=NONE ctermfg=246 ctermbg=232 cterm=NONE
	highlight StatusLineNC guifg=#626262 guibg=#080808 gui=NONE ctermfg=241 ctermbg=232 cterm=NONE
	highlight StatusLineTerm guifg=#949494 guibg=#080808 gui=NONE ctermfg=246 ctermbg=232 cterm=NONE
	highlight StatusLineTermNC guifg=#626262 guibg=#080808 gui=NONE ctermfg=241 ctermbg=232 cterm=NONE

	highlight Pmenu guifg=#626262 guibg=#1c1c1c gui=NONE ctermfg=241 ctermbg=234 cterm=NONE
	highlight PmenuSbar guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight PmenuThumb guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight TabLine guifg=#626262 guibg=#080808 gui=NONE ctermfg=241 ctermbg=232 cterm=NONE
	highlight TabLineSel guifg=#949494 guibg=#080808 gui=NONE ctermfg=246 ctermbg=232 cterm=NONE
	highlight TabLineFill guifg=#262626 guibg=#080808 gui=NONE ctermfg=241 ctermbg=232 cterm=NONE

	highlight CursorLine guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE

	highlight CursorColumn guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
	highlight Folded guifg=#444444 guibg=#080808 gui=NONE ctermfg=238 ctermbg=232 cterm=NONE
	highlight VertSplit guifg=#444444 guibg=#121212 gui=NONE ctermfg=238 ctermbg=233 cterm=NONE
	highlight LineNr guifg=#444444 guibg=#080808 gui=NONE ctermfg=238 ctermbg=232 cterm=NONE
	highlight FoldColumn guifg=#87afaf guibg=#121212 gui=NONE ctermfg=109 ctermbg=233 cterm=NONE
	highlight SignColumn guifg=#87875f guibg=#080808 gui=NONE ctermfg=101 ctermbg=232 cterm=NONE
	highlight NonText guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#262626 guibg=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE
endif

"BLACK
if g:alduin_Shout_Become_Ethereal
	"COLORS
	highlight Normal guifg=#dfdfaf guibg=#080808 gui=NONE ctermfg=187 ctermbg=232 cterm=NONE
	highlight String guifg=#ffdf87 guibg=#121212 gui=NONE ctermfg=222 ctermbg=233 cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#8a8a8a guibg=#000000 gui=NONE ctermfg=245 ctermbg=16 cterm=NONE
	highlight StatusLineNC guifg=#585858 guibg=#000000 gui=NONE ctermfg=240 ctermbg=16 cterm=NONE
	highlight StatusLineTerm guifg=#8a8a8a guibg=#000000 gui=NONE ctermfg=245 ctermbg=16 cterm=NONE
	highlight StatusLineTermNC guifg=#585858 guibg=#000000 gui=NONE ctermfg=240 ctermbg=16 cterm=NONE

	highlight Pmenu guifg=#585858 guibg=#121212 gui=NONE ctermfg=240 ctermbg=233 cterm=NONE
	highlight PmenuSbar guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight PmenuThumb guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight TabLine guifg=#585858 guibg=#000000 gui=NONE ctermfg=240 ctermbg=16 cterm=NONE
	highlight TabLineSel guifg=#8a8a8a guibg=#000000 gui=NONE ctermfg=245 ctermbg=16 cterm=NONE
	highlight TabLineFill guifg=#585858 guibg=#000000 gui=NONE ctermfg=240 ctermbg=16 cterm=NONE

	highlight CursorLine guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE

	highlight CursorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
	highlight Folded guifg=#444444 guibg=#000000 gui=NONE ctermfg=238 ctermbg=16 cterm=NONE
	highlight VertSplit guifg=#444444 guibg=#080808 gui=NONE ctermfg=238 ctermbg=232 cterm=NONE
	highlight LineNr guifg=#444444 guibg=#000000 gui=NONE ctermfg=238 ctermbg=16 cterm=NONE
	highlight FoldColumn guifg=#87afaf guibg=#080808 gui=NONE ctermfg=109 ctermbg=232 cterm=NONE
	highlight SignColumn guifg=#87875f guibg=#000000 gui=NONE ctermfg=101 ctermbg=16 cterm=NONE
	highlight NonText guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
endif

"REMOVE BACKGROUND FROM STRINGS
if g:alduin_Shout_Animal_Allegiance
	"COLORS
	highlight String guifg=#ffdf87 guibg=NONE ctermfg=222 ctermbg=NONE cterm=NONE gui=NONE
endif

"REMOVE BLOCK MATCHPARENS - ADDS UNDERLINE
if g:alduin_Shout_Aura_Whisper
	"WINDOW UI
	highlight MatchParen guifg=#eeeeee guibg=#1c1c1c gui=underline ctermfg=255 ctermbg=234 cterm=underline
endif

"DEEP RED COLOR
if g:alduin_Shout_Fire_Breath
	"COLORS
	highlight Title guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
	highlight Special guifg=#af0000 guibg=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
	"WINDOW UI
	highlight Search guifg=#dfdfaf guibg=#5f0000 gui=NONE ctermfg=187 ctermbg=52 cterm=NONE
endif

"LICENSE
"Copyright (c) 2019 Alessandro Yorba
"
"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the "Software"), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:
"
"The above copyright notice and this permission notice shall be included in
"all copies or substantial portions of the Software.
"
"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"THE SOFTWARE.
