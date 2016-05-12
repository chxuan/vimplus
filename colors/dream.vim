" File:       dream.vim
" Maintainer: Crusoe Xia (crusoexia)
" URL:        https://github.com/crusoexia/vim-dream
" License:    MIT
"
" The code is learnt from hybrid.
"
" Configuration:
"
"   * Enable italic:
"
"       let g:dream_italic = 1

" Initialisation
" --------------

if !has("gui_running") && &t_Co < 256
  finish
endif

if ! exists("g:dream_italic")
    let g:dream_italic = 0
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dream"

" Palettes
" --------

if has("gui_running")
  let s:vmode      = "gui"
  let s:background = "#2A2B30"
  let s:foreground = "#EAECEB"
  let s:window     = "#3E4E41"
  let s:line       = "#3C3C41"
  let s:lineNr     = "#6C6D7A"
  let s:darkcolumn = "#2A2C2A"
  let s:selection  = "#494C51"
  let s:comment    = "#8D969F"
  let s:error      = "#5F0000"

  let s:red        = "#DD5676"
  let s:orangered  = "#DB8C7E"
  let s:orange     = "#D0A12D"
  let s:green      = "#A8E6B7"
  let s:darkgreen  = "#C7C582"
  let s:grassgreen = "#C2D23A"
  let s:purple     = "#BC71C0"
  
  let s:addfg      = "#d7ffaf"
  let s:addbg      = "#5f875f"
  let s:delbg      = "#f75f5f"
  let s:changefg   = "#d7d7ff"
  let s:changebg   = "#5f5f87"
else
  let s:vmode      = "cterm"
  let s:background = "235"
  let s:foreground = "251"
  let s:window     = "234"
  let s:line       = "236"
  let s:lineNr     = "239"
  let s:darkcolumn = "234"
  let s:selection  = "237"
  let s:comment    = "243"
  let s:error      = "52"
  
  let s:red        = "197"
  let s:orangered  = "167"
  let s:orange     = "130"
  let s:green      = "157"
  let s:darkgreen  = "143"
  let s:grassgreen = "106"
  let s:purple     = "98"
  
  let s:addfg      = "193"
  let s:addbg      = "65"
  let s:delbg      = "167"
  let s:changefg   = "189"
  let s:changebg   = "60"
endif

" Formatting Options
" ------------------

let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

" Highlighting Primitives
" -----------------------

exe "let s:bg_none       = ' ".s:vmode."bg=".s:none      ."'"
exe "let s:bg_foreground = ' ".s:vmode."bg=".s:foreground."'"
exe "let s:bg_background = ' ".s:vmode."bg=".s:background."'"
exe "let s:bg_selection  = ' ".s:vmode."bg=".s:selection ."'"
exe "let s:bg_line       = ' ".s:vmode."bg=".s:line      ."'"
exe "let s:bg_lineNr     = ' ".s:vmode."bg=".s:lineNr    ."'"
exe "let s:bg_comment    = ' ".s:vmode."bg=".s:comment   ."'"
exe "let s:bg_red        = ' ".s:vmode."bg=".s:red       ."'"
exe "let s:bg_orangered  = ' ".s:vmode."bg=".s:orangered ."'"
exe "let s:bg_orange     = ' ".s:vmode."bg=".s:orange    ."'"
exe "let s:bg_green      = ' ".s:vmode."bg=".s:green     ."'"
exe "let s:bg_grassgreen = ' ".s:vmode."bg=".s:grassgreen."'"
exe "let s:bg_darkgreen  = ' ".s:vmode."bg=".s:darkgreen ."'"
exe "let s:bg_purple     = ' ".s:vmode."bg=".s:purple    ."'"
exe "let s:bg_window     = ' ".s:vmode."bg=".s:window    ."'"
exe "let s:bg_darkcolumn = ' ".s:vmode."bg=".s:darkcolumn."'"
exe "let s:bg_addbg      = ' ".s:vmode."bg=".s:addbg     ."'"
exe "let s:bg_addfg      = ' ".s:vmode."bg=".s:addfg     ."'"
exe "let s:bg_delbg      = ' ".s:vmode."bg=".s:delbg     ."'"
exe "let s:bg_changebg   = ' ".s:vmode."bg=".s:changebg  ."'"
exe "let s:bg_changefg   = ' ".s:vmode."bg=".s:changefg  ."'"
exe "let s:bg_error      = ' ".s:vmode."bg=".s:error     ."'"

