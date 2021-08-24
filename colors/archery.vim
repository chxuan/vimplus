" >>>--------------------------------------------------------------->
" >>>--------------------------------------------------------------->
"       >>
"      >>->                      >->
"     >> >->     >> >-->    >--> >->        >-->    >> >--> >->   >->
"    >->  >->     >->     >->    >->>->   >>   >->   >->     >-> >->
"   >----->>->    >->    >->     >->  >-> >>--->>->  >->       >-->
"  >->      >->   >->     >->    >>   >-> >>         >->        >->
" >->        >-> >-->       >--> >->  >->  >---->   >-->       >->
"                                                            >->
" >>>--------------------------------------------------------------->
"
" URL:         https://github.com/Badacadabra/vim-archery
" Author:      Baptiste Vannesson <contact@badacadabra.net>
" License:     MIT
" Description: Vim colorscheme inspired by Arch Linux colors
"
" >>>--------------------------------------------------------------->
" >>>--------------------------------------------------------------->

" =============================
" BOILERPLATE {{{1
" =============================

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'archery'

" =============================
" SYNTAX GROUP NAMES {{{1
" =============================

" -----------------------------
" Comment {{{2
" -----------------------------

" Preferred group
hi Comment cterm=italic ctermfg=7 ctermbg=NONE gui=italic guifg=#535B6F guibg=NONE

" -----------------------------
" Constant {{{2
" -----------------------------

" Preferred group
hi Constant cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#25B8A5 guibg=NONE

" Minor groups
hi String cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#F6F9FC guibg=NONE

hi link Character Constant
hi link Number    Constant
hi link Boolean   Constant
hi link Float     Constant

" -----------------------------
" Identifier {{{2
" -----------------------------

" Preferred group
hi Identifier cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#006596 guibg=NONE

" Minor group
hi link Function Identifier

" -----------------------------
" Statement {{{2
" -----------------------------

" Preferred group
hi Statement cterm=bold ctermfg=4 ctermbg=NONE gui=bold guifg=#0088CC guibg=NONE

" Minor groups
hi link Conditional Statement
hi link Repeat      Statement
hi link Label       Statement
hi link Operator    Statement
hi link Keyword     Statement
hi link Exception   Statement

" -----------------------------
" PreProc {{{2
" -----------------------------

" Preferred group
hi PreProc cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#F6F9FC guibg=NONE

" Minor groups
hi link Include   PreProc
hi link Define    PreProc
hi link Macro     PreProc
hi link PreCondit PreProc

" -----------------------------
" Type {{{2
" -----------------------------

" Preferred group
hi Type cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#0088CC guibg=NONE

" Minor groups
hi link StorageClass Type
hi link Structure    Type
hi link Typedef      Type

" -----------------------------
" Special {{{2
" -----------------------------

" Preferred group
hi Special cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#53586F guibg=NONE

" Minor groups
hi link SpecialChar    Special
hi link Tag            Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special

" -----------------------------
" Underlined {{{2
" -----------------------------

" Preferred group
hi Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE

" -----------------------------
" Ignore {{{2
" -----------------------------

" Preferred group
hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" -----------------------------
" Error {{{2
" -----------------------------

" Preferred group
hi Error cterm=NONE ctermfg=9 ctermbg=0 gui=NONE guifg=#C95F5F guibg=#25272C

" -----------------------------
" Todo {{{2
" -----------------------------

" Preferred group
hi Todo cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#EAC06E guibg=#25272C

" =============================
" DEFAULT HIGHLIGHTING GROUPS {{{1
" =============================

" -----------------------------
" Modes {{{2
" -----------------------------

hi Normal       cterm=NONE ctermfg=12   ctermbg=0    gui=NONE guifg=#81A3CF guibg=#25272C
hi Visual       cterm=NONE ctermfg=0    ctermbg=12   gui=NONE guifg=#25272C guibg=#81A3CF
hi VisualNOS    cterm=NONE ctermfg=15   ctermbg=4    gui=NONE guifg=#F6F9FC guibg=#0088CC

" -----------------------------
" Cursor {{{2
" -----------------------------

hi Cursor       cterm=NONE ctermfg=15   ctermbg=4    gui=NONE guifg=#F6F9FC guibg=#0088CC
hi CursorIM     cterm=NONE ctermfg=15   ctermbg=4    gui=NONE guifg=#F6F9FC guibg=#81A3CF
hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=12   gui=NONE guifg=NONE    guibg=#81A3CF
hi CursorLine   cterm=NONE ctermfg=NONE ctermbg=8    gui=NONE guifg=NONE    guibg=#282D34
hi CursorLineNr cterm=NONE ctermfg=4    ctermbg=8    gui=NONE guifg=#0088CC guibg=#282D34

