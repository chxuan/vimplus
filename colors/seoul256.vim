" "  _____             _ ___ ___ ___      "
" " |   __|___ ___ _ _| |_  |  _|  _|     "
" " |__   | -_| . | | | |  _|_  | . |     "
" " |_____|___|___|___|_|___|___|___|.vim "
"
" " Low-contrast dark Vim color scheme using Seoul Colors "
"
" File:         seoul256.vim
" URL:          github.com/junegunn/seoul256.vim
" Author:       Junegunn Choi (junegunn.c@gmail.com)
" License:      MIT
"
" Copyright (c) 2017 Junegunn Choi
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

if !exists('s:rgb_map')
    if get(g:, 'seoul256_srgb', 0)
        let s:rgb_map =
        \{ 16: '#000000',  17: '#00005f',  18: '#000087',
        \  19: '#0000af',  20: '#0000d7',  21: '#0000ff',
        \  22: '#005f00',  23: '#005f5f',  24: '#005f87',
        \  25: '#005faf',  26: '#005fd7',  27: '#005fff',
        \  28: '#008700',  29: '#00875f',  30: '#008787',
        \  31: '#0087af',  32: '#0087d7',  33: '#0087ff',
        \  34: '#00af00',  35: '#00af5f',  36: '#00af87',
        \  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
        \  40: '#00d700',  41: '#00d75f',  42: '#00d787',
        \  43: '#00d7af',  44: '#00d7d7',  45: '#00d7ff',
        \  46: '#00ff00',  47: '#00ff5f',  48: '#00ff87',
        \  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
        \  52: '#5f0000',  53: '#5f005f',  54: '#5f0087',
        \  55: '#5f00af',  56: '#5f00d7',  57: '#5f00ff',
        \  58: '#5f5f00',  59: '#5f5f5f',  60: '#5f5f87',
        \  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
        \  64: '#5f8700',  65: '#5f875f',  66: '#5f8787',
        \  67: '#5f87af',  68: '#5f87d7',  69: '#5f87ff',
        \  70: '#5faf00',  71: '#5faf5f',  72: '#5faf87',
        \  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
        \  76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',
        \  79: '#5fd7af',  80: '#5fd7d7',  81: '#5fd7ff',
        \  82: '#5fff00',  83: '#5fff5f',  84: '#5fff87',
        \  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
        \  88: '#870000',  89: '#87005f',  90: '#870087',
        \  91: '#8700af',  92: '#8700d7',  93: '#8700ff',
        \  94: '#875f00',  95: '#875f5f',  96: '#875f87',
        \  97: '#875faf',  98: '#875fd7',  99: '#875fff',
        \ 100: '#878700', 101: '#87875f', 102: '#878787',
        \ 103: '#8787af', 104: '#8787d7', 105: '#8787ff',
        \ 106: '#87af00', 107: '#87af5f', 108: '#87af87',
        \ 109: '#87afaf', 110: '#87afd7', 111: '#87afff',
        \ 112: '#87d700', 113: '#87d75f', 114: '#87d787',
        \ 115: '#87d7af', 116: '#87d7d7', 117: '#87d7ff',
        \ 118: '#87ff00', 119: '#87ff5f', 120: '#87ff87',
        \ 121: '#87ffaf', 122: '#87ffd7', 123: '#87ffff',
        \ 124: '#af0000', 125: '#af005f', 126: '#af0087',
        \ 127: '#af00af', 128: '#af00d7', 129: '#af00ff',
        \ 130: '#af5f00', 131: '#af5f5f', 132: '#af5f87',
        \ 133: '#af5faf', 134: '#af5fd7', 135: '#af5fff',
        \ 136: '#af8700', 137: '#af875f', 138: '#af8787',
        \ 139: '#af87af', 140: '#af87d7', 141: '#af87ff',
        \ 142: '#afaf00', 143: '#afaf5f', 144: '#afaf87',
        \ 145: '#afafaf', 146: '#afafd7', 147: '#afafff',
        \ 148: '#afd700', 149: '#afd75f', 150: '#afd787',
        \ 151: '#afd7af', 152: '#afd7d7', 153: '#afd7ff',
        \ 154: '#afff00', 155: '#afff5f', 156: '#afff87',
        \ 157: '#afffaf', 158: '#afffd7', 159: '#afffff',
        \ 160: '#d70000', 161: '#d7005f', 162: '#d70087',
        \ 163: '#d700af', 164: '#d700d7', 165: '#d700ff',
        \ 166: '#d75f00', 167: '#d75f5f', 168: '#d75f87',
        \ 169: '#d75faf', 170: '#d75fd7', 171: '#d75fff',
        \ 172: '#d78700', 173: '#d7875f', 174: '#d78787',
        \ 175: '#d787af', 176: '#d787d7', 177: '#d787ff',
        \ 178: '#d7af00', 179: '#d7af5f', 180: '#d7af87',
        \ 181: '#d7afaf', 182: '#d7afd7', 183: '#d7afff',
        \ 184: '#d7d700', 185: '#d7d75f', 186: '#d7d787',
        \ 187: '#d7d7af', 188: '#d7d7d7', 189: '#d7d7ff',
        \ 190: '#d7ff00', 191: '#d7ff5f', 192: '#d7ff87',
        \ 193: '#d7ffaf', 194: '#d7ffd7', 195: '#d7ffff',
        \ 196: '#ff0000', 197: '#ff005f', 198: '#ff0087',
        \ 199: '#ff00af', 200: '#ff00d7', 201: '#ff00ff',
        \ 202: '#ff5f00', 203: '#ff5f5f', 204: '#ff5f87',
        \ 205: '#ff5faf', 206: '#ff5fd7', 207: '#ff5fff',
        \ 208: '#ff8700', 209: '#ff875f', 210: '#ff8787',
        \ 211: '#ff87af', 212: '#ff87d7', 213: '#ff87ff',
        \ 214: '#ffaf00', 215: '#ffaf5f', 216: '#ffaf87',
        \ 217: '#ffafaf', 218: '#ffafd7', 219: '#ffafff',
        \ 220: '#ffd700', 221: '#ffd75f', 222: '#ffd787',
        \ 223: '#ffd7af', 224: '#ffd7d7', 225: '#ffd7ff',
        \ 226: '#ffff00', 227: '#ffff5f', 228: '#ffff87',
        \ 229: '#ffffaf', 230: '#ffffd7', 231: '#ffffff',
        \ 232: '#080808', 233: '#121212', 234: '#1c1c1c',
        \ 235: '#262626', 236: '#303030', 237: '#3a3a3a',
        \ 238: '#444444', 239: '#4e4e4e', 240: '#585858',
        \ 241: '#626262', 242: '#6c6c6c', 243: '#767676',
        \ 244: '#808080', 245: '#8a8a8a', 246: '#949494',
        \ 247: '#9e9e9e', 248: '#a8a8a8', 249: '#b2b2b2',
        \ 250: '#bcbcbc', 251: '#c6c6c6', 252: '#d0d0d0',
        \ 253: '#dadada', 254: '#e4e4e4', 255: '#eeeeee' }
    else
        let s:rgb_map =
        \{ 22: '#006F00', 23: '#007173', 24: '#007299', 25: '#0074BE', 30: '#009799',
        \  31: '#0099BD', 38: '#00BDDF', 52: '#730B00', 58: '#727100', 59: '#727272',
        \  65: '#719872', 66: '#719899', 67: '#7299BC', 68: '#719CDF', 73: '#6FBCBD',
        \  74: '#70BDDF', 88: '#9B1300', 89: '#9B1D72', 94: '#9A7200', 95: '#9A7372',
        \  96: '#9A7599', 101: '#999872', 103: '#999ABD', 108: '#98BC99', 109: '#98BCBD',
        \ 110: '#98BEDE', 116: '#97DDDF', 125: '#BF2172', 131: '#BE7572', 137: '#BE9873',
        \ 143: '#BDBB72', 144: '#BDBC98', 145: '#BDBDBD', 151: '#BCDDBD', 152: '#BCDEDE',
        \ 153: '#BCE0FF', 161: '#E12672', 168: '#E17899', 173: '#E19972', 174: '#E09B99',
        \ 179: '#DFBC72', 181: '#E0BEBC', 184: '#DEDC00', 186: '#DEDD99', 187: '#DFDEBD',
        \ 189: '#DFDFFF', 216: '#FFBD98', 217: '#FFBFBD', 218: '#FFC0DE', 220: '#FFDD00',
        \ 222: '#FFDE99', 224: '#FFDFDF', 230: '#FFFFDF', 231: '#FFFFFF', 232: '#060606',
        \ 233: '#171717', 234: '#252525', 235: '#333233', 236: '#3F3F3F', 237: '#4B4B4B',
        \ 238: '#565656', 239: '#616161', 240: '#6B6B6B', 241: '#757575', 249: '#BFBFBF',
        \ 250: '#C8C8C8', 251: '#D1D0D1', 252: '#D9D9D9', 253: '#E1E1E1', 254: '#E9E9E9',
        \ 255: '#F1F1F1' }
    endif