exe "let s:fg_none       = ' ".s:vmode."fg=".s:none      ."'"
exe "let s:fg_foreground = ' ".s:vmode."fg=".s:foreground."'"
exe "let s:fg_background = ' ".s:vmode."fg=".s:background."'"
exe "let s:fg_selection  = ' ".s:vmode."fg=".s:selection ."'"
exe "let s:fg_line       = ' ".s:vmode."fg=".s:line      ."'"
exe "let s:fg_lineNr     = ' ".s:vmode."fg=".s:lineNr    ."'"
exe "let s:fg_comment    = ' ".s:vmode."fg=".s:comment   ."'"
exe "let s:fg_red        = ' ".s:vmode."fg=".s:red       ."'"
exe "let s:fg_orangered  = ' ".s:vmode."fg=".s:orangered ."'"
exe "let s:fg_orange     = ' ".s:vmode."fg=".s:orange    ."'"
exe "let s:fg_green      = ' ".s:vmode."fg=".s:green     ."'"
exe "let s:fg_grassgreen = ' ".s:vmode."fg=".s:grassgreen."'"
exe "let s:fg_darkgreen  = ' ".s:vmode."fg=".s:darkgreen ."'"
exe "let s:fg_purple     = ' ".s:vmode."fg=".s:purple    ."'"
exe "let s:fg_window     = ' ".s:vmode."fg=".s:window    ."'"
exe "let s:fg_darkcolumn = ' ".s:vmode."fg=".s:darkcolumn."'"
exe "let s:fg_addbg      = ' ".s:vmode."fg=".s:addbg     ."'"
exe "let s:fg_addfg      = ' ".s:vmode."fg=".s:addfg     ."'"
exe "let s:fg_delbg      = ' ".s:vmode."fg=".s:delbg     ."'"
exe "let s:fg_changebg   = ' ".s:vmode."fg=".s:changebg  ."'"
exe "let s:fg_changefg   = ' ".s:vmode."fg=".s:changefg  ."'"
exe "let s:fg_error      = ' ".s:vmode."fg=".s:error     ."'"

exe "let s:fmt_none      = ' ".s:vmode."=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' ".s:vmode."=NONE".s:b.s:i.  " term=NONE".s:b.s:i."'"
exe "let s:fmt_undr      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' ".s:vmode."=NONE".s:u.s:i.  " term=NONE".s:u.s:i."'"
exe "let s:fmt_curl      = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

" Highlighting 
" ------------

" editor
exe "hi! Normal"          .s:fg_foreground  .s:bg_background  .s:fmt_none
exe "hi! ColorColumn"     .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorColumn"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"      .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLineNr"    .s:fg_grassgreen  .s:bg_none        .s:fmt_bold
exe "hi! LineNr"          .s:fg_lineNr      .s:bg_none        .s:fmt_none
exe "hi! SignColumn"      .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! VertSplit"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"         .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! StatusLine"      .s:fg_comment     .s:bg_background  .s:fmt_revr
exe "hi! StatusLineNC"    .s:fg_window      .s:bg_comment     .s:fmt_revr
exe "hi! TabLine"         .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
exe "hi! Visual"          .s:fg_none        .s:bg_selection   .s:fmt_none
exe "hi! Search"          .s:fg_background  .s:bg_grassgreen  .s:fmt_none
exe "hi! MatchParen"      .s:fg_background  .s:bg_orange      .s:fmt_none
exe "hi! Question"        .s:fg_grassgreen  .s:bg_none        .s:fmt_none
exe "hi! ModeMsg"         .s:fg_grassgreen  .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"         .s:fg_grassgreen  .s:bg_none        .s:fmt_none
exe "hi! ErrorMsg"        .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! WarningMsg"      .s:fg_red         .s:bg_none        .s:fmt_none

