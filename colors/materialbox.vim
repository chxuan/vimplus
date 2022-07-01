" -----------------------------------------------------------------------------
" File: materialbox.vim
" Description: Material color scheme using gruvbox as a skel
" Author: mkarmona <mkarmona@gmail.com>
" Source: https://github.com/mkarmona/materialbox
" Last Modified: 22 Oct 2015
" -----------------------------------------------------------------------------

" Supporting code -------------------------------------------------------------
" Initialisation: {{{

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='materialbox'

if !has('gui_running') && &t_Co != 256
  finish
endif

" }}}
" Global Settings: {{{

if !exists('g:materialbox_bold')
  let g:materialbox_bold=1
endif
if !exists('g:materialbox_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:materialbox_italic=1
  else
    let g:materialbox_italic=0
  endif
endif
if !exists('g:materialbox_undercurl')
  let g:materialbox_undercurl=1
endif
if !exists('g:materialbox_underline')
  let g:materialbox_underline=1
endif
if !exists('g:materialbox_inverse')
  let g:materialbox_inverse=1
endif

if !exists('g:materialbox_guisp_fallback') || index(['fg', 'bg'], g:materialbox_guisp_fallback) == -1
  let g:materialbox_guisp_fallback='NONE'
endif

if !exists('g:materialbox_improved_strings')
  let g:materialbox_improved_strings=0
endif

if !exists('g:materialbox_improved_warnings')
  let g:materialbox_improved_warnings=0
endif

if !exists('g:materialbox_termcolors')
  let g:materialbox_termcolors=256
endif

if !exists('g:materialbox_invert_indent_guides')
  let g:materialbox_invert_indent_guides=0
endif

if exists('g:materialbox_contrast')
  echo 'g:materialbox_contrast is deprecated; use g:materialbox_contrast_light and g:materialbox_contrast_dark instead'
endif

if !exists('g:materialbox_contrast_dark')
  let g:materialbox_contrast_dark='medium'
endif

if !exists('g:materialbox_contrast_light')
  let g:materialbox_contrast_light='medium'
endif

let s:is_dark=(&background == 'dark')

" }}}
" Palette: {{{

" setup palette dictionary
let s:gb = {}

" fill it with absolute colors
let s:gb.dark0_hard  = ['#1d272b', 234]     " 29-32-33
let s:gb.dark0       = ['#263238', 235]     " 40-40-40
let s:gb.dark0_soft  = ['#2f3d45', 236]     " 50-48-47
let s:gb.dark1       = ['#37474F', 237]     " 60-56-54
let s:gb.dark2       = ['#455a64', 239]     " 80-73-69
let s:gb.dark3       = ['#546e7a', 241]     " 102-92-84
let s:gb.dark4       = ['#607d8b', 243]     " 124-111-100
let s:gb.dark4_256   = ['#607d8b', 243]     " 124-111-100

"let s:gb.gray_245    = ['#B0BEC5', 245]     " 146-131-116 dark
let s:gb.gray_245    = ['#90A4AE', 245]     " 146-131-116 dark
"let s:gb.gray_244    = ['#455a64', 244]     " 146-131-116 light
let s:gb.gray_244    = ['#546E7A', 244]     " 146-131-116 light

let s:gb.light0_hard = ['#fafdff', 230]     " 249-245-215 dark
let s:gb.light0      = ['#eceff1', 229]     " 253-244-193
let s:gb.light0_soft = ['#e1e4e6', 228]     " 242-229-188
let s:gb.light1      = ['#cfd8dc', 223]     " 235-219-178
let s:gb.light2      = ['#b0bec5', 250]     " 213-196-161
let s:gb.light3      = ['#90a4ae', 248]     " 189-174-147
let s:gb.light4      = ['#78909c', 246]     " 168-153-132
let s:gb.light4_256  = ['#78909c', 246]     " 168-153-132

let s:gb.bright_red     = ['#e57373', 167]     " 251-73-52
let s:gb.bright_green   = ['#81c784', 142]     " 184-187-38
let s:gb.bright_yellow  = ['#FFF176', 214]     " 250-189-47
let s:gb.bright_blue    = ['#64b5f6', 109]     " 131-165-152
let s:gb.bright_purple  = ['#CE93D8', 175]     " 211-134-155
let s:gb.bright_aqua    = ['#C5CAE9', 108]     " 142-192-124
let s:gb.bright_orange  = ['#ffb74d', 208]     " 254-128-25

let s:gb.neutral_red    = ['#e53935', 124]     " 204-36-29
let s:gb.neutral_green  = ['#43a047', 106]     " 152-151-26
let s:gb.neutral_yellow = ['#FDD835', 172]     " 215-153-33
let s:gb.neutral_blue   = ['#1e88e5', 66]      " 69-133-136
let s:gb.neutral_purple = ['#8e24aa', 132]     " 177-98-134
let s:gb.neutral_aqua   = ['#3949AB', 72]      " 104-157-106
let s:gb.neutral_orange = ['#fb8c00', 166]     " 214-93-14

let s:gb.faded_red      = ['#c62828', 88]      " 157-0-6 light
let s:gb.faded_green    = ['#2e7d32', 100]     " 121-116-14
"let s:gb.faded_yellow   = ['#F57F17', 136]     " 181-118-20
let s:gb.faded_yellow   = ['#FFA000', 136]     " 181-118-20
let s:gb.faded_blue     = ['#1565c0', 24]      " 7-102-120
let s:gb.faded_purple   = ['#6a1b9a', 96]      " 143-63-113
let s:gb.faded_aqua     = ['#303F9F', 66]      " 66-123-88
let s:gb.faded_orange   = ['#E65100', 130]     " 175-58-3

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:materialbox_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:materialbox_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:materialbox_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:materialbox_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:materialbox_inverse == 0
  let s:inverse = ''
endif

" }}}
" Setup Colors: {{{

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

" determine relative colors
if s:is_dark
  let s:bg0  = s:gb.dark0
  if g:materialbox_contrast_dark == 'soft'
    let s:bg0  = s:gb.dark0_soft
  elseif g:materialbox_contrast_dark == 'hard'
    let s:bg0  = s:gb.dark0_hard
  endif

  let s:bg1  = s:gb.dark1
  let s:bg2  = s:gb.dark2
  let s:bg3  = s:gb.dark3
  let s:bg4  = s:gb.dark4

  let s:gray = s:gb.gray_245

  let s:fg0 = s:gb.light0
  let s:fg1 = s:gb.light1
  let s:fg2 = s:gb.light2
  let s:fg3 = s:gb.light3
  let s:fg4 = s:gb.light4

  let s:fg4_256 = s:gb.light4_256

  let s:red    = s:gb.bright_red
  let s:green  = s:gb.bright_green
  let s:yellow = s:gb.bright_yellow
  let s:blue   = s:gb.bright_blue
  let s:purple = s:gb.bright_purple
  let s:aqua   = s:gb.bright_aqua
  let s:orange = s:gb.bright_orange
else
  let s:bg0  = s:gb.light0
  if g:materialbox_contrast_light == 'soft'
    let s:bg0  = s:gb.light0_soft
  elseif g:materialbox_contrast_light == 'hard'
    let s:bg0  = s:gb.light0_hard
  endif

  let s:bg1  = s:gb.light1
  let s:bg2  = s:gb.light2
  let s:bg3  = s:gb.light3
  let s:bg4  = s:gb.light4

  let s:gray = s:gb.gray_244

  let s:fg0 = s:gb.dark0
  let s:fg1 = s:gb.dark1
  let s:fg2 = s:gb.dark2
  let s:fg3 = s:gb.dark3
  let s:fg4 = s:gb.dark4

  let s:fg4_256 = s:gb.dark4_256

  let s:red    = s:gb.faded_red
  let s:green  = s:gb.faded_green
  let s:yellow = s:gb.faded_yellow
  let s:blue   = s:gb.faded_blue
  let s:purple = s:gb.faded_purple
  let s:aqua   = s:gb.faded_aqua
  let s:orange = s:gb.faded_orange
endif

" reset to 16 colors fallback
if g:materialbox_termcolors == 16
  let s:bg0[1]    = 0
  let s:fg4[1]    = 7
  let s:gray[1]   = 8
  let s:red[1]    = 9
  let s:green[1]  = 10
  let s:yellow[1] = 11
  let s:blue[1]   = 12
  let s:purple[1] = 13
  let s:aqua[1]   = 14
  let s:fg1[1]    = 15
endif

" save current relative colors back to palette dictionary
let s:gb.bg0 = s:bg0
let s:gb.bg1 = s:bg1
let s:gb.bg2 = s:bg2
let s:gb.bg3 = s:bg3
let s:gb.bg4 = s:bg4

let s:gb.gray = s:gray

let s:gb.fg0 = s:fg0
let s:gb.fg1 = s:fg1
let s:gb.fg2 = s:fg2
let s:gb.fg3 = s:fg3
let s:gb.fg4 = s:fg4

let s:gb.fg4_256 = s:fg4_256

let s:gb.red    = s:red
let s:gb.green  = s:green
let s:gb.yellow = s:yellow
let s:gb.blue   = s:blue
let s:gb.purple = s:purple
let s:gb.aqua   = s:aqua
let s:gb.orange = s:orange

" }}}

" Overload Setting: {{{

let s:hls_cursor = s:orange
if exists('g:materialbox_hls_cursor')
  let s:hls_cursor = get(s:gb, g:materialbox_hls_cursor)
endif

"let s:number_column = s:bg4
let s:number_column = s:gray
let s:sign_column = s:bg1

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:materialbox_sign_column')
    let s:sign_column = get(s:gb, g:materialbox_sign_column)
  endif
endif

let s:color_column = s:bg1
if exists('g:materialbox_color_column')
  let s:color_column = get(s:gb, g:materialbox_color_column)
endif

let s:vert_split = s:bg2
if exists('g:materialbox_vert_split')
  let s:vert_split = get(s:gb, g:materialbox_vert_split)
endif

let s:invert_signs = ''
if exists('g:materialbox_invert_signs')
  if g:materialbox_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:materialbox_invert_selection')
  if g:materialbox_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:materialbox_invert_tabline')
  if g:materialbox_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:materialbox_italicize_comments')
  if g:materialbox_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:materialbox_italicize_strings')
  if g:materialbox_italicize_strings == 1
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
    if g:materialbox_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:materialbox_guisp_fallback == 'bg'
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
" materialbox Hi Groups: {{{

" memoize common hi groups
call s:HL('materialboxFg0', s:fg0)
call s:HL('materialboxFg1', s:fg1)
call s:HL('materialboxFg3', s:fg3)
call s:HL('materialboxFg4', s:fg4)
call s:HL('materialboxGray', s:gray)
call s:HL('materialboxBg2', s:bg2)

call s:HL('materialboxRed', s:red)
call s:HL('materialboxRedBold', s:red, s:none, s:bold)
call s:HL('materialboxGreen', s:green)
call s:HL('materialboxGreenBold', s:green, s:none, s:bold)
call s:HL('materialboxYellow', s:yellow)
call s:HL('materialboxYellowBold', s:yellow, s:none, s:bold)
call s:HL('materialboxBlue', s:blue)
" call s:HL('materialboxBlueBold', s:blue, s:none, s:bold)
call s:HL('materialboxPurple', s:purple)
" call s:HL('materialboxPurpleBold', s:purple, s:none, s:bold)
call s:HL('materialboxAqua', s:aqua)
call s:HL('materialboxAquaBold', s:aqua, s:none, s:bold)
call s:HL('materialboxOrange', s:orange)
call s:HL('materialboxOrangeBold', s:orange, s:none, s:bold)

call s:HL('materialboxRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('materialboxGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('materialboxYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('materialboxBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('materialboxPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('materialboxAquaSign', s:aqua, s:sign_column, s:invert_signs)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:fg0, s:bg0)

" Correct background (see issue #7):
" --- Problem with changing between dark and light on 256 color terminal
" --- https://github.com/morhetz/materialbox/issues/7
if s:is_dark
  set background=dark
else
  set background=light
endif

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bg1)
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
  "call s:HL('CursorLineNr', s:yellow, s:bg1)
  call s:HL('CursorLineNr', s:fg0, s:bg1)
endif

hi! link NonText materialboxBg2
hi! link SpecialKey materialboxBg2

call s:HL('Visual',    s:none,  s:bg3, s:invert_selection)
hi! link VisualNOS Visual

call s:HL('Search',    s:bg0, s:yellow)
call s:HL('IncSearch', s:bg0, s:hls_cursor)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bg4, s:bg0, s:bold . s:inverse)
call s:HL('StatusLineNC', s:bg2, s:fg4, s:bold . s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:fg4, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:bg2, s:bold)

" Directory names, special names in listing
hi! link Directory materialboxGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title materialboxGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:vim_bg, s:red, s:bold)
" More prompt: -- More --
hi! link MoreMsg materialboxYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg materialboxYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question materialboxOrangeBold
" Warning messages
hi! link WarningMsg materialboxRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg1, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg1)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

