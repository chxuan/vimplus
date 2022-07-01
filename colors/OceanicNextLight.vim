" ===============================================================
" OceanicNextLight
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  set background=light
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="OceanicNextLight"
" }}}
" {{{ Italics
  let g:oceanic_next_terminal_italic = get(g:, 'oceanic_next_terminal_italic', 0)
  let s:italic = ""
  if g:oceanic_next_terminal_italic == 1
    let s:italic = "italic"
  endif
" }}}
" {{{ Bold
  let g:oceanic_next_terminal_bold = get(g:, 'oceanic_next_terminal_bold', 0)
  let s:bold = ""
  if g:oceanic_next_terminal_bold == 1
   let s:bold = "bold"
  endif
" }}}
" {{{ Colors
  let s:base00=['#d8dee9', '253']
  let s:base01=['#cdd3de', '252']
  let s:base02=['#c0c5ce', '251']
  let s:base03=['#a7adba', '145']
  let s:base04=['#65737e', '243']
  let s:base05=['#4f5b66', '240']
  let s:base06=['#343d46', '237']
  let s:base07=['#1b2b34', '235']
  let s:base08=['#b40b11', '124']
  let s:base09=['#b4713d', '131']
  let s:base0A=['#a48c32', '137']
  let s:base0B=['#869235', '101']
  let s:base0C=['#5b9c90', '72']
  let s:base0D=['#526f93', '60']
  let s:base0E=['#896a98', '96']
  let s:base0F=['#9a806d', '101']
  let s:base10=['#ffffff', '15']
  let s:none=['NONE', 'NONE']
" }}}
" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',                       '',       '',       'bold',      '')
call <sid>hi('Debug',                      s:base08, '',       '',          '')
call <sid>hi('Directory',                  s:base0D, '',       '',          '')
call <sid>hi('ErrorMsg',                   s:base08, s:base00, '',          '')
call <sid>hi('Exception',                  s:base08, '',       '',          '')
call <sid>hi('FoldColumn',                 s:base0D, s:base00, '',          '')
call <sid>hi('Folded',                     s:base03, s:base01, s:italic,    '')
call <sid>hi('IncSearch',                  s:base01, s:base09, 'NONE',      '')
call <sid>hi('Italic',                     '',       '',       s:italic,    '')

call <sid>hi('Macro',                      s:base08, '',       '',          '')
call <sid>hi('MatchParen',                 s:base05, s:base03, '',          '')
call <sid>hi('ModeMsg',                    s:base0B, '',       '',          '')
call <sid>hi('MoreMsg',                    s:base0B, '',       '',          '')
call <sid>hi('Question',                   s:base0D, '',       '',          '')
call <sid>hi('Search',                     s:base03, s:base0A, '',          '')
call <sid>hi('SpecialKey',                 s:base03, '',       '',          '')
call <sid>hi('TooLong',                    s:base08, '',       '',          '')
call <sid>hi('Underlined',                 s:base08, '',       '',          '')
call <sid>hi('Visual',                     '',       s:base02, '',          '')
call <sid>hi('VisualNOS',                  s:base08, '',       '',          '')
call <sid>hi('WarningMsg',                 s:base08, '',       '',          '')
call <sid>hi('WildMenu',                   s:base10, s:base0D, '',          '')
call <sid>hi('Title',                      s:base0D, '',       '',          '')
call <sid>hi('Conceal',                    s:base0D, s:base00, '',          '')
call <sid>hi('Cursor',                     s:base00, s:base05, '',          '')
call <sid>hi('NonText',                    s:base03, '',       '',          '')
call <sid>hi('Normal',                     s:base05, s:base00, '',          '')
call <sid>hi('EndOfBuffer',                s:base05, s:base00, '',          '')
call <sid>hi('LineNr',                     s:base03, s:base00, '',          '')
call <sid>hi('SignColumn',                 s:base00, s:base00, '',          '')
call <sid>hi('StatusLine',                 s:base01, s:base03, '',          '')
call <sid>hi('StatusLineNC',               s:base03, s:base01, '',          '')
call <sid>hi('VertSplit',                  s:base00, s:base02, '',          '')
call <sid>hi('ColorColumn',                '',       s:base01, '',          '')
call <sid>hi('CursorColumn',               '',       s:base01, '',          '')
call <sid>hi('CursorLine',                 '',       s:base01, 'NONE',      '')
call <sid>hi('CursorLineNR',               s:base00, s:base00, '',          '')
call <sid>hi('CursorLineNr',               s:base03, s:base01, '',          '')
call <sid>hi('PMenu',                      s:base04, s:base01, '',          '')
call <sid>hi('PMenuSel',                   s:base10, s:base0D, '',          '')
call <sid>hi('PmenuSbar',                  '',       s:base02, '',          '')
call <sid>hi('PmenuThumb',                 '',       s:base07, '',          '')
call <sid>hi('TabLine',                    s:base03, s:base01, '',          '')
call <sid>hi('TabLineFill',                s:base03, s:base01, '',          '')
call <sid>hi('TabLineSel',                 s:base0B, s:base01, '',          '')
call <sid>hi('helpExample',                s:base0A, '',       '',          '')
call <sid>hi('helpCommand',                s:base0A, '',       '',          '')