" -----------------------------
" Output text {{{2
" -----------------------------

" Messages
hi ErrorMsg     cterm=NONE ctermfg=9    ctermbg=NONE gui=NONE guifg=#C95F5F guibg=NONE
hi ModeMsg      cterm=NONE ctermfg=12   ctermbg=NONE gui=NONE guifg=#81A3CF guibg=NONE
hi MoreMsg      cterm=NONE ctermfg=4    ctermbg=NONE gui=NONE guifg=#0088CC guibg=NONE
hi WarningMsg   cterm=NONE ctermfg=11   ctermbg=NONE gui=NONE guifg=#F07D30 guibg=NONE

" Misc.
hi Title        cterm=NONE ctermfg=4    ctermbg=NONE gui=NONE guifg=#0088CC guibg=NONE
hi Question     cterm=NONE ctermfg=4    ctermbg=NONE gui=NONE guifg=#0088CC guibg=NONE
hi SpecialKey   cterm=NONE ctermfg=12   ctermbg=NONE gui=NONE guifg=#81A3CF guibg=NONE
hi NonText      cterm=NONE ctermfg=15   ctermbg=NONE gui=NONE guifg=#F6F9FC guibg=NONE
hi EndOfBuffer  cterm=NONE ctermfg=12   ctermbg=NONE gui=NONE guifg=#81A3CF guibg=NONE

" -----------------------------
" Popup menu {{{2
" -----------------------------

hi Pmenu        cterm=bold ctermfg=0    ctermbg=7    gui=bold guifg=#25272C guibg=#53586F
hi PmenuSel     cterm=bold ctermfg=15   ctermbg=4    gui=bold guifg=#F6F9FC guibg=#0088CC
hi PmenuSbar    cterm=NONE ctermfg=NONE ctermbg=12   gui=NONE guifg=NONE    guibg=#25272C
hi PmenuThumb   cterm=NONE ctermfg=NONE ctermbg=12   gui=NONE guifg=NONE    guibg=#81A3CF

" -----------------------------
" Search {{{2
" -----------------------------

hi MatchParen   cterm=NONE ctermfg=0    ctermbg=15   gui=NONE guifg=#25272C guibg=#F6F9FC
hi IncSearch    cterm=NONE ctermfg=0    ctermbg=12   gui=NONE guifg=#25272C guibg=#81A3CF
hi Search       cterm=NONE ctermfg=8    ctermbg=15   gui=NONE guifg=#282D34 guibg=#F6F9FC
hi WildMenu     cterm=bold ctermfg=15   ctermbg=4    gui=bold guifg=#F6F9FC guibg=#0088CC

" -----------------------------
" Folding {{{2
" -----------------------------

hi Folded       cterm=NONE ctermfg=4    ctermbg=8    gui=bold guifg=#0088CC guibg=#282D34
hi FoldColumn   cterm=NONE ctermfg=15   ctermbg=4    gui=NONE guifg=#F6F9FC guibg=#282D34

" -----------------------------
" Diff {{{2
" -----------------------------

hi DiffAdd      cterm=NONE ctermfg=10   ctermbg=NONE gui=NONE guifg=#73BA25 guibg=NONE
hi DiffChange   cterm=NONE ctermfg=3    ctermbg=NONE gui=NONE guifg=#EAC06E guibg=NONE
hi DiffDelete   cterm=NONE ctermfg=9    ctermbg=NONE gui=NONE guifg=#C95F5F guibg=NONE
hi DiffText     cterm=NONE ctermfg=12   ctermbg=NONE gui=NONE guifg=#81A3CF guibg=NONE

" -----------------------------
" Spellchecker {{{2
" -----------------------------

hi SpellBad     cterm=NONE ctermfg=9    ctermbg=NONE gui=NONE guifg=#C95F5F guibg=NONE
hi SpellCap     cterm=NONE ctermfg=3    ctermbg=NONE gui=NONE guifg=#F07D30 guibg=NONE
hi SpellLocal   cterm=NONE ctermfg=10   ctermbg=NONE gui=NONE guifg=#73BA25 guibg=NONE
hi SpellRare    cterm=NONE ctermfg=11   ctermbg=NONE gui=NONE guifg=#EAC06E guibg=NONE

" -----------------------------
" Miscellaneous {{{2
" -----------------------------

