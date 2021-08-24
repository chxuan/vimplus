" Name:    Firewatch duotone vim colorscheme
" Author:  Ramzi Akremi
" License: MIT
" Version: 1.0.0

" Global setup =============================================================={{{

hi clear
syntax reset
"if exists('g:colors_name')
  "unlet g:colors_name
"endif
let g:colors_name = 'two-firewatch'

if !exists('g:two_firewatch_italics')
  let g:two_firewatch_italics = 0
endif

if has('gui_running') || &t_Co == 88 || &t_Co == 256
  " functions
  " returns an approximate grey index for the given grey level

  " Utility functions -------------------------------------------------------{{{
  fun <SID>grey_number(x)
    if &t_Co == 88
      if a:x < 23
        return 0
      elseif a:x < 69
        return 1
      elseif a:x < 103
        return 2
      elseif a:x < 127
        return 3
      elseif a:x < 150
        return 4
      elseif a:x < 173
        return 5
      elseif a:x < 196
        return 6
      elseif a:x < 219
        return 7
      elseif a:x < 243
        return 8
      else
        return 9
      endif
    else
      if a:x < 14
        return 0
      else
        let l:n = (a:x - 8) / 10
        let l:m = (a:x - 8) % 10
        if l:m < 5
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun

  " returns the actual grey level represented by the grey index
  fun <SID>grey_level(n)
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 46
      elseif a:n == 2
        return 92
      elseif a:n == 3
        return 115
      elseif a:n == 4
        return 139
      elseif a:n == 5
        return 162
      elseif a:n == 6
        return 185
      elseif a:n == 7
        return 208
      elseif a:n == 8
        return 231
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 8 + (a:n * 10)
      endif
    endif
  endfun

  " returns the palette index for the given grey index
  fun <SID>grey_color(n)
    if &t_Co == 88
      if a:n == 0
        return 16
      elseif a:n == 9
        return 79
      else
        return 79 + a:n
      endif
    else
      if a:n == 0
        return 16
      elseif a:n == 25
        return 231
      else
        return 231 + a:n
      endif
    endif
  endfun

  " returns an approximate color index for the given color level
  fun <SID>rgb_number(x)
    if &t_Co == 88
      if a:x < 69
        return 0
      elseif a:x < 172
        return 1
      elseif a:x < 230
        return 2
      else
        return 3
      endif
    else
      if a:x < 75
        return 0
      else
        let l:n = (a:x - 55) / 40
        let l:m = (a:x - 55) % 40
        if l:m < 20
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun

  " returns the actual color level for the given color index
  fun <SID>rgb_level(n)
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 139
      elseif a:n == 2
        return 205
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 55 + (a:n * 40)
      endif
    endif
  endfun

  " returns the palette index for the given R/G/B color indices
  fun <SID>rgb_color(x, y, z)
    if &t_Co == 88
      return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
      return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
  endfun

  " returns the palette index to approximate the given R/G/B color levels
  fun <SID>color(r, g, b)
    " get the closest grey
    let l:gx = <SID>grey_number(a:r)
    let l:gy = <SID>grey_number(a:g)
    let l:gz = <SID>grey_number(a:b)

    " get the closest color
    let l:x = <SID>rgb_number(a:r)
    let l:y = <SID>rgb_number(a:g)
    let l:z = <SID>rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
      " there are two possibilities
      let l:dgr = <SID>grey_level(l:gx) - a:r
      let l:dgg = <SID>grey_level(l:gy) - a:g
      let l:dgb = <SID>grey_level(l:gz) - a:b
      let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
      let l:dr = <SID>rgb_level(l:gx) - a:r
      let l:dg = <SID>rgb_level(l:gy) - a:g
      let l:db = <SID>rgb_level(l:gz) - a:b
      let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
      if l:dgrey < l:drgb
        " use the grey
        return <SID>grey_color(l:gx)
      else
        " use the color
        return <SID>rgb_color(l:x, l:y, l:z)
      endif
    else
      " only one possibility
      return <SID>rgb_color(l:x, l:y, l:z)
    endif
  endfun

  " returns the palette index to approximate the 'rrggbb' hex string
  fun <SID>rgb(rgb)
    let l:r = ('0x' . strpart(a:rgb, 0, 2)) + 0
    let l:g = ('0x' . strpart(a:rgb, 2, 2)) + 0
    let l:b = ('0x' . strpart(a:rgb, 4, 2)) + 0

    return <SID>color(l:r, l:g, l:b)
  endfun

  " sets the highlighting for the given group
  fun <SID>X(group, fg, bg, attr)
    let l:attr = a:attr
    if g:two_firewatch_italics == 0 && l:attr ==? 'italic'
      let l:attr = 'none'
    endif

    if a:fg !=? ''
      exec 'hi ' . a:group . ' guifg=#' . a:fg . ' ctermfg=' . <SID>rgb(a:fg)
    endif
    if a:bg !=? ''
      exec 'hi ' . a:group . ' guibg=#' . a:bg . ' ctermbg=' . <SID>rgb(a:bg)
    endif
    if a:attr !=? ''
      exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
  endfun

  "}}}

  " Color definition --------------------------------------------------------{{{
  if &background ==? 'light'
    let s:uno_1 = '2d2006'
    let s:uno_2 = '896724'
    let s:uno_3 = 'B29762'
    let s:uno_4 = 'B6ad9a'

    let s:duo_1 = '065289'
    let s:duo_2 = '718ecd'
    let s:duo_3 = 'aeb3b7'

    let s:syntax_color_renamed  = '33a0ff'
    let s:syntax_color_added    = '43d08a'
    let s:syntax_color_modified = 'e0c285'
    let s:syntax_color_removed  = 'e05252'

    let s:syntax_fg               = s:uno_2
    let s:syntax_bg               = 'FAF8F5'
    let s:syntax_accent           = '447EBB'
    let s:syntax_gutter           = 'EAE1D2'
    let s:syntax_selection        = 'E5DDCB'
    let s:syntax_fold_bg          = 'd1cec7'
    let s:syntax_cursor_line      = 'F3EFE7'
  else
    let s:uno_1 = 'd6e9ff'
    let s:uno_2 = 'abb2bf'
    let s:uno_3 = '6e88a6'
    let s:uno_4 = '55606d'

    let s:duo_1 = 'c8ae9d'
    let s:duo_2 = 'e06c75'
    let s:duo_3 = 'dd672c'

    let s:syntax_color_renamed  = '33a0ff'
    let s:syntax_color_added    = '43d08a'
    let s:syntax_color_modified = 'e0c285'
    let s:syntax_color_removed  = 'e05252'

    let s:syntax_fg               = s:uno_2
    let s:syntax_bg               = '282c34'
    let s:syntax_accent           = '56b6c2'
    let s:syntax_gutter           = '636d83'
    let s:syntax_selection        = '3e4452'
    let s:syntax_fold_bg          = '5c6370'
    let s:syntax_cursor_line      = '2c323c'
  endif

  " neovim :terminal colors
  let g:terminal_color_0 = "#282c34"
  let g:terminal_color_8 = "#282c34"
  let g:terminal_color_1 = "#e06c75"
  let g:terminal_color_9 = "#e06c75"
  let g:terminal_color_2 = "#98c379"
  let g:terminal_color_10 = "#98c379"
  let g:terminal_color_3 = "#e5c07b"
  let g:terminal_color_11 = "#e5c07b"
  let g:terminal_color_4 = "#61afef"
  let g:terminal_color_12 = "#61afef"
  let g:terminal_color_5 = "#c678dd"
  let g:terminal_color_13 = "#c678dd"
  let g:terminal_color_6 = "#56b6c2"
  let g:terminal_color_14 = "#56b6c2"
  let g:terminal_color_7 = "#dcdfe4"
  let g:terminal_color_15 = "#dcdfe4"

  "}}}

  " Vim editor color --------------------------------------------------------{{{
  call <sid>X('bold',         '',               '',                   'bold')
  call <sid>X('ColorColumn',  '',               s:syntax_cursor_line, '')
  call <sid>X('Conceal',      '',               '',                   '')
  call <sid>X('Cursor',       s:syntax_bg,      s:syntax_accent,      '')
  call <sid>X('CursorIM',     '',               '',                   '')
  call <sid>X('CursorColumn', '',               s:syntax_cursor_line, '')
  call <sid>X('CursorLine',   '',               s:syntax_cursor_line, '')
  call <sid>X('Directory',    s:uno_1,          '',                   '')
  call <sid>X('ErrorMsg',     s:syntax_color_removed,  s:syntax_bg,          'none')
  call <sid>X('VertSplit',    s:syntax_fold_bg, '',                   'none')
  call <sid>X('Folded',       s:syntax_bg,      s:syntax_fold_bg,     '')
  call <sid>X('FoldColumn',   s:uno_3,          s:syntax_cursor_line, '')
  call <sid>X('IncSearch',    s:syntax_bg,      s:uno_4,              '')
  call <sid>X('LineNr',       s:syntax_fold_bg, '',                   '')
  call <sid>X('CursorLineNr', s:uno_2,          '',                   'none')
  call <sid>X('MatchParen',   s:syntax_bg,      s:syntax_accent,      '')
  call <sid>X('Italic',       '',               '',                   'italic')
  call <sid>X('ModeMsg',      s:syntax_color_added,      '',                   '')
  call <sid>X('MoreMsg',      s:syntax_fg,      '',                   '')
  call <sid>X('NonText',      s:uno_4,          '',                   '')
  call <sid>X('PMenu',        '',               s:syntax_selection,   '')
  call <sid>X('PMenuSel',     '',               s:syntax_bg,          '')
  call <sid>X('PMenuSbar',    '',               s:syntax_bg,          '')
  call <sid>X('PMenuThumb',   '',               s:uno_1,              '')
  call <sid>X('Question',     s:syntax_accent,  '',                   '')
  call <sid>X('Search',       s:syntax_bg,      s:uno_4,              '')
  call <sid>X('SpecialKey',   s:syntax_fold_bg, '',                   '')
  call <sid>X('StatusLine',   s:syntax_fg,      s:syntax_cursor_line, 'none')
  call <sid>X('StatusLineNC', s:uno_4,          '',                   '')
  call <sid>X('TabLine',      s:uno_4,          '',                   '')
  call <sid>X('TabLineFill',  '',               '',                   'none')
  call <sid>X('TabLineSel',   s:syntax_fg,      '',                   '')
  call <sid>X('Title',        s:duo_2,          '',                   'bold')
  call <sid>X('Visual',       '',               s:syntax_selection,   '')
  call <sid>X('VisualNOS',    '',               s:syntax_selection,   '')
  call <sid>X('WarningMsg',   s:syntax_accent,  '',                   '')
  call <sid>X('TooLong',      s:syntax_accent,  '',                   '')
  call <sid>X('WildMenu',     s:syntax_fg,      s:uno_4,              '')
  call <sid>X('Normal',       s:syntax_fg,      s:syntax_bg,          '')
  call <sid>X('SignColumn',   '',               s:uno_4,              '')
  call <sid>X('Special',      s:duo_2,          '',                   '')
  " }}}

  " Standard syntax highlighting --------------------------------------------{{{
  call <sid>X('Comment',        s:uno_4,                '',          'italic')
  call <sid>X('Constant',       s:duo_2,                '',          '')
  call <sid>X('String',         s:duo_1,                '',          '')
  call <sid>X('Character',      s:duo_2,                '',          '')
  call <sid>X('Number',         s:duo_2,                '',          '')
  call <sid>X('Boolean',        s:duo_2,                '',          '')
  call <sid>X('Float',          s:duo_2,                '',          '')
  call <sid>X('Identifier',     s:uno_3,                '',          'none')
  call <sid>X('Function',       s:uno_2,                '',          '')
  call <sid>X('Statement',      s:duo_1,                '',          'none')
  call <sid>X('Conditional',    s:syntax_accent,        '',          '')
  call <sid>X('Repeat',         s:duo_2,                '',          '')
  call <sid>X('Label',          s:uno_1,                '',          '')
  call <sid>X('Operator',       s:syntax_accent,        '',          'none')
  call <sid>X('Keyword',        s:uno_1,                '',          '')
  call <sid>X('Exception',      s:uno_1,                '',          '')
  call <sid>X('PreProc',        s:uno_1,                '',          '')
  "call <sid>X('Include',        s:duo_2,                '',          '')
  "call <sid>X('Define',         s:duo_2,                '',          'none')
  "call <sid>X('Macro',          s:uno_3,                '',          '')
  "call <sid>X('PreCondit',      'ff0000',               '',          '')
  call <sid>X('Type',           s:duo_1,                '',          'none')
  call <sid>X('StorageClass',   s:duo_2,                '',          '')
  call <sid>X('Structure',      s:uno_1,                '',          '')
  call <sid>X('Typedef',        s:uno_1,                '',          '')
  call <sid>X('Special',        s:uno_3,                '',          '')
  call <sid>X('SpecialChar',    '',                     '',          '')
  call <sid>X('Tag',            '',                     '',          '')
  call <sid>X('Delimiter',      s:uno_4,                '',          '')
  call <sid>X('SpecialComment', '',                     '',          '')
  call <sid>X('Debug',          '',                     '',          '')
  call <sid>X('Underlined',     s:duo_1,                '',          'underline')
  call <sid>X('Ignore',         '',                     '',          '')
  call <sid>X('Error',          s:syntax_color_removed, s:syntax_bg, 'bold')
  call <sid>X('Todo',           s:syntax_color_added,   s:syntax_bg, '')
  " }}}

  " Asciidoc highlighting ---------------------------------------------------{{{
  call <sid>X('asciidocListingBlock',   s:uno_2,  '', '')
  " }}}

  " Cucumber highlighting ---------------------------------------------------{{{
  call <sid>X('cucumberGiven',           s:duo_2,         '', '')
  call <sid>X('cucumberWhen',            s:duo_2,         '', '')
  call <sid>X('cucumberWhenAnd',         s:duo_2,         '', '')
  call <sid>X('cucumberThen',            s:duo_2,         '', '')
  call <sid>X('cucumberThenAnd',         s:duo_2,         '', '')
  call <sid>X('cucumberUnparsed',        s:duo_1,         '', '')
  call <sid>X('cucumberFeature',         s:syntax_accent, '', 'bold')
  call <sid>X('cucumberBackground',      s:duo_2,         '', 'bold')
  call <sid>X('cucumberScenario',        s:duo_2,         '', 'bold')
  call <sid>X('cucumberScenarioOutline', s:duo_2,         '', 'bold')
  call <sid>X('cucumberTags',            s:uno_4,         '', 'bold')
  call <sid>X('cucumberDelimiter',       s:uno_4,         '', 'bold')
  " }}}

  " Diff highlighting -------------------------------------------------------{{{
  call <sid>X('DiffAdd',     s:syntax_color_added,    s:syntax_selection, '')
  call <sid>X('DiffChange',  s:syntax_color_modified, s:syntax_selection, '')
  call <sid>X('DiffDelete',  s:syntax_color_removed,  s:syntax_selection, '')
  call <sid>X('DiffText',    s:uno_2,                 s:syntax_selection, '')
  call <sid>X('DiffAdded',   s:duo_2,                 s:syntax_selection, '')
  call <sid>X('DiffFile',    s:syntax_accent,         s:syntax_selection, '')
  call <sid>X('DiffNewFile', s:duo_2,                 s:syntax_selection, '')
  call <sid>X('DiffLine',    s:uno_2,                 s:syntax_selection, '')
  call <sid>X('DiffRemoved', s:syntax_accent,         s:syntax_selection, '')
  " }}}

  " C/C++ and other languages like that -------------------------------------{{{
  "call <sid>X('cCustomParen',           s:uno_4,         '', '')
  " }}}

  " CSS/Sass highlighting ---------------------------------------------------{{{
  call <sid>X('cssAttrComma',           s:duo_3,         '', '')
  call <sid>X('cssAttributeSelector',   s:duo_2,         '', '')
  call <sid>X('cssBraces',              s:uno_4,         '', '')
  call <sid>X('cssClassName',           s:uno_1,         '', '')
  call <sid>X('cssClassNameDot',        s:uno_1,         '', '')
  call <sid>X('cssDefinition',          s:duo_3,         '', '')
  call <sid>X('cssFlexibleBoxAttr',     s:duo_1,         '', '')
  call <sid>X('cssBorderAttr',          s:duo_1,         '', '')
  call <sid>X('cssPositioningAttr',     s:duo_1,         '', '')
  call <sid>X('cssTransitionAttr',      s:duo_1,         '', '')
  call <sid>X('cssCommonAttr',          s:duo_1,         '', '')
  call <sid>X('cssBoxAttr',             s:duo_1,         '', '')
  call <sid>X('cssFontAttr',            s:duo_1,         '', '')
  call <sid>X('cssTextAttr',            s:duo_1,         '', '')
  call <sid>X('cssFontDescriptor',      s:uno_1,         '', '')
  call <sid>X('cssFunctionName',        s:uno_3,         '', '')
  call <sid>X('cssIdentifier',          s:duo_1,         '', '')
  call <sid>X('cssImportant',           s:duo_1,         '', '')
  call <sid>X('cssUnitDecorators',      s:duo_2,         '', '')
  call <sid>X('cssInclude',             s:uno_1,         '', '')
  call <sid>X('cssIncludeKeyword',      s:duo_3,         '', '')
  call <sid>X('cssMediaType',           s:uno_1,         '', '')
  call <sid>X('cssProp',                s:uno_3,         '', '')
  call <sid>X('cssPseudoClassId',       s:uno_1,         '', '')
  call <sid>X('cssSelectorOp',          s:duo_3,         '', '')
  call <sid>X('cssSelectorOp2',         s:duo_3,         '', '')
  call <sid>X('cssStringQ',             s:duo_1,         '', '')
  call <sid>X('cssStringQQ',            s:duo_1,         '', '')
  call <sid>X('cssTagName',             s:uno_1,         '', '')
  call <sid>X('cssClassNameDot',        s:uno_4,         '', '')
  call <sid>X('cssValueNumber',         s:duo_1,         '', '')

  call <sid>X('sassAmpersand',          s:syntax_accent, '', '')
  call <sid>X('sassClass',              s:uno_1,         '', '')
  call <sid>X('sassControl',            s:duo_3,         '', '')
  call <sid>X('sassExtend',             s:duo_3,         '', '')
  call <sid>X('sassFor',                s:uno_1,         '', '')
  call <sid>X('sassProperty',           s:uno_3,         '', '')
  call <sid>X('sassFunction',           s:duo_1,         '', '')
  call <sid>X('sassId',                 s:duo_2,         '', '')
  call <sid>X('sassInclude',            s:uno_1,         '', '')
  call <sid>X('sassMedia',              s:duo_3,         '', '')
  call <sid>X('sassMediaOperators',     s:uno_1,         '', '')
  call <sid>X('sassMixin',              s:duo_3,         '', '')
  call <sid>X('sassMixinName',          s:duo_2,         '', '')
  call <sid>X('sassMixing',             s:duo_3,         '', '')
  call <sid>X('sassVariable',           s:uno_2,         '', '')
  call <sid>X('sassVariableAssignment', s:uno_4,         '', '')
  " }}}

  " Elixir highlighting------------------------------------------------------{{{
  "call <sid>X('elixirAtom',              s:syntax_accent, '', '')
  "call <sid>X('elixirAlias',             s:duo_1,         '', '')
  call <sid>X('elixirBlock',             s:uno_3,         '', '')
  "call <sid>X('elixirBlockDefinition',   s:duo_2,         '', '')
  "call <sid>X('elixirInclude',           s:duo_2,         '', '')
  call <sid>X('elixirId',                s:uno_2,         '', '')
  call <sid>X('elixirModuleDeclaration', s:uno_1,         '', '')
  "call <sid>X('elixirModuleDefine',      s:duo_2,         '', '')
  "call <sid>X('elixirOperator',          s:uno_3,         '', '')
  "call <sid>X('elixirSigil',             s:uno_4,         '', '')
  "call <sid>X('elixirVariable',          s:duo_2,         '', '')
  " }}}

  " Go highlighting ---------------------------------------------------------{{{
  call <sid>X('goDeclaration',         s:duo_3, '', '')
  " }}}

  " Git and git related plugins highlighting --------------------------------{{{
  call <sid>X('gitcommitComment',       s:uno_4,         '', '')
  call <sid>X('gitcommitUnmerged',      s:duo_2,         '', '')
  call <sid>X('gitcommitOnBranch',      '',              '', '')
  call <sid>X('gitcommitBranch',        s:duo_3,         '', '')
  call <sid>X('gitcommitDiscardedType', s:syntax_accent, '', '')
  call <sid>X('gitcommitSelectedType',  s:duo_2,         '', '')
  call <sid>X('gitcommitHeader',        '',              '', '')
  call <sid>X('gitcommitUntrackedFile', s:duo_2,         '', '')
  call <sid>X('gitcommitDiscardedFile', s:syntax_accent, '', '')
  call <sid>X('gitcommitSelectedFile',  s:duo_2,         '', '')
  call <sid>X('gitcommitUnmergedFile',  s:uno_1,         '', '')
  call <sid>X('gitcommitFile',          '',              '', '')
  hi link gitcommitNoBranch       gitcommitBranch
  hi link gitcommitUntracked      gitcommitComment
  hi link gitcommitDiscarded      gitcommitComment
  hi link gitcommitSelected       gitcommitComment
  hi link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi link gitcommitSelectedArrow  gitcommitSelectedFile
  hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

  call <sid>X('SignifySignAdd',    s:duo_2,         '', '')
  call <sid>X('SignifySignChange', s:uno_1,         '', '')
  call <sid>X('SignifySignDelete', s:syntax_accent, '', '')
  hi link GitGutterAdd    SignifySignAdd
  hi link GitGutterChange SignifySignChange
  hi link GitGutterDelete SignifySignDelete
  call <sid>X('diffAdded',   s:duo_2,         '', '')
  call <sid>X('diffRemoved', s:syntax_accent, '', '')
  " }}}

  " HTML highlighting -------------------------------------------------------{{{
  call <sid>X('htmlArg',            s:uno_2, '', '')
  call <sid>X('htmlTagName',        s:uno_1, '', '')
  call <sid>X('htmlSpecialTagName', s:uno_1, '', '')
  call <sid>X('htmlTag',            s:uno_3, '', '')

  call <sid>X('liquidDelimiter',    s:uno_4, '', '')
  call <sid>X('liquidKeyword',      s:uno_3, '', '')
  " }}}

  " JavaScript highlighting -------------------------------------------------{{{
  call <sid>X('coffeeString',           s:duo_2,         '', '')

  call <sid>X('javaScriptBraces',       s:uno_3,         '', '')
  call <sid>X('javaScriptFunction',     s:duo_3,         '', '')
  call <sid>X('javaScriptIdentifier',   s:duo_3,         '', '')
  call <sid>X('javaScriptNull',         s:uno_1,         '', '')
  call <sid>X('javaScriptNumber',       s:uno_1,         '', '')
  call <sid>X('javaScriptRequire',      s:duo_2,         '', '')
  call <sid>X('javaScriptReserved',     s:duo_3,         '', '')
  " https://github.com/pangloss/vim-javascript
  call <sid>X('jsArrowFunction',        s:duo_3,         '', '')
  call <sid>X('jsClassKeywords',        s:duo_3,         '', '')
  call <sid>X('jsDocParam',             s:duo_2,         '', '')
  call <sid>X('jsDocTags',              s:duo_3,         '', '')
  call <sid>X('jsFuncCall',             s:uno_1,         '', '')
  call <sid>X('jsFunction',             s:duo_3,         '', '')
  call <sid>X('jsGlobalObjects',        s:uno_1,         '', '')
  call <sid>X('jsModuleWords',          s:duo_3,         '', '')
  call <sid>X('jsModules',              s:duo_3,         '', '')
  call <sid>X('jsNoise',                s:uno_3,         '', '')
  call <sid>X('jsNull',                 s:uno_1,         '', '')
  call <sid>X('jsOperator',             s:duo_2,         '', '')
  call <sid>X('jsObjectBraces',         s:uno_3,         '', '')
  call <sid>X('jsBrackets',             s:uno_3,         '', '')
  call <sid>X('jsParens',               s:uno_3,         '', '')
  call <sid>X('jsStorageClass',         s:duo_1,         '', '')
  call <sid>X('jsTemplateBraces',       s:syntax_accent, '', '')
  call <sid>X('jsTemplateVar',          s:duo_2,         '', '')
  call <sid>X('jsThis',                 s:syntax_accent, '', '')
  call <sid>X('jsUndefined',            s:uno_1,         '', '')
  " https://github.com/othree/yajs.vim
  call <sid>X('javascriptArrowFunc',    s:duo_3,         '', '')
  call <sid>X('javascriptClassExtends', s:duo_3,         '', '')
  call <sid>X('javascriptClassKeyword', s:duo_3,         '', '')
  call <sid>X('javascriptDocNotation',  s:duo_3,         '', '')
  call <sid>X('javascriptDocParamName', s:duo_2,         '', '')
  call <sid>X('javascriptDocTags',      s:duo_3,         '', '')
  call <sid>X('javascriptEndColons',    s:uno_3,         '', '')
  call <sid>X('javascriptExport',       s:duo_3,         '', '')
  call <sid>X('javascriptFuncArg',      s:uno_1,         '', '')
  call <sid>X('javascriptFuncKeyword',  s:duo_3,         '', '')
  call <sid>X('javascriptIdentifier',   s:syntax_accent, '', '')
  call <sid>X('javascriptImport',       s:duo_3,         '', '')
  call <sid>X('javascriptObjectLabel',  s:uno_1,         '', '')
  call <sid>X('javascriptOpSymbol',     s:duo_2,         '', '')
  call <sid>X('javascriptOpSymbols',    s:duo_2,         '', '')
  call <sid>X('javascriptPropertyName', s:duo_2,         '', '')
  call <sid>X('javascriptTemplateSB',   s:syntax_accent, '', '')
  call <sid>X('javascriptVariable',     s:duo_3,         '', '')
  " }}}

  " JSON highlighting -------------------------------------------------------{{{
  call <sid>X('jsonCommentError',      s:uno_1,         '', ''        )
  call <sid>X('jsonKeyword',           s:duo_2,         '', ''        )
  call <sid>X('jsonQuote',             s:uno_3,         '', ''        )
  call <sid>X('jsonMissingCommaError', s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonNoQuotesError',     s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonNumError',          s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonString',            s:duo_1,         '', ''        )
  call <sid>X('jsonStringSQError',     s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonSemicolonError',    s:syntax_accent, '', 'reverse' )
  " }}}

  " Markdown highlighting ---------------------------------------------------{{{
  call <sid>X('markdownUrl',              s:duo_3, '', '')
  call <sid>X('markdownCode',             s:duo_1, '', '')
  call <sid>X('markdownHeadingDelimiter', s:duo_3, '', '')
  call <sid>X('markdownListMarker',       s:duo_3, '', '')

  call <sid>X('mkdCode',                  s:duo_1, '', '')
  call <sid>X('mkdDelimiter',             s:uno_3, '', '')
  call <sid>X('mkdLink',                  s:duo_1, '', '')
  call <sid>X('mkdLinkDef',               s:duo_1, '', '')
  call <sid>X('mkdLinkDefTarget',         s:duo_1, '', 'underline')
  call <sid>X('mkdURL',                   s:duo_1, '', 'underline')

  call <sid>X('htmlBold',                 s:uno_2, '', 'bold')
  call <sid>X('htmlItalic',               s:uno_2, '', 'italic')
  " }}}

  " NERDTree highlighting ---------------------------------------------------{{{
  call <sid>X('NERDTreeExecFile',      s:duo_1, '', '')
  " }}}

  " Ruby highlighting -------------------------------------------------------{{{
  call <sid>X('rubyBlock',                     s:uno_2,         '', '')
  call <sid>X('rubyBlockParameter',            s:uno_2,         '', '')
  call <sid>X('rubyBlockParameterList',        s:uno_3,         '', '')
  call <sid>X('rubyCapitalizedMethod',         s:duo_2,         '', '')
  call <sid>X('rubyClass',                     s:duo_2,         '', '')
  call <sid>X('rubyConstant',                  s:uno_3,         '', '')
  call <sid>X('rubyControl',                   s:duo_2,         '', '')
  call <sid>X('rubyConditionalModifier',       s:syntax_accent, '', '')
  call <sid>X('rubyCurlyBlockDelimiter',       s:uno_4,         '', '')
  call <sid>X('rubyDefine',                    s:duo_2,         '', '')
  call <sid>X('rubyEscape',                    s:syntax_accent, '', '')
  call <sid>X('rubyFunction',                  s:uno_1,         '', '')
  call <sid>X('rubyGlobalVariable',            s:syntax_accent, '', '')
  call <sid>X('rubyInclude',                   s:duo_2,         '', '')
  call <sid>X('rubyIncluderubyGlobalVariable', s:syntax_accent, '', '')
  call <sid>X('rubyInstanceVariable',          s:syntax_accent, '', '')
  call <sid>X('rubyInterpolation',             s:duo_2,         '', '')
  call <sid>X('rubyInterpolationDelimiter',    s:uno_4,         '', '')
  call <sid>X('rubyModule',                    s:duo_2,         '', '')
  call <sid>X('rubyRegexp',                    s:duo_1,         '', '')
  call <sid>X('rubyRegexpDelimiter',           s:uno_4,         '', '')
  call <sid>X('rubyStringDelimiter',           s:duo_3,         '', '')
  call <sid>X('rubySymbol',                    s:duo_1,         '', '')
  " }}}

  " Spelling highlighting ---------------------------------------------------{{{
  call <sid>X('SpellBad',     '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellLocal',   '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellCap',     '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellRare',    '', s:syntax_bg, 'undercurl')
  " }}}

  " Vim highlighting --------------------------------------------------------{{{
  "call <sid>X('vimCommentTitle', s:uno_4, '', 'bold')
  call <sid>X('vimCommand',      s:uno_1, '', '')
  call <sid>X('vimVar',          s:duo_2, '', '')
  call <sid>X('vimEnvVar',       s:duo_3, '', '')

  " Vim Help highlights
  call <sid>X('helpHyperTextJump', s:duo_1, '', '')
  call <sid>X('helpSpecial',       s:duo_2, '', '')

  " }}}

  " XML highlighting --------------------------------------------------------{{{
  call <sid>X('xmlAttrib',  s:uno_1,         '', '')
  call <sid>X('xmlEndTag',  s:syntax_accent, '', '')
  call <sid>X('xmlTag',     s:syntax_accent, '', '')
  call <sid>X('xmlTagName', s:syntax_accent, '', '')
  " }}}

  " YAML highlighting -------------------------------------------------------{{{
  call <sid>X('yamlKey',         s:duo_2, '', '')
  call <sid>X('yamlOperator',    s:uno_4, '', '')

  call <sid>X('liquidDelimiter', s:uno_4, '', '')
  call <sid>X('liquidKeyword',   s:uno_3, '', '')
  " }}}

" Delete functions =========================================================={{{
  delf <SID>X
  delf <SID>rgb
  delf <SID>color
  delf <SID>rgb_color
  delf <SID>rgb_level
  delf <SID>rgb_number
  delf <SID>grey_color
  delf <SID>grey_level
  delf <SID>grey_number
"}}}

endif
"}}}


" vim: set fdl=0 fdm=marker:
