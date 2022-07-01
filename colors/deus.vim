" -----------------------------------------------------------------------------
" File: deus.vim
" Description: a retro-modern colorscheme in Vim
" Author: ajmwagar
" Source: https://github.com/ajmwagar/vim-deus
" Last Modified: 21 June 2019
" -----------------------------------------------------------------------------

" Setup Colors/Palette {{{
" Initialisation: {{{

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='deus'

if !has('gui_running') && &t_Co != 256
  finish
endif

" }}}
" Global Settings: {{{

if !exists('g:deus_bold')
  let g:deus_bold=1
endif
if !exists('g:deus_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:deus_italic=1
  else
    let g:deus_italic=0
  endif
endif
if !exists('g:deus_undercurl')
  let g:deus_undercurl=1
endif
if !exists('g:deus_underline')
  let g:deus_underline=1
endif
if !exists('g:deus_inverse')
  let g:deus_inverse=1
endif

if !exists('g:deus_guisp_fallback') || index(['fg', 'bg'], g:deus_guisp_fallback) == -1
  let g:deus_guisp_fallback='NONE'
endif

if !exists('g:deus_improved_strings')
  let g:deus_improved_strings=0
endif

if !exists('g:deus_improved_warnings')
  let g:deus_improved_warnings=0
endif

if !exists('g:deus_termcolors')
  let g:deus_termcolors=256
endif

if !exists('g:deus_invert_indent_guides')
  let g:deus_invert_indent_guides=0
endif

if !exists('g:deus_contrast_dark')
  let g:deus_contrast_dark='medium'
endif

if !exists('g:deus_contrast_light')
  let g:deus_contrast_light='medium'
endif

let s:is_dark=(&background == 'dark')

" }}}
" Palette: {{{

" setup palette dictionary
let s:ds = {}


" fill it with absolute colors
let s:ds.dark0       = ['#2C323B', 235]     " 40-40-40 Background
let s:ds.dark1       = ['#3c3836', 237]     " 60-56-54
let s:ds.dark2       = ['#242a32', 239]     " 80-73-69
let s:ds.dark3       = ['#665c54', 241]     " 102-92-84
let s:ds.dark4       = ['#7c6f64', 243]     " 124-111-100
let s:ds.dark4_256   = ['#7c6f64', 243]     " 124-111-100

let s:ds.gray_245    = ['#928374', 245]     " 146-131-116
let s:ds.gray_244    = ['#928374', 244]     " 146-131-116

let s:ds.light0      = ['#d2d2d2', 229]     " 253-244-193
let s:ds.light1      = ['#ebdbb2', 223]     " 235-219-178
let s:ds.light2      = ['#d5c4a1', 250]     " 213-196-161
let s:ds.light3      = ['#bdae93', 248]     " 189-174-147
let s:ds.light4      = ['#a89984', 246]     " 168-153-132
let s:ds.light4_256  = ['#a89984', 246]     " 168-153-132

let s:ds.bright_red     = ['#fb4934', 167]     " 251-73-52
let s:ds.bright_green   = ['#98C379', 142]     " 184-187-38
let s:ds.bright_yellow  = ['#fabd2f', 214]     " 250-189-47
let s:ds.bright_blue    = ['#83a598', 109]     " 131-165-152
let s:ds.bright_purple  = ['#C678DD', 175]     " 211-134-155
let s:ds.bright_aqua    = ['#8ec07c', 108]     " 142-192-124
let s:ds.bright_orange  = ['#fe8019', 208]     " 254-128-25

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:deus_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:deus_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:deus_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:deus_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:deus_inverse == 0
  let s:inverse = ''
endif

" }}}
" Setup Colors: {{{

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

" determine relative colors
  let s:bg0  = s:ds.dark0
  let s:bg1  = s:ds.dark1
  let s:bg2  = s:ds.dark2
  let s:bg3  = s:ds.dark3
  let s:bg4  = s:ds.dark4

  let s:gray = s:ds.gray_245

  let s:fg0 = s:ds.light0
  let s:fg1 = s:ds.light1
  let s:fg2 = s:ds.light2
  let s:fg3 = s:ds.light3
  let s:fg4 = s:ds.light4

  let s:fg4_256 = s:ds.light4_256

  let s:red    = s:ds.bright_red
  let s:green  = s:ds.bright_green
  let s:yellow = s:ds.bright_yellow
  let s:blue   = s:ds.bright_blue
  let s:purple = s:ds.bright_purple
  let s:aqua   = s:ds.bright_aqua
  let s:orange = s:ds.bright_orange

" reset to 16 colors fallback
"if g:deus_termcolors == 16
  "let s:bg0[1]    = NONE
  "let s:fg4[1]    = 7
  "let s:gray[1]   = 8
  "let s:red[1]    = 9
  "let s:green[1]  = 10
  "let s:yellow[1] = 11
  "let s:blue[1]   = 12
  "let s:purple[1] = 5
  "let s:aqua[1]   = 14
  "let s:fg1[1]    = 15
"endif

" save current relative colors back to palette dictionary
let s:ds.bg0 = s:bg0
let s:ds.bg1 = s:bg1
let s:ds.bg2 = s:bg2
let s:ds.bg3 = s:bg3
let s:ds.bg4 = s:bg4

let s:ds.gray = s:gray

let s:ds.fg0 = s:fg0
let s:ds.fg1 = s:fg1
let s:ds.fg2 = s:fg2
let s:ds.fg3 = s:fg3
let s:ds.fg4 = s:fg4

let s:ds.fg4_256 = s:fg4_256

let s:ds.red    = s:red
let s:ds.green  = s:green
let s:ds.yellow = s:yellow
let s:ds.blue   = s:blue
let s:ds.purple = s:purple
let s:ds.aqua   = s:aqua
let s:ds.orange = s:orange

" }}}
" Overload Setting: {{{

let s:hls_cursor = s:orange
if exists('g:deus_hls_cursor')
  let s:hls_cursor = get(s:ds, g:deus_hls_cursor)
endif

let s:number_column = s:bg4
let s:sign_column = s:bg2

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:deus_sign_column')
    let s:sign_column = get(s:ds, g:deus_sign_column)
  endif
endif

let s:color_column = s:bg1
if exists('g:deus_color_column')
  let s:color_column = get(s:ds, g:deus_color_column)
endif

let s:vert_split = s:bg2
if exists('g:deus_vert_split')
  let s:vert_split = get(s:ds, g:deus_vert_split)
endif

let s:invert_signs = ''
if exists('g:deus_invert_signs')
  if g:deus_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:deus_invert_selection')
  if g:deus_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:deus_invert_tabline')
  if g:deus_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:deus_italicize_comments')
  if g:deus_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:deus_italicize_strings')
  if g:deus_italicize_strings == 1
    let s:italicize_strings = s:italic
  endif
endif

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:deus_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:deus_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

" }}}
" deus Hi Groups: {{{

" memoize common hi groups
call s:HL('deusFg0', s:fg0)
call s:HL('deusFg1', s:fg1)
call s:HL('deusFg2', s:fg2)
call s:HL('deusFg3', s:fg3)
call s:HL('deusFg4', s:fg4)
call s:HL('deusGray', s:gray)
call s:HL('deusBg0', s:bg0)
call s:HL('deusBg1', s:bg1)
call s:HL('deusBg2', s:bg2)
call s:HL('deusBg3', s:bg3)
call s:HL('deusBg4', s:bg4)

call s:HL('deusRed', s:red)
call s:HL('deusRedBold', s:red, s:none, s:bold)
call s:HL('deusGreen', s:green)
call s:HL('deusGreenBold', s:green, s:none, s:bold)
call s:HL('deusYellow', s:yellow)
call s:HL('deusYellowBold', s:yellow, s:none, s:bold)
call s:HL('deusBlue', s:blue)
call s:HL('deusBlueBold', s:blue, s:none, s:bold)
call s:HL('deusPurple', s:purple)
call s:HL('deusPurpleBold', s:purple, s:none, s:bold)
call s:HL('deusAqua', s:aqua)
call s:HL('deusAquaBold', s:aqua, s:none, s:bold)
call s:HL('deusOrange', s:orange)
call s:HL('deusOrangeBold', s:orange, s:none, s:bold)

call s:HL('deusRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('deusGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('deusYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('deusBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('deusPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('deusAquaSign', s:aqua, s:sign_column, s:invert_signs)

" }}}
" }}}
" Vanilla colorscheme {{{
" General UI: {{{

" Normal text
call s:HL('Normal', s:fg1, s:bg0)

" Correct background (see issue #7):
" --- Problem with changing between dark and light on 256 color terminal
" --- https://github.com/morhetz/deus/issues/7
if s:is_dark
  set background=dark
else
  set background=light
endif

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bg2)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:bg4, s:vim_bg, s:invert_tabline)
  " Active tab page label
  call s:HL('TabLineSel', s:vim_bg, s:bg4, s:bold . s:invert_tabline)

  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:none, s:bg3, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:color_column)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:fg1, s:bg2)
endif

" Weird black color breaks 
hi! link NonText deusGreen 
hi! link Ignore deusPurple 
hi! link SpecialKey deusOrange

call s:HL('Visual',    s:none,  s:bg3, s:invert_selection)
hi! link VisualNOS Visual

call s:HL('Search',    s:bg0, s:yellow)
call s:HL('IncSearch', s:bg0, s:hls_cursor)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bg2, s:fg1, s:bold . s:inverse)
call s:HL('StatusLineNC', s:bg2, s:fg1, s:bold . s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:fg4, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:bg2, s:bold)

" Directory names, special names in listing
hi! link Directory deusGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title deusGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:red, s:bg1, s:bold)
" More prompt: -- More --
hi! link MoreMsg deusYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg deusYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question deusOrangeBold
" Warning messages
hi! link WarningMsg deusRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg2, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg2)

" }}}
" Cursor: {{{

" Character under cursor
"call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

if g:deus_improved_strings == 0
  hi! link Special deusOrange
else
  call s:HL('Special', s:bg1, s:orange, s:italic)
endif

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('Error', s:red, s:vim_bg, s:bold . s:inverse)
"call s:HL("Error", { "fg": s:red, "bg": s:vim_bg }) " any erroneous construct

" Generic statement
hi! link Statement deusRed
" if, then, else, endif, swicth, etc.
hi! link Conditional deusRed
" for, do, while, etc.
hi! link Repeat deusRed
" case, default, etc.
hi! link Label deusRed
" try, catch, throw
hi! link Exception deusRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword deusRed