hi Directory    cterm=NONE ctermfg=4    ctermbg=NONE gui=bold guifg=#0088CC guibg=NONE
hi LineNr       cterm=NONE ctermfg=8    ctermbg=NONE gui=NONE guifg=#53586F guibg=#2B2D34
hi VertSplit    cterm=NONE ctermfg=4    ctermbg=8    gui=bold guifg=#0088CC guibg=#282D34
hi ColorColumn  cterm=NONE ctermfg=NONE ctermbg=8    gui=NONE guifg=NONE    guibg=#2B2D34
hi SignColumn   cterm=NONE ctermfg=12   ctermbg=8    gui=NONE guifg=#81A3CF guibg=#282D34
hi Conceal      cterm=NONE ctermfg=12   ctermbg=NONE gui=NONE guifg=#81A3CF guibg=NONE

" -----------------------------
" Status line / Tab line {{{2
" -----------------------------

" See Powerline, Airline or Lightline...

"hi StatusLine   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
"hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guifg=NONE
"hi TabLine      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
"hi TabLineFill  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
"hi TabLineSel   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" =============================
" GUI HIGHLIGHTING GROUPS {{{1
" =============================

hi Menu      guifg=#53586F guibg=#282D34
hi Scrollbar guifg=#53586F guibg=#282D34
hi Tooltip   guifg=#F6F9FC guibg=#25272C

" =============================
" PLUGINS SUPPORT {{{1
" =============================

" Airline (see 'autoload/airline/themes/archery.vim')
" Lightline (see 'autoload/lightline/colorscheme/archery')

" CtrlP
hi link CtrlPMatch   Type
hi link CtrlPPrtText Type

" NERDTree
hi link NERDTreeHelp      Comment
hi link NERDTreeHelpKey   Type
hi link NERDTreeHelpTitle Statement

" Tagbar
hi link TagbarHelpKey             Type
hi link TagbarHelpTitle           Statement
hi link TagbarNestedKind          Identifier
hi link TagbarScope               Identifier
hi link TagbarType                Type
hi link TagbarVisibilityPublic    SpellLocal
hi link TagbarVisibilityProtected SpellCap
hi link TagbarVisibilityPrivate   SpellBad

" =============================
" SYNTAX OPTIMIZATIONS {{{1
" =============================

" -----------------------------
" Raw {{{2
" -----------------------------

" CSS
hi link cssAttrRegion     Constant
hi link cssBraces         Normal
hi link cssClassName      Statement
hi link cssClassNameDot   Statement
hi link cssIdentifier     Statement
hi link cssImportant      PreProc
hi link cssFontDescriptor PreProc
hi link cssTagName        PreProc

" Markdown
hi link markdownLink     Constant
hi link markdownLinkText PreProc
hi link markdownUrl      Constant

" YAML
hi link yamlAnchor            PreProc
hi link yamlBlockMappingKey   Statement
hi link yamlKeyValueDelimiter Type

" Readline
hi link readlineVariable Type

" -----------------------------
" Tags {{{2
" -----------------------------

" HTML
hi link htmlArg    Type
hi link htmlEndTag Statement
hi link htmlString Identifier
hi link htmlTag    Statement

" XML
hi link xmlAttrib          PreProc
hi link xmlAttribPunct     Constant
hi link xmlEndTag          Type
hi link xmlNamespace       Identifier
hi link xmlProcessingDelim Statement
hi link xmlTag             Type
hi link xmlTagName         Type

" -----------------------------
" Programming {{{2
" -----------------------------

" JavaScript
hi link jsFuncArgs            String
hi link jsFuncCall            Identifier
hi link jsFunction            Identifier
hi link jsFunctionKey         Type
hi link jsGlobalObjects       Statement
hi link jsObjectKey           Type
hi link jsThis                Constant
hi link javascriptjQuery      Identifier
hi link javascriptQAttributes Identifier
hi link javascriptQEvents     Identifier

" PHP
hi link phpDefine       Identifier
hi link phpIdentifier   Type
hi link phpParent       Statement
hi link phpRegion       Constant
hi link phpStructure    Statement
hi link phpStorageClass Statement
hi link phpType         Type
hi link phpVarSelector  Type

" Python
hi link pythonAttribute Constant
hi link pythonInclude   Statement
hi link pythonQuotes    Type

" Ruby
hi link rubyDefine                 Statement
hi link rubyInclude                Statement
hi link rubyInterpolationDelimiter Type
hi link rubySharpBang              Comment
hi link rubyStringDelimiter        Type

" Perl
hi link perlStringStartEnd   Type
hi link perlStringUnexpanded PreProc
hi link perlVarPlain         Type

" C/C++
hi link cInclude  Statement
hi link cIncluded Type
hi link cParen    PreProc

" Java
hi link javaAnnotation   PreProc
hi link javaCommentTitle Comment
hi link javaDocComment   Comment
hi link javaDocParam     Comment
hi link javaDocTags      Comment
hi link javaExternal     Statement
hi link javaScopeDecl    Statement