" Standard syntax highlighting
call <sid>hi('Boolean',                    s:base09, '',       '',          '')
call <sid>hi('Character',                  s:base08, '',       '',          '')
call <sid>hi('Comment',                    s:base03, '',       s:italic,    '')
call <sid>hi('Conditional',                s:base0E, '',       '',          '')
call <sid>hi('Constant',                   s:base09, '',       '',          '')
call <sid>hi('Define',                     s:base0E, '',       '',          '')
call <sid>hi('Delimiter',                  s:base0F, '',       '',          '')
call <sid>hi('Float',                      s:base09, '',       '',          '')
call <sid>hi('Function',                   s:base0D, '',       '',          '')
call <sid>hi('Identifier',                 s:base0C, '',       '',          '')
call <sid>hi('Include',                    s:base0D, '',       '',          '')
call <sid>hi('Keyword',                    s:base0E, '',       '',          '')
call <sid>hi('Label',                      s:base0A, '',       '',          '')
call <sid>hi('Number',                     s:base09, '',       '',          '')
call <sid>hi('Operator',                   s:base05, '',       '',          '')
call <sid>hi('PreProc',                    s:base0A, '',       '',          '')
call <sid>hi('Repeat',                     s:base0A, '',       '',          '')
call <sid>hi('Special',                    s:base0C, '',       '',          '')
call <sid>hi('SpecialChar',                s:base0F, '',       '',          '')
call <sid>hi('Statement',                  s:base08, '',       '',          '')
call <sid>hi('StorageClass',               s:base0A, '',       '',          '')
call <sid>hi('String',                     s:base0B, '',       '',          '')
call <sid>hi('Structure',                  s:base0E, '',       '',          '')
call <sid>hi('Tag',                        s:base0A, '',       '',          '')
call <sid>hi('Todo',                       s:base0A, s:base01, '',          '')
call <sid>hi('Type',                       s:base0A, '',       '',          '')
call <sid>hi('Typedef',                    s:base0A, '',       '',          '')

call <sid>hi('SpellBad',                   '',       '',       'undercurl', '')
call <sid>hi('SpellLocal',                 '',       '',       'undercurl', '')
call <sid>hi('SpellCap',                   '',       '',       'undercurl', '')
call <sid>hi('SpellRare',                  '',       '',       'undercurl', '')

call <sid>hi('csClass',                    s:base0A, '',       '',          '')
call <sid>hi('csAttribute',                s:base0A, '',       '',          '')
call <sid>hi('csModifier',                 s:base0E, '',       '',          '')
call <sid>hi('csType',                     s:base08, '',       '',          '')
call <sid>hi('csUnspecifiedStatement',     s:base0D, '',       '',          '')
call <sid>hi('csContextualStatement',      s:base0E, '',       '',          '')
call <sid>hi('csNewDecleration',           s:base08, '',       '',          '')
call <sid>hi('cOperator',                  s:base0C, '',       '',          '')
call <sid>hi('cPreCondit',                 s:base0E, '',       '',          '')

call <sid>hi('cssColor',                   s:base0C, '',       '',          '')
call <sid>hi('cssBraces',                  s:base05, '',       '',          '')
call <sid>hi('cssClassName',               s:base0E, '',       '',          '')


call <sid>hi('DiffAdd',                    s:base0B, s:base01, '',          '')
call <sid>hi('DiffChange',                 s:base03, s:base01, '',          '')
call <sid>hi('DiffDelete',                 s:base08, s:base01, '',          '')
call <sid>hi('DiffText',                   s:base0D, s:base01, '',          '')
call <sid>hi('DiffAdded',                  s:base10, s:base0B, '',          '')
call <sid>hi('DiffFile',                   s:base08, s:base00, '',          '')
call <sid>hi('DiffNewFile',                s:base0B, s:base00, '',          '')
call <sid>hi('DiffLine',                   s:base0D, s:base00, '',          '')
call <sid>hi('DiffRemoved',                s:base10, s:base08, '',          '')
" call <sid>hi('Error',                      s:base08, s:none,   'undercurl',          '')
" call <sid>hi('NvimInternalError',          s:base08, s:none,   '',          '')
" call <sid>hi('NvimInternalError',          s:base08, s:none,   '',          '')
call <sid>hi('gitCommitOverflow',          s:base08, '',       '',          '')
call <sid>hi('gitCommitSummary',           s:base0B, '',       '',          '')

call <sid>hi('htmlBold',                   s:base0A, '',       '',          '')
call <sid>hi('htmlItalic',                 s:base0E, '',       '',          '')
call <sid>hi('htmlTag',                    s:base0C, '',       '',          '')
call <sid>hi('htmlEndTag',                 s:base0C, '',       '',          '')
call <sid>hi('htmlArg',                    s:base0A, '',       '',          '')
call <sid>hi('htmlTagName',                s:base07, '',       '',          '')