" misc
exe "hi! SpecialKey"      .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Title"           .s:fg_orangered   .s:bg_none        .s:fmt_none
exe "hi! Directory"       .s:fg_green       .s:bg_none        .s:fmt_bold

" diff
exe "hi! DiffAdd"         .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffDelete"      .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffChange"      .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffText"        .s:fg_background  .s:bg_green       .s:fmt_none

" fold
exe "hi! Folded"          .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"      .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
"        Incsearch"

" popup menu
exe "hi! Pmenu"           .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"        .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"        PmenuSbar"
"        PmenuThumb"

" Generic Syntax Highlighting
" ---------------------------

if g:dream_italic == 1
    exe "hi! Constant"    .s:fg_purple      .s:bg_none        .s:fmt_ital
else
    exe "hi! Constant"    .s:fg_purple      .s:bg_none        .s:fmt_none
endif
exe "hi! Number"          .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Float"           .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Boolean"         .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_grassgreen  .s:bg_none        .s:fmt_none
exe "hi! Character"       .s:fg_grassgreen  .s:bg_none        .s:fmt_none

exe "hi! Identifier"      .s:fg_orangered   .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_orangered   .s:bg_none        .s:fmt_none

exe "hi! Type"            .s:fg_green       .s:bg_none        .s:fmt_none
"        Structure"
"        StorageClass"
"        Typedef"

exe "hi! Statement"       .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! Operator"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! Label"           .s:fg_orange      .s:bg_none        .s:fmt_none
exe "hi! Conditional"     .s:fg_red         .s:bg_none        .s:fmt_none
"        Repeat"
"        Keyword"
"        Exception"

exe "hi! PreProc"         .s:fg_darkgreen   .s:bg_none        .s:fmt_bold
"        Include"
"        Define"
"        Macro"
"        PreCondit"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"        SpecialKey
"        SpecialChar"
"        Tag"
"        Delimiter"
"        SpecialComment"
"        Debug"

exe "hi! Underlined"          .s:fg_orangered   .s:bg_none        .s:fmt_none
exe "hi! Ignore"              .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! Error"               .s:fg_red         .s:bg_error       .s:fmt_undr

exe "hi! SpellBad"            .s:fg_red         .s:bg_error       .s:fmt_undr
exe "hi! SpellCap"            .s:fg_orange      .s:bg_darkcolumn  .s:fmt_undb

if g:dream_italic == 1
    exe "hi! Todo"            .s:fg_orange      .s:bg_none        .s:fmt_bldi
    exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_ital
else
    exe "hi! Todo"            .s:fg_orange      .s:bg_none        .s:fmt_bold
    exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none
endif

" NerdTree
" --------

exe "hi! NERDTreeOpenable"          .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! NERDTreeClosable"          .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! NERDTreeHelp"              .s:fg_grassgreen  .s:bg_none        .s:fmt_none
exe "hi! NERDTreeBookmarksHeader"   .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! NERDTreeBookmarksLeader"   .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! NERDTreeBookmarkName"      .s:fg_darkgreen   .s:bg_none        .s:fmt_none
exe "hi! NERDTreeCWD"               .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! NERDTreeDirSlash"          .s:fg_orangered   .s:bg_none        .s:fmt_none

" Syntastic
" ---------

hi! link SyntasticErrorSign Error
exe "hi! SyntasticWarningSign"      .s:fg_orange      .s:bg_darkcolumn  .s:fmt_none

" Language highlight
" ------------------

" Vim command
exe "hi! vimCommand"                .s:fg_red          .s:bg_none          .s:fmt_none

" Javascript
exe "hi! jsFuncName"                .s:fg_orangered    .s:bg_none          .s:fmt_none
exe "hi! jsThis"                    .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! jsFuncCall"                .s:fg_none         .s:bg_none          .s:fmt_none

if g:dream_italic == 1
    exe "hi! jsFuncArgs"            .s:fg_orange       .s:bg_none          .s:fmt_ital
else
    exe "hi! jsFuncArgs"            .s:fg_orange       .s:bg_none          .s:fmt_none
endif