if g:materialbox_improved_strings == 0
  hi! link Special materialboxOrange
else
  call s:HL('Special', s:bg1, s:orange, s:italic)
endif

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('Error', s:red, s:vim_bg, s:bold . s:inverse)

" Generic statement
hi! link Statement materialboxRed
" if, then, else, endif, swicth, etc.
hi! link Conditional materialboxRed
" for, do, while, etc.
hi! link Repeat materialboxRed
" case, default, etc.
hi! link Label materialboxRed
" try, catch, throw
hi! link Exception materialboxRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword materialboxRed

" Variable name
hi! link Identifier materialboxBlue
" Function name
hi! link Function materialboxGreenBold

" Generic preprocessor
hi! link PreProc materialboxAqua
" Preprocessor #include
hi! link Include materialboxAqua
" Preprocessor #define
hi! link Define materialboxAqua
" Same as Define
hi! link Macro materialboxAqua
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit materialboxAqua

" Generic constant
hi! link Constant materialboxPurple
" Character constant: 'c', '/n'
hi! link Character materialboxPurple
" String constant: "this is a string"
if g:materialbox_improved_strings == 0
  call s:HL('String',  s:green, s:none, s:italicize_strings)
else
  call s:HL('String',  s:bg1, s:fg1, s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean materialboxPurple
" Number constant: 234, 0xff
hi! link Number materialboxPurple
" Floating point constant: 2.3e10
hi! link Float materialboxPurple

" Generic type
hi! link Type materialboxYellow
" static, register, volatile, etc
hi! link StorageClass materialboxOrange
" struct, union, enum, etc.
hi! link Structure materialboxAqua
" typedef
hi! link Typedef materialboxYellow

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
  if g:materialbox_improved_warnings == 0
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

" Plugin specific -------------------------------------------------------------
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
  if g:materialbox_invert_indent_guides == 0
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

hi! link GitGutterAdd materialboxGreenSign
hi! link GitGutterChange materialboxAquaSign
hi! link GitGutterDelete materialboxRedSign
hi! link GitGutterChangeDelete materialboxAquaSign

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile materialboxGreen
hi! link gitcommitDiscardedFile materialboxRed

" }}}
" Signify: {{{

hi! link SignifySignAdd materialboxGreenSign
hi! link SignifySignChange materialboxAquaSign
hi! link SignifySignDelete materialboxRedSign

" }}}
" Syntastic: {{{

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign materialboxRedSign
hi! link SyntasticWarningSign materialboxYellowSign

" }}}
" Signature: {{{

hi! link SignatureMarkerText materialboxPurpleSign
hi! link SignatureMarkText materialboxBlueSign

let g:SignatureMarkerTextHL='"SignatureMarkerText"'
let g:SignatureMarkTextHL='"SignatureMarkText"'

" }}}
" ShowMarks: {{{

hi! link ShowMarksHLl materialboxBlueSign
hi! link ShowMarksHLu materialboxBlueSign
hi! link ShowMarksHLo materialboxBlueSign
hi! link ShowMarksHLm materialboxBlueSign

" }}}
" CtrlP: {{{

hi! link CtrlPMatch materialboxYellow
hi! link CtrlPNoEntries materialboxRed
hi! link CtrlPPrtBase materialboxBg2
hi! link CtrlPPrtCursor materialboxBlue
hi! link CtrlPLinePre materialboxBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" }}}
" Startify: {{{

hi! link StartifyBracket materialboxFg3
hi! link StartifyFile materialboxFg0
hi! link StartifyNumber materialboxBlue
hi! link StartifyPath materialboxGray
hi! link StartifySlash materialboxGray
hi! link StartifySection materialboxYellow
hi! link StartifySpecial materialboxBg2
hi! link StartifyHeader materialboxOrange
hi! link StartifyFooter materialboxBg2

" }}}
" Vimshell: {{{

let g:vimshell_escape_colors = [
  \ s:bg4[0], s:red[0], s:green[0], s:yellow[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg4[0],
  \ s:bg0[0], s:red[0], s:green[0], s:orange[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg0[0]
  \ ]

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded materialboxGreen
hi! link diffRemoved materialboxRed
hi! link diffChanged materialboxAqua

hi! link diffFile materialboxOrange
hi! link diffNewFile materialboxYellow

hi! link diffLine materialboxBlue

" }}}
" Html: {{{

hi! link htmlTag materialboxBlue
hi! link htmlEndTag materialboxBlue

hi! link htmlTagName materialboxAquaBold
hi! link htmlArg materialboxAqua

hi! link htmlScriptTag materialboxPurple
hi! link htmlTagN materialboxFg1
hi! link htmlSpecialTagName materialboxAquaBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar materialboxOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag materialboxBlue
hi! link xmlEndTag materialboxBlue
hi! link xmlTagName materialboxBlue
hi! link xmlEqual materialboxBlue
hi! link docbkKeyword materialboxAquaBold

hi! link xmlDocTypeDecl materialboxGray
hi! link xmlDocTypeKeyword materialboxPurple
hi! link xmlCdataStart materialboxGray
hi! link xmlCdataCdata materialboxPurple
hi! link dtdFunction materialboxGray
hi! link dtdTagName materialboxPurple

hi! link xmlAttrib materialboxAqua
hi! link xmlProcessingDelim materialboxGray
hi! link dtdParamEntityPunct materialboxGray
hi! link dtdParamEntityDPunct materialboxGray
hi! link xmlAttribPunct materialboxGray

hi! link xmlEntity materialboxOrange
hi! link xmlEntityPunct materialboxOrange
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:fg4_256, s:none, s:bold . s:italicize_comments)

hi! link vimNotation materialboxOrange
hi! link vimBracket materialboxOrange
hi! link vimMapModKey materialboxOrange
hi! link vimFuncSID materialboxFg3
hi! link vimSetSep materialboxFg3
hi! link vimSep materialboxFg3
hi! link vimContinue materialboxFg3

" }}}
" Clojure: {{{

hi! link clojureKeyword materialboxBlue
hi! link clojureCond materialboxOrange
hi! link clojureSpecial materialboxOrange
hi! link clojureDefine materialboxOrange

hi! link clojureFunc materialboxYellow
hi! link clojureRepeat materialboxYellow
hi! link clojureCharacter materialboxAqua
hi! link clojureStringEscape materialboxAqua
hi! link clojureException materialboxRed

hi! link clojureRegexp materialboxAqua
hi! link clojureRegexpEscape materialboxAqua
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen materialboxFg3
hi! link clojureAnonArg materialboxYellow
hi! link clojureVariable materialboxBlue
hi! link clojureMacro materialboxOrange

hi! link clojureMeta materialboxYellow
hi! link clojureDeref materialboxYellow
hi! link clojureQuote materialboxYellow
hi! link clojureUnquote materialboxYellow

" }}}
" C: {{{

hi! link cOperator materialboxPurple
hi! link cStructure materialboxOrange

" }}}
" Python: {{{

hi! link pythonBuiltin materialboxOrange
hi! link pythonBuiltinObj materialboxOrange
hi! link pythonBuiltinFunc materialboxOrange
hi! link pythonFunction materialboxAqua
hi! link pythonDecorator materialboxRed
hi! link pythonInclude materialboxBlue
hi! link pythonImport materialboxBlue
hi! link pythonRun materialboxBlue
hi! link pythonCoding materialboxBlue
hi! link pythonOperator materialboxRed
hi! link pythonExceptions materialboxPurple
hi! link pythonBoolean materialboxPurple
hi! link pythonDot materialboxFg3

" }}}
" CSS: {{{

hi! link cssBraces materialboxBlue
hi! link cssFunctionName materialboxYellow
hi! link cssIdentifier materialboxOrange
hi! link cssClassName materialboxGreen
hi! link cssColor materialboxBlue
hi! link cssSelectorOp materialboxBlue
hi! link cssSelectorOp2 materialboxBlue
hi! link cssImportant materialboxGreen
hi! link cssVendor materialboxFg1

hi! link cssTextProp materialboxAqua
hi! link cssAnimationProp materialboxAqua
hi! link cssUIProp materialboxYellow
hi! link cssTransformProp materialboxAqua
hi! link cssTransitionProp materialboxAqua
hi! link cssPrintProp materialboxAqua
hi! link cssPositioningProp materialboxYellow
hi! link cssBoxProp materialboxAqua
hi! link cssFontDescriptorProp materialboxAqua
hi! link cssFlexibleBoxProp materialboxAqua
hi! link cssBorderOutlineProp materialboxAqua
hi! link cssBackgroundProp materialboxAqua
hi! link cssMarginProp materialboxAqua
hi! link cssListProp materialboxAqua
hi! link cssTableProp materialboxAqua
hi! link cssFontProp materialboxAqua
hi! link cssPaddingProp materialboxAqua
hi! link cssDimensionProp materialboxAqua
hi! link cssRenderProp materialboxAqua
hi! link cssColorProp materialboxAqua
hi! link cssGeneratedContentProp materialboxAqua

" }}}
" JavaScript: {{{

hi! link javaScriptBraces materialboxFg1
hi! link javaScriptFunction materialboxAqua
hi! link javaScriptIdentifier materialboxRed
hi! link javaScriptMember materialboxBlue
hi! link javaScriptNumber materialboxPurple
hi! link javaScriptNull materialboxPurple
hi! link javaScriptParens materialboxFg3

" }}}
" YAJS: {{{

hi! link javascriptImport materialboxAqua
hi! link javascriptExport materialboxAqua
hi! link javascriptClassKeyword materialboxAqua
hi! link javascriptClassExtends materialboxAqua
hi! link javascriptDefault materialboxAqua

hi! link javascriptClassName materialboxYellow
hi! link javascriptClassSuperName materialboxYellow
hi! link javascriptGlobal materialboxYellow

hi! link javascriptEndColons materialboxFg1
hi! link javascriptFuncArg materialboxFg1
hi! link javascriptGlobalMethod materialboxFg1
hi! link javascriptNodeGlobal materialboxFg1

" hi! link javascriptVariable materialboxOrange
hi! link javascriptVariable materialboxRed
" hi! link javascriptIdentifier materialboxOrange
" hi! link javascriptClassSuper materialboxOrange
hi! link javascriptIdentifier materialboxOrange
hi! link javascriptClassSuper materialboxOrange

" hi! link javascriptFuncKeyword materialboxOrange
" hi! link javascriptAsyncFunc materialboxOrange
hi! link javascriptFuncKeyword materialboxAqua
hi! link javascriptAsyncFunc materialboxAqua
hi! link javascriptClassStatic materialboxOrange

hi! link javascriptOperator materialboxRed
hi! link javascriptForOperator materialboxRed
hi! link javascriptYield materialboxRed
hi! link javascriptExceptions materialboxRed
hi! link javascriptMessage materialboxRed

hi! link javascriptTemplateSB materialboxAqua
hi! link javascriptTemplateSubstitution materialboxFg1

" hi! link javascriptLabel materialboxBlue
" hi! link javascriptObjectLabel materialboxBlue
" hi! link javascriptPropertyName materialboxBlue
hi! link javascriptLabel materialboxFg1
hi! link javascriptObjectLabel materialboxFg1
hi! link javascriptPropertyName materialboxFg1

hi! link javascriptLogicSymbols materialboxFg1
hi! link javascriptArrowFunc materialboxFg1

hi! link javascriptDocParamName materialboxFg4
hi! link javascriptDocTags materialboxFg4
hi! link javascriptDocNotation materialboxFg4
hi! link javascriptDocParamType materialboxFg4
hi! link javascriptDocNamedParamType materialboxFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp materialboxFg3
hi! link coffeeSpecialOp materialboxFg3
hi! link coffeeCurly materialboxOrange
hi! link coffeeParen materialboxFg3
hi! link coffeeBracket materialboxOrange

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter materialboxGreen
hi! link rubyInterpolationDelimiter materialboxAqua

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier materialboxRed
hi! link objcDirective materialboxBlue

" }}}
" Go: {{{

hi! link goDirective materialboxAqua
hi! link goConstants materialboxPurple
hi! link goDeclaration materialboxRed
hi! link goDeclType materialboxBlue
hi! link goBuiltins materialboxOrange

" }}}
" Lua: {{{

hi! link luaIn materialboxRed
hi! link luaFunction materialboxAqua
hi! link luaTable materialboxOrange

" }}}
" MoonScript: {{{

hi! link moonSpecialOp materialboxFg3
hi! link moonExtendedOp materialboxFg3
hi! link moonFunction materialboxFg3
hi! link moonObject materialboxYellow

" }}}
" Java: {{{

hi! link javaAnnotation materialboxBlue
hi! link javaDocTags materialboxAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen materialboxFg3
hi! link javaParen1 materialboxFg3
hi! link javaParen2 materialboxFg3
hi! link javaParen3 materialboxFg3
hi! link javaParen4 materialboxFg3
hi! link javaParen5 materialboxFg3
hi! link javaOperator materialboxOrange

hi! link javaVarArg materialboxGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter materialboxGreen
hi! link elixirInterpolationDelimiter materialboxAqua

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition materialboxFg1
hi! link scalaCaseFollowing materialboxFg1
hi! link scalaCapitalWord materialboxFg1
hi! link scalaTypeExtension materialboxFg1

hi! link scalaKeyword materialboxRed
hi! link scalaKeywordModifier materialboxRed

hi! link scalaSpecial materialboxAqua
hi! link scalaOperator materialboxFg1

hi! link scalaTypeDeclaration materialboxYellow
hi! link scalaTypeTypePostDeclaration materialboxYellow

hi! link scalaInstanceDeclaration materialboxFg1
hi! link scalaInterpolation materialboxAqua

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 materialboxGreenBold
hi! link markdownH2 materialboxGreenBold
hi! link markdownH3 materialboxYellowBold
hi! link markdownH4 materialboxYellowBold
hi! link markdownH5 materialboxYellow
hi! link markdownH6 materialboxYellow

hi! link markdownCode materialboxAqua
hi! link markdownCodeBlock materialboxAqua
hi! link markdownCodeDelimiter materialboxAqua

hi! link markdownBlockquote materialboxGray
hi! link markdownListMarker materialboxGray
hi! link markdownOrderedListMarker materialboxGray
hi! link markdownRule materialboxGray
hi! link markdownHeadingRule materialboxGray

hi! link markdownUrlDelimiter materialboxFg3
hi! link markdownLinkDelimiter materialboxFg3
hi! link markdownLinkTextDelimiter materialboxFg3

hi! link markdownHeadingDelimiter materialboxOrange
hi! link markdownUrl materialboxPurple
hi! link markdownUrlTitleDelimiter materialboxGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType materialboxYellow
" hi! link haskellOperators materialboxOrange
" hi! link haskellConditional materialboxAqua
" hi! link haskellLet materialboxOrange
"
hi! link haskellType materialboxFg1
hi! link haskellIdentifier materialboxFg1
hi! link haskellSeparator materialboxFg1
hi! link haskellDelimiter materialboxFg4
hi! link haskellOperators materialboxBlue
"
hi! link haskellBacktick materialboxOrange
hi! link haskellStatement materialboxOrange
hi! link haskellConditional materialboxOrange

hi! link haskellLet materialboxAqua
hi! link haskellDefault materialboxAqua
hi! link haskellWhere materialboxAqua
hi! link haskellBottom materialboxAqua
hi! link haskellBlockKeywords materialboxAqua
hi! link haskellImportKeywords materialboxAqua
hi! link haskellDeclKeyword materialboxAqua
hi! link haskellDeriving materialboxAqua
hi! link haskellAssocType materialboxAqua

hi! link haskellNumber materialboxPurple
hi! link haskellPragma materialboxPurple

hi! link haskellString materialboxGreen
hi! link haskellChar materialboxGreen

" }}}
" Json: {{{

hi! link jsonKeyword materialboxGreen
hi! link jsonQuote materialboxGreen
hi! link jsonBraces materialboxFg1
hi! link jsonString materialboxFg1

" }}}


" Functions -------------------------------------------------------------------
" Search Highlighting Cursor {{{

function! MaterialboxHlsShowCursor()
  call s:HL('Cursor', s:bg0, s:hls_cursor)
endfunction

function! MaterialboxHlsHideCursor()
  call s:HL('Cursor', s:none, s:none, s:inverse)
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