call <sid>hi('javaScript',                 s:base05, '',       '',          '')
call <sid>hi('javaScriptNumber',           s:base09, '',       '',          '')
call <sid>hi('javaScriptBraces',           s:base05, '',       '',          '')

call <sid>hi('markdownCode',               s:base0B, '',       '',          '')
call <sid>hi('markdownCodeBlock',          s:base0B, '',       '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:base0D, '',       '',          '')
call <sid>hi('markdownItalic',             s:base0E, '',       s:italic,    '')
call <sid>hi('markdownBold',               s:base0A, '',       s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:base0F, '',       s:italic,    '')
call <sid>hi('markdownError',              s:base05, s:base00, '',          '')

call <sid>hi('NeomakeErrorSign',           s:base08, s:base00, '',          '')
call <sid>hi('NeomakeWarningSign',         s:base0A, s:base00, '',          '')
call <sid>hi('NeomakeInfoSign',            s:base10, s:base00, '',          '')
call <sid>hi('NeomakeError',               s:base08, '',       'undercurl', s:base08)
call <sid>hi('NeomakeWarning',             s:base08, '',       'undercurl', s:base08)

call <sid>hi('ALEErrorSign',               s:base08, s:base00, s:bold,      '')
call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold,      '')
call <sid>hi('ALEInfoSign',                s:base10, s:base00, s:bold,      '')

call <sid>hi('NERDTreeExecFile',           s:base05, '',       '',          '')
call <sid>hi('NERDTreeDirSlash',           s:base0D, '',       '',          '')
call <sid>hi('NERDTreeOpenable',           s:base0D, '',       '',          '')
call <sid>hi('NERDTreeFile',               '',       s:none,   '',          '')
call <sid>hi('NERDTreeFlags',              s:base0D, '',       '',          '')

call <sid>hi('phpComparison',              s:base05, '',       '',          '')
call <sid>hi('phpParent',                  s:base05, '',       '',          '')
call <sid>hi('phpMemberSelector',          s:base05, '',       '',          '')

call <sid>hi('pythonRepeat',               s:base0E, '',       '',          '')
call <sid>hi('pythonOperator',             s:base0E, '',       '',          '')

call <sid>hi('rubyConstant',               s:base0A, '',       '',          '')
call <sid>hi('rubySymbol',                 s:base0B, '',       '',          '')
call <sid>hi('rubyAttribute',              s:base0D, '',       '',          '')
call <sid>hi('rubyInterpolation',          s:base0B, '',       '',          '')
call <sid>hi('rubyInterpolationDelimiter', s:base0F, '',       '',          '')
call <sid>hi('rubyStringDelimiter',        s:base0B, '',       '',          '')
call <sid>hi('rubyRegexp',                 s:base0C, '',       '',          '')

call <sid>hi('sassidChar',                 s:base08, '',       '',          '')
call <sid>hi('sassClassChar',              s:base09, '',       '',          '')
call <sid>hi('sassInclude',                s:base0E, '',       '',          '')
call <sid>hi('sassMixing',                 s:base0E, '',       '',          '')
call <sid>hi('sassMixinName',              s:base0D, '',       '',          '')

call <sid>hi('vimfilerLeaf',               s:base05, '',       '',          '')
call <sid>hi('vimfilerNormalFile',         s:base05, s:base00, '',          '')
call <sid>hi('vimfilerOpenedFile',         s:base0D, '',       '',          '')
call <sid>hi('vimfilerClosedFile',         s:base0D, '',       '',          '')

call <sid>hi('GitGutterAdd',               s:base0B, s:base00, s:bold,      '')
call <sid>hi('GitGutterChange',            s:base0D, s:base00, s:bold,      '')
call <sid>hi('GitGutterDelete',            s:base08, s:base00, s:bold,      '')
call <sid>hi('GitGutterChangeDelete',      s:base0E, s:base00, s:bold,      '')


call <sid>hi('xmlTag',                     s:base0C, '',       '',          '')
call <sid>hi('xmlTagName',                 s:base05, '',       '',          '')
call <sid>hi('xmlEndTag',                  s:base0C, '',       '',          '')
" }}}

let g:terminal_color_0=s:base00[0]
let g:terminal_color_8=s:base00[0]

let g:terminal_color_1=s:base08[0]
let g:terminal_color_9=s:base08[0]

let g:terminal_color_2=s:base0B[0]
let g:terminal_color_10=s:base0B[0]

let g:terminal_color_3=s:base0A[0]
let g:terminal_color_11=s:base0A[0]

let g:terminal_color_4=s:base0D[0]
let g:terminal_color_12=s:base0D[0]

let g:terminal_color_5=s:base0E[0]
let g:terminal_color_13=s:base0E[0]

let g:terminal_color_6=s:base0C[0]
let g:terminal_color_14=s:base0C[0]

let g:terminal_color_7=s:base05[0]
let g:terminal_color_15=s:base05[0]

let g:terminal_color_background=s:base00[0]
let g:terminal_color_foreground=s:base10[0]