endif

let s:background  = &background
let s:colors_name = get(g:, 'colors_name', '')

silent! unlet s:style s:seoul256_background

" 1. If g:seoul256_background is found
if exists('g:seoul256_background')
  let s:seoul256_background = g:seoul256_background
  if s:seoul256_background >= 233 && s:seoul256_background <= 239
    let s:style = 'dark'
  elseif s:seoul256_background >= 252 && s:seoul256_background <= 256
    let s:style = 'light'
  else
    unlet s:seoul256_background
  endif
endif

if !exists('s:style')
  " 2. If g:colors_name is NOT 'seoul256' -> dark version
  if s:colors_name != 'seoul256'
    let s:style = 'dark'
  " 3. Follow &background setting
  else
    let s:style = &background
  endif
endif
let s:style_idx = s:style == 'light'

" Background colors
if s:style == 'dark'
  let s:dark_bg  = get(s:, 'seoul256_background', 237)
  let s:light_bg = 253
else
  let s:dark_bg  = 237
  let s:light_bg = get(s:, 'seoul256_background', 253)
endif
let s:dark_bg_2 = s:dark_bg > 233 ? s:dark_bg - 2 : 16
let s:light_bg_1 = min([s:light_bg + 1, 256])
let s:light_bg_2 = min([s:light_bg + 2, 256])