" Html
exe "hi! htmlTag"                   .s:fg_foreground   .s:bg_none          .s:fmt_none
exe "hi! htmlEndTag"                .s:fg_foreground   .s:bg_none          .s:fmt_none
exe "hi! htmlTagName"               .s:fg_red          .s:bg_none          .s:fmt_none
exe "hi! htmlArg"                   .s:fg_orangered    .s:bg_none          .s:fmt_none
exe "hi! htmlSpecialChar"           .s:fg_purple       .s:bg_none          .s:fmt_none

" Xml
hi! link xmlTag     htmlTag
hi! link xmlEndTag  htmlEndTag
hi! link xmlTagName htmlTagName
hi! link xmlAttrib  htmlArg

" CSS
exe "hi! cssFunctionName"           .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! cssColor"                  .s:fg_purple       .s:bg_none          .s:fmt_none
exe "hi! cssPseudoClassId"          .s:fg_purple       .s:bg_none          .s:fmt_none
exe "hi! cssClassName"              .s:fg_orangered    .s:bg_none          .s:fmt_none
exe "hi! cssValueLength"            .s:fg_purple       .s:bg_none          .s:fmt_none
exe "hi! cssCommonAttr"             .s:fg_red          .s:bg_none          .s:fmt_none
exe "hi! cssBraces"                 .s:fg_none         .s:bg_none          .s:fmt_none

if g:dream_italic == 1
    exe "hi! cssURL"                .s:fg_orange       .s:bg_none          .s:fmt_undi
else
    exe "hi! cssURL"                .s:fg_orange       .s:bg_none          .s:fmt_undr
endif

" ruby
exe "hi! rubyInterpolationDelimiter"    .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! rubyInstanceVariable"          .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! rubyGlobalVariable"            .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! rubyClassVariable"             .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! rubyPseudoVariable"            .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! rubyOperator"                  .s:fg_red          .s:bg_none          .s:fmt_none
exe "hi! rubyFunction"                  .s:fg_orangered    .s:bg_none          .s:fmt_none
exe "hi! rubyInclude"                   .s:fg_orangered    .s:bg_none          .s:fmt_none
exe "hi! rubyStringDelimiter"           .s:fg_grassgreen   .s:bg_none          .s:fmt_none
exe "hi! rubyRegexp"                    .s:fg_grassgreen   .s:bg_none          .s:fmt_none
exe "hi! rubyRegexpDelimiter"           .s:fg_grassgreen   .s:bg_none          .s:fmt_none
exe "hi! rubySymbol"                    .s:fg_purple       .s:bg_none          .s:fmt_none
exe "hi! rubyEscape"                    .s:fg_purple       .s:bg_none          .s:fmt_none
exe "hi! rubyControl"                   .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! rubyClass"                     .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! rubyDefine"                    .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! rubyException"                 .s:fg_green        .s:bg_none          .s:fmt_none
exe "hi! rubyRailsARAssociationMethod"  .s:fg_orange       .s:bg_none          .s:fmt_none
exe "hi! rubyRailsARMethod"             .s:fg_orange       .s:bg_none          .s:fmt_none
exe "hi! rubyRailsRenderMethod"         .s:fg_orange       .s:bg_none          .s:fmt_none
exe "hi! rubyRailsMethod"               .s:fg_orange       .s:bg_none          .s:fmt_none

if g:dream_italic == 1
    exe "hi! rubyBlockParameter"        .s:fg_orange       .s:bg_none          .s:fmt_ital
    exe "hi! rubyConstant"              .s:fg_orange       .s:bg_none          .s:fmt_ital
    exe "hi! rubyIdentifier"            .s:fg_orange       .s:bg_none          .s:fmt_ital
else
    exe "hi! rubyBlockParameter"        .s:fg_orange       .s:bg_none          .s:fmt_none
    exe "hi! rubyConstant"              .s:fg_orange       .s:bg_none          .s:fmt_none
    exe "hi! rubyIdentifier"            .s:fg_orange       .s:bg_none          .s:fmt_none
endif

" eruby
exe "hi! erubyDelimiter"                .s:fg_none         .s:bg_none          .s:fmt_none
exe "hi! erubyRailsMethod"              .s:fg_green        .s:bg_none          .s:fmt_none