" Variable name
hi! link Identifier deusBlue
" Function name
hi! link Function deusGreenBold

" Generic preprocessor
hi! link PreProc deusAqua
" Preprocessor #include
hi! link Include deusAqua
" Preprocessor #define
hi! link Define deusAqua
" Same as Define
hi! link Macro deusAqua
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit deusAqua

" Generic constant
hi! link Constant deusPurple
" Character constant: 'c', '/n'
hi! link Character deusPurple
" String constant: "this is a string"
if g:deus_improved_strings == 0
  call s:HL('String',  s:green, s:none, s:italicize_strings)
else
  call s:HL('String',  s:bg1, s:fg1, s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean deusPurple
" Number constant: 234, 0xff
hi! link Number deusPurple
" Floating point constant: 2.3e10
hi! link Float deusPurple

" Generic type
hi! link Type deusYellow
" static, register, volatile, etc
hi! link StorageClass deusOrange
" struct, union, enum, etc.
hi! link Structure deusAqua
" typedef
hi! link Typedef deusYellow

" }}}
" Completion Menu: {{{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:fg1, s:bg2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bg2, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:bg2)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:bg4)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, s:bg0, s:inverse)
call s:HL('DiffAdd',    s:green, s:bg0, s:inverse)
"call s:HL('DiffChange', s:bg0, s:blue)
"call s:HL('DiffText',   s:bg0, s:yellow)

" Alternative setting
call s:HL('DiffChange', s:aqua, s:bg0, s:inverse)
call s:HL('DiffText',   s:yellow, s:bg0, s:inverse)

" }}}
" Spelling: {{{

if has("spell")
  " Not capitalised word, or compile warnings
  if g:deus_improved_warnings == 0
    call s:HL('SpellCap',   s:none, s:none, s:undercurl, s:red)
  else
    call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  endif
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:aqua)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:purple)
endif