" Foreground colors
let s:dark_fg = 252
let s:light_fg = 239

function! s:hi(item, fg, bg)
  let fg = a:fg[s:style_idx] > 255 ? 231 : a:fg[s:style_idx]
  let bg = a:bg[s:style_idx] > 255 ? 231 : a:bg[s:style_idx]

  if !empty(fg)
    execute printf("highlight %s ctermfg=%s guifg=%s", a:item, fg, get(s:rgb_map, fg, 'NONE'))
  endif
  if !empty(bg)
    execute printf("highlight %s ctermbg=%s guibg=%s", a:item, bg, get(s:rgb_map, bg, 'NONE'))
  endif
endfunction

let s:gui = has('gui_running')
if !s:gui
  set t_Co=256
end

silent! unlet g:colors_name
hi clear
if exists("syntax_on")
  syntax reset
endif

call s:hi('Normal', [s:dark_fg, s:light_fg], [s:dark_bg, s:light_bg])

call s:hi('LineNr', [101, 101], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('Visual', ['', ''], [23, 152])
call s:hi('VisualNOS', ['', ''], [23, 152])

call s:hi('Comment', [65, 65], ['', ''])
call s:hi('Number', [222, 95], ['', ''])
call s:hi('Float', [222, 95], ['', ''])
call s:hi('Boolean', [103, 168], ['', ''])
call s:hi('String', [109, 30], ['', ''])
call s:hi('Constant', [73, 23], ['', ''])
call s:hi('Character', [174, 168], ['', ''])
call s:hi('Delimiter', [137, 94], ['', ''])
call s:hi('StringDelimiter', [137, 94], ['', ''])
call s:hi('Statement', [108, 66], ['', ''])
" case, default, etc.
" hi Label ctermfg=

" if else end
call s:hi('Conditional', [110, 31], ['', ''])

" while end
call s:hi('Repeat', [68, 67], ['', ''])
call s:hi('Todo', [161, 125], [s:dark_bg_2, s:light_bg_2])
call s:hi('Function', [187, 58], ['', ''])

" Macros
call s:hi('Define', [173, 131], ['', ''])
call s:hi('Macro', [173, 131], ['', ''])
call s:hi('Include', [173, 131], ['', ''])
call s:hi('PreCondit', [173, 131], ['', ''])


" #!
call s:hi('PreProc', [143, 58], ['', ''])

" @abc
call s:hi('Identifier', [217, 96], ['', ''])

" AAA Abc
call s:hi('Type', [179, 94], ['', ''])

" + - * / <<
call s:hi('Operator', [186, 131], ['', ''])

" super yield
call s:hi('Keyword', [168, 168], ['', ''])

" raise
call s:hi('Exception', [161, 161], ['', ''])
"
" hi StorageClass ctermfg=
call s:hi('Structure', [116, 23], ['', ''])
" hi Typedef ctermfg=

call s:hi('Error', [s:dark_fg, s:light_bg_1], [52, 174])
call s:hi('ErrorMsg', [s:dark_fg, s:light_bg_1], [52, 168])
call s:hi('Underlined', [181, 168], ['', ''])

" set textwidth=80
" set colorcolumn=+1
call s:hi('ColorColumn', ['', ''], [s:dark_bg - 1, s:light_bg - 2])

" GVIM only
" hi Cursor ctermfg=
" hi CursorIM ctermfg=

" set cursorline cursorcolumn
call s:hi('CursorLine', ['', ''], [s:dark_bg - 1, s:light_bg - 1])
call s:hi('CursorLineNr', [131, 131], [s:dark_bg - 1, s:light_bg - 1])
call s:hi('CursorColumn', ['', ''], [s:dark_bg - 1, s:light_bg - 1])
call s:hi('NormalFloat', ['', ''], [s:dark_bg - 1, s:light_bg - 1])

call s:hi('Directory', [187, 95], ['', ''])

call s:hi('DiffAdd',    ['NONE', 'NONE'], [22, 151])
call s:hi('DiffDelete', ['NONE', 'NONE'], [95, 181])
call s:hi('DiffChange', ['NONE', 'NONE'], [s:dark_bg + 3, 189])
call s:hi('DiffText',   ['NONE', 'NONE'], [52, 224])

call s:hi('VertSplit', [s:dark_bg_2, s:light_bg - 3], [s:dark_bg_2, s:light_bg - 3])
call s:hi('Folded', [101, 101], [s:dark_bg + 1, s:light_bg - 2])

" set foldcolumn=1
call s:hi('FoldColumn', [144, 94], [s:dark_bg + 1, s:light_bg - 2])

call s:hi('MatchParen', ['', ''], [s:dark_bg + 3, s:light_bg - 3])

" -- INSERT --
call s:hi('ModeMsg', [173, 173], ['', ''])

" let &showbreak = '> '
call s:hi('NonText', [59, 145], ['', ''])

call s:hi('MoreMsg', [173, 173], ['', ''])

" Popup menu
call s:hi('Pmenu', [s:dark_bg + 1, 238], [224, 224])
call s:hi('PmenuSel', [s:dark_fg, s:dark_fg], [89, 89])
call s:hi('PmenuSbar', ['', ''], [65, 65])
call s:hi('PmenuThumb', ['', ''], [23, 23])

call s:hi('Search', [s:dark_fg, 255], [24, 74])
call s:hi('IncSearch', [220, 220], [s:dark_bg + 1, 238])

" String delimiter, interpolation
call s:hi('Special', [216, 173], ['', ''])
" hi SpecialChar ctermfg=
" hi SpecialComment ctermfg=
" hi Tag ctermfg=
" hi Debug ctermfg=

" :map, listchars
call s:hi('SpecialKey', [59, 145], ['', ''])

if !s:gui
  " Red / Blue / Cyan / Magenta
  if s:style_idx == 0
    hi SpellBad   ctermbg=NONE cterm=underline ctermfg=168
    hi SpellCap   ctermbg=NONE cterm=underline ctermfg=110
    hi SpellLocal ctermbg=NONE cterm=underline ctermfg=153
    hi SpellRare  ctermbg=NONE cterm=underline ctermfg=218
  else
    hi SpellBad   ctermbg=NONE cterm=underline ctermfg=125
    hi SpellCap   ctermbg=NONE cterm=underline ctermfg=25
    hi SpellLocal ctermbg=NONE cterm=underline ctermfg=31
    hi SpellRare  ctermbg=NONE cterm=underline ctermfg=96
  endif
else
  if s:style_idx == 0
    execute 'hi SpellBad   gui=undercurl guisp=' . s:rgb_map[168]
    execute 'hi SpellCap   gui=undercurl guisp=' . s:rgb_map[110]
    execute 'hi SpellLocal gui=undercurl guisp=' . s:rgb_map[153]
    execute 'hi SpellRare  gui=undercurl guisp=' . s:rgb_map[218]
  else
    execute 'hi SpellBad   gui=undercurl guisp=' . s:rgb_map[125]
    execute 'hi SpellCap   gui=undercurl guisp=' . s:rgb_map[25]
    execute 'hi SpellLocal gui=undercurl guisp=' . s:rgb_map[31]
    execute 'hi SpellRare  gui=undercurl guisp=' . s:rgb_map[96]
  endif
endif

"
call s:hi('StatusLine', [95, 95], [187, 187])
call s:hi('StatusLineNC', [s:dark_bg + 2, s:light_bg - 2], [187, 238])
call s:hi('StatusLineTerm', [95, 95], [187, 187])
call s:hi('StatusLineTermNC', [s:dark_bg + 2, s:light_bg - 2], [187, 238])
hi StatusLineTerm cterm=bold,reverse gui=bold,reverse
hi StatusLineTermNC cterm=bold,reverse gui=bold,reverse
call s:hi('TabLineFill', [s:dark_bg + 2, s:light_bg - 2], ['', ''])
call s:hi('TabLineSel', [187, 187], [23, 66])
call s:hi('TabLine', [s:dark_bg + 12, s:light_bg - 12], [s:dark_bg + 4, s:light_bg - 4])
call s:hi('WildMenu', [95, 95], [184, 184])

" :set all
call s:hi('Title', [181, 88], ['', ''])

" TODO
call s:hi('Question', [179, 88], ['', ''])

" Search hit bottom
call s:hi('WarningMsg', [179, 88], ['', ''])

" Sign column
call s:hi('SignColumn', [173, 173], [s:dark_bg, s:light_bg])

" Diff
call s:hi('diffAdded',   [108, 65], ['', ''])
call s:hi('diffRemoved', [174, 131], ['', ''])
hi link diffLine Constant

call s:hi('Conceal', [s:dark_fg + 2, s:light_fg - 2], [s:dark_bg - 1, s:light_bg + 2])
call s:hi('Ignore',  [s:dark_bg + 3, s:light_bg - 3], [s:dark_bg, s:light_bg])

"""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""

" vim-indent-guides
" -----------------
let g:indent_guides_auto_colors = 0
call s:hi('IndentGuidesOdd', ['', ''], [s:dark_bg - 1, s:light_bg + 1])
call s:hi('IndentGuidesEven', ['', ''], [s:dark_bg + 1, s:light_bg - 1])

" vim-gitgutter
" -------------
call s:hi('GitGutterAdd', [108, 65], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('GitGutterChange', [68, 68], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('GitGutterDelete', [161, 161], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('GitGutterChangeDelete', [168, 168], [s:dark_bg + 1, s:light_bg - 2])

" ale
" ---
call s:hi('ALEErrorSign', [161, 161], [s:dark_bg, s:light_bg])
call s:hi('ALEWarningSign', [174, 131], [s:dark_bg, s:light_bg])

" vim-signify
" -----------
call s:hi('SignifySignAdd', [108, 65], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('SignifySignChange', [68, 68], [s:dark_bg + 1, s:light_bg - 2])
call s:hi('SignifySignDelete', [161, 161], [s:dark_bg + 1, s:light_bg - 2])

" coc.nvim
" --------
call s:hi('CocFloating', [s:dark_fg, s:light_fg], [s:dark_bg_2, s:light_bg - 2])

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces     
" ---------------------------------------------------^^^^^
call s:hi('ExtraWhitespace', ['', ''], [s:dark_bg - 1, s:light_bg - 2])

" vim-ruby
" --------
" " rubySymbol
let ruby_operators = 1
call s:hi('rubyClass', [31, 31], ['', ''])
" call s:hi('rubyInstanceVariable', [189, 189], ['', ''])
call s:hi('rubyRegexp', [186, 101], ['', ''])
call s:hi('rubyRegexpDelimiter', [168, 168], ['', ''])
call s:hi('rubyArrayDelimiter', [67, 38], ['', ''])
call s:hi('rubyBlockParameterList', [186, 94], ['', ''])
call s:hi('rubyCurlyBlockDelimiter', [144, 101], ['', ''])

" ARGV $stdout
call s:hi('rubyPredefinedIdentifier', [230, 52], ['', ''])
" hi rubyRegexpSpecial

hi CursorLine cterm=NONE
hi CursorLineNr cterm=NONE

let g:seoul256_current_fg = [s:dark_fg, s:light_fg][s:style_idx]
let g:seoul256_current_bg = [s:dark_bg, s:light_bg][s:style_idx]
let g:colors_name = 'seoul256'
if s:colors_name != g:colors_name || s:background == s:style
  let &background = s:style
else
  let &background = s:background
endif