" }}}
" }}}
" Plugin specific {{{
" Cocnvim: {{{
" Symbols
highlight link CocErrorSign deusRedSign
highlight link CocWarningSign deusYellowSign
highlight link CocInfoSign deusAquaSign
highlight link CocHintSign deusGreenSign

" Text highlights
call s:HL('CocHighlightText', s:fg1, s:bg2)
"}}}
" EasyMotion: {{{

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" }}}
" Sneak: {{{

hi! link SneakPluginTarget Search
hi! link SneakStreakTarget Search
call s:HL('SneakStreakMask', s:yellow, s:yellow)
hi! link SneakStreakStatusLine Search

" }}}
" Indent Guides: {{{

if !exists('g:indent_guides_auto_colors')
  let g:indent_guides_auto_colors = 0
endif

if g:indent_guides_auto_colors == 0
  if g:deus_invert_indent_guides == 0
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg1)
  else
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2, s:inverse)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg3, s:inverse)
  endif
endif

" }}}
" IndentLine: {{{

if !exists('g:indentLine_color_term')
  let g:indentLine_color_term = s:bg2[1]
endif
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:bg2[0]
endif

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: {{{

hi! link GitGutterAdd deusGreenSign
hi! link GitGutterChange deusAquaSign
hi! link GitGutterDelete deusRedSign
hi! link GitGutterChangeDelete deusAquaSign

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile deusGreen
hi! link gitcommitDiscardedFile deusRed

" }}}
" Signify: {{{

hi! link SignifySignAdd deusGreenSign
hi! link SignifySignChange deusAquaSign
hi! link SignifySignDelete deusRedSign
" hi! SignifySignAdd guibg=#242a32 guifg=#99c379
" hi! SignifySignDelete guibg=#242a32 guifg=#fb4733
" hi! SignifySignChange guibg=#242a32 guifg=#8ec07b

" }}}
" Syntastic: {{{

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign deusRedSign
hi! link SyntasticWarningSign deusYellowSign
hi! link AleWarningSign deusYellowSign
hi! link AleErrorSign deusRedSign

" }}}
" Signature: {{{
hi! link SignatureMarkText   deusBlueSign
hi! link SignatureMarkerText deusPurpleSign

" }}}
" ShowMarks: {{{

hi! link ShowMarksHLl deusBlueSign
hi! link ShowMarksHLu deusBlueSign
hi! link ShowMarksHLo deusBlueSign
hi! link ShowMarksHLm deusBlueSign

" }}}
" CtrlP: {{{

hi! link CtrlPMatch deusYellow
hi! link CtrlPNoEntries deusRed
hi! link CtrlPPrtBase deusBg2
hi! link CtrlPPrtCursor deusBlue
hi! link CtrlPLinePre deusBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" }}}
" FZF: {{{
let g:fzf_colors =
      \ {
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

call s:HL('NormalFloat', s:fg1, s:bg2)
"
" }}}
" Startify: {{{

hi! link StartifyBracket deusFg3
hi! link StartifyFile deusFg0
hi! link StartifyNumber deusBlue
hi! link StartifyPath deusGray
hi! link StartifySlash deusGray
hi! link StartifySection deusYellow
hi! link StartifySpecial deusBg2
hi! link StartifyHeader deusOrange
hi! link StartifyFooter deusBg2

" }}}
" Vimshell: {{{

let g:vimshell_escape_colors = [
  \ s:bg4[0], s:red[0], s:green[0], s:yellow[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg4[0],
  \ s:bg0[0], s:red[0], s:green[0], s:orange[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg0[0]
  \ ]

" }}}
" BufTabLine: {{{

call s:HL('BufTabLineCurrent', s:bg0, s:green)
call s:HL('BufTabLineActive', s:fg4, s:bg2)
call s:HL('BufTabLineHidden', s:fg1, s:bg2)
call s:HL('BufTabLineFill', s:bg0, s:bg2)

hi StatusLine ctermbg=10 ctermfg=10 cterm=bold guibg=NONE guifg=NONE gui=NONE
hi StatusLineNC ctermbg=10 ctermfg=10 cterm=NONE guibg=NONE guifg=NONE gui=NONE

" }}}
" }}}
" Language syntax {{{
" Diff: {{{

hi! link diffAdded deusGreen
hi! link diffRemoved deusRed
hi! link diffChanged deusAqua

hi! link diffFile deusOrange
hi! link diffNewFile deusYellow

hi! link diffLine deusBlue

" }}}
" Html: {{{

hi! link htmlTag deusBlue
hi! link htmlEndTag deusBlue

hi! link htmlTagName deusAquaBold
hi! link htmlArg deusAqua

hi! link htmlScriptTag deusPurple
hi! link htmlTagN deusFg1
hi! link htmlSpecialTagName deusAquaBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar deusOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag deusBlue
hi! link xmlEndTag deusBlue
hi! link xmlTagName deusBlue
hi! link xmlEqual deusBlue
hi! link docbkKeyword deusAquaBold

hi! link xmlDocTypeDecl deusGray
hi! link xmlDocTypeKeyword deusPurple
hi! link xmlCdataStart deusGray
hi! link xmlCdataCdata deusPurple
hi! link dtdFunction deusGray
hi! link dtdTagName deusPurple

hi! link xmlAttrib deusAqua
hi! link xmlProcessingDelim deusGray
hi! link dtdParamEntityPunct deusGray
hi! link dtdParamEntityDPunct deusGray
hi! link xmlAttribPunct deusGray

hi! link xmlEntity deusOrange
hi! link xmlEntityPunct deusOrange
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:fg4_256, s:none, s:bold . s:italicize_comments)

hi! link vimNotation deusOrange
hi! link vimBracket deusOrange
hi! link vimMapModKey deusOrange
hi! link vimFuncSID deusFg3
hi! link vimSetSep deusFg3
hi! link vimSep deusFg3
hi! link vimContinue deusFg3

" }}}
" Clojure: {{{

hi! link clojureKeyword deusBlue
hi! link clojureCond deusOrange
hi! link clojureSpecial deusOrange
hi! link clojureDefine deusOrange

hi! link clojureFunc deusYellow
hi! link clojureRepeat deusYellow
hi! link clojureCharacter deusAqua
hi! link clojureStringEscape deusAqua
hi! link clojureException deusRed

hi! link clojureRegexp deusAqua
hi! link clojureRegexpEscape deusAqua
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen deusFg3
hi! link clojureAnonArg deusYellow
hi! link clojureVariable deusBlue
hi! link clojureMacro deusOrange

hi! link clojureMeta deusYellow
hi! link clojureDeref deusYellow
hi! link clojureQuote deusYellow
hi! link clojureUnquote deusYellow

" }}}
" C: {{{

hi! link cOperator deusPurple
hi! link cStructure deusOrange

" }}}
" C++ {{{

hi! link  NamespaceTag deusPurpleBold
hi! link  NamespaceAliasTag deusPurpleBold
hi! link  ClassTag duesOrange
hi! link  StructureTag deusOrange
hi! link  EnumTag deusAqua
hi! link  EnumValueTag deusAqua
hi! link  UnionTag deusPurple
hi! link  FieldTag deusPurple
hi! link  LocalVariableTag deusOrange
hi! link  FunctionTag deusGreen 
hi! link  MethodTag deusGreen
hi! link  FunctionParameterTag deusPurpleBold 
hi! link  TemplateTypeParameterTag deusPurple
hi! link  TemplateNonTypeParameterTag deusRedBold
hi! link  TemplateTemplateParameterTag deusRed
hi! link  MacroDefinitionTag deusBlue
hi! link  MacroInstantiationTag deusBlue
hi! link  TypedefTag deusPurple
hi! link  UsingDirectiveTag deusOrange
hi! link  UsingDeclarationTag deusOrange


" }}}
" Python: {{{

hi! link pythonBuiltin deusOrange
hi! link pythonBuiltinObj deusOrange
hi! link pythonBuiltinFunc deusOrange
hi! link pythonFunction deusAqua
hi! link pythonDecorator deusRed
hi! link pythonInclude deusBlue
hi! link pythonImport deusBlue
hi! link pythonRun deusBlue
hi! link pythonCoding deusBlue
hi! link pythonOperator deusRed
hi! link pythonExceptions deusPurple
hi! link pythonBoolean deusPurple
hi! link pythonDot deusFg3

" }}}
" CSS: {{{

hi! link cssBraces deusBlue
hi! link cssFunctionName deusYellow
hi! link cssIdentifier deusOrange
hi! link cssClassName deusGreen
hi! link cssColor deusBlue
hi! link cssSelectorOp deusBlue
hi! link cssSelectorOp2 deusBlue
hi! link cssImportant deusGreen
hi! link cssVendor deusFg1

hi! link cssTextProp deusAqua
hi! link cssAnimationProp deusAqua
hi! link cssUIProp deusYellow
hi! link cssTransformProp deusAqua
hi! link cssTransitionProp deusAqua
hi! link cssPrintProp deusAqua
hi! link cssPositioningProp deusYellow
hi! link cssBoxProp deusAqua
hi! link cssFontDescriptorProp deusAqua
hi! link cssFlexibleBoxProp deusAqua
hi! link cssBorderOutlineProp deusAqua
hi! link cssBackgroundProp deusAqua
hi! link cssMarginProp deusAqua
hi! link cssListProp deusAqua
hi! link cssTableProp deusAqua
hi! link cssFontProp deusAqua
hi! link cssPaddingProp deusAqua
hi! link cssDimensionProp deusAqua
hi! link cssRenderProp deusAqua
hi! link cssColorProp deusAqua
hi! link cssGeneratedContentProp deusAqua

" }}}
" JavaScript: {{{

hi! link javaScriptBraces deusFg1
hi! link javaScriptFunction deusAqua
hi! link javaScriptIdentifier deusRed
hi! link javaScriptMember deusBlue
hi! link javaScriptNumber deusPurple
hi! link javaScriptNull deusPurple
hi! link javaScriptParens deusFg3

" }}}
" YAJS: {{{

hi! link javascriptImport deusAqua
hi! link javascriptExport deusAqua
hi! link javascriptClassKeyword deusAqua
hi! link javascriptClassExtends deusAqua
hi! link javascriptDefault deusAqua

hi! link javascriptClassName deusYellow
hi! link javascriptClassSuperName deusYellow
hi! link javascriptGlobal deusYellow

hi! link javascriptEndColons deusFg1
hi! link javascriptFuncArg deusFg1
hi! link javascriptGlobalMethod deusFg1
hi! link javascriptNodeGlobal deusFg1

" hi! link javascriptVariable deusOrange
hi! link javascriptVariable deusPurple
" hi! link javascriptIdentifier deusOrange
" hi! link javascriptClassSuper deusOrange
hi! link javascriptIdentifier deusOrange
hi! link javascriptClassSuper deusOrange

" hi! link javascriptFuncKeyword deusOrange
" hi! link javascriptAsyncFunc deusOrange
hi! link javascriptFuncKeyword deusAqua
hi! link javascriptAsyncFunc deusAqua
hi! link javascriptClassStatic deusOrange

hi! link javascriptOperator deusRed
hi! link javascriptForOperator deusRed
hi! link javascriptYield deusRed
hi! link javascriptExceptions deusRed
hi! link javascriptMessage deusRed

hi! link javascriptTemplateSB deusAqua
hi! link javascriptTemplateSubstitution deusFg1

" hi! link javascriptLabel deusBlue
" hi! link javascriptObjectLabel deusBlue
" hi! link javascriptPropertyName deusBlue
hi! link javascriptLabel deusFg1
hi! link javascriptObjectLabel deusFg1
hi! link javascriptPropertyName deusFg1

hi! link javascriptLogicSymbols deusFg1
hi! link javascriptArrowFunc deusFg1

hi! link javascriptDocParamName deusFg4
hi! link javascriptDocTags deusFg4
hi! link javascriptDocNotation deusFg4
hi! link javascriptDocParamType deusFg4
hi! link javascriptDocNamedParamType deusFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp deusFg3
hi! link coffeeSpecialOp deusFg3
hi! link coffeeCurly deusOrange
hi! link coffeeParen deusFg3
hi! link coffeeBracket deusOrange

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter deusGreen
hi! link rubyInterpolationDelimiter deusAqua

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier deusRed
hi! link objcDirective deusBlue

" }}}
" Go: {{{

hi! link goDirective deusAqua
hi! link goConstants deusPurple
hi! link goDeclaration deusRed
hi! link goDeclType deusBlue
hi! link goBuiltins deusOrange

" }}}
" Lua: {{{

hi! link luaIn deusRed
hi! link luaFunction deusAqua
hi! link luaTable deusOrange

" }}}
" MoonScript: {{{

hi! link moonSpecialOp deusFg3
hi! link moonExtendedOp deusFg3
hi! link moonFunction deusFg3
hi! link moonObject deusYellow

" }}}
" Java: {{{

hi! link javaAnnotation deusBlue
hi! link javaDocTags deusAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen deusFg3
hi! link javaParen1 deusFg3
hi! link javaParen2 deusFg3
hi! link javaParen3 deusFg3
hi! link javaParen4 deusFg3
hi! link javaParen5 deusFg3
hi! link javaOperator deusOrange

hi! link javaVarArg deusGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter deusGreen
hi! link elixirInterpolationDelimiter deusAqua

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition deusFg1
hi! link scalaCaseFollowing deusFg1
hi! link scalaCapitalWord deusFg1
hi! link scalaTypeExtension deusFg1

hi! link scalaKeyword deusRed
hi! link scalaKeywordModifier deusRed

hi! link scalaSpecial deusAqua
hi! link scalaOperator deusFg1

hi! link scalaTypeDeclaration deusYellow
hi! link scalaTypeTypePostDeclaration deusYellow

hi! link scalaInstanceDeclaration deusFg1
hi! link scalaInterpolation deusAqua

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 deusGreenBold
hi! link markdownH2 deusGreenBold
hi! link markdownH3 deusYellowBold
hi! link markdownH4 deusYellowBold
hi! link markdownH5 deusYellow
hi! link markdownH6 deusYellow

hi! link markdownCode deusAqua
hi! link markdownCodeBlock deusAqua
hi! link markdownCodeDelimiter deusAqua

hi! link markdownBlockquote deusGray
hi! link markdownListMarker deusPurple
hi! link markdownOrderedListMarker deusGray
hi! link markdownRule deusGray
hi! link markdownHeadingRule deusGray

hi! link markdownUrlDelimiter deusFg3
hi! link markdownLinkDelimiter deusFg3
hi! link markdownLinkTextDelimiter deusFg3

hi! link markdownHeadingDelimiter deusOrange
hi! link markdownUrl deusPurple
hi! link markdownUrlTitleDelimiter deusGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType deusYellow
" hi! link haskellOperators deusOrange
" hi! link haskellConditional deusAqua
" hi! link haskellLet deusOrange
"
hi! link haskellType deusFg1
hi! link haskellIdentifier deusFg1
hi! link haskellSeparator deusFg1
hi! link haskellDelimiter deusFg4
hi! link haskellOperators deusBlue
"
hi! link haskellBacktick deusOrange
hi! link haskellStatement deusOrange
hi! link haskellConditional deusOrange

hi! link haskellLet deusAqua
hi! link haskellDefault deusAqua
hi! link haskellWhere deusAqua
hi! link haskellBottom deusAqua
hi! link haskellBlockKeywords deusAqua
hi! link haskellImportKeywords deusAqua
hi! link haskellDeclKeyword deusAqua
hi! link haskellDeriving deusAqua
hi! link haskellAssocType deusAqua

hi! link haskellNumber deusPurple
hi! link haskellPragma deusPurple

hi! link haskellString deusGreen
hi! link haskellChar deusGreen

" }}}
" Json: {{{

hi! link jsonKeyword deusGreen
hi! link jsonQuote deusGreen
hi! link jsonBraces deusFg1
hi! link jsonString deusFg1

" }}}
" }}}
" Utility Functions {{{
" Search Highlighting Cursor {{{

function! DeusHlsShowCursor()
  call s:HL('Cursor', s:bg0, s:hls_cursor)
endfunction

function! DeusHlsHideCursor()
  call s:HL('Cursor', s:none, s:none, s:inverse)
endfunction

" }}}
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
