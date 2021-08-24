" 'flattened_dark.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" Description:  Dark Solarized, without the bullshit.

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'flattened_dark'

hi  Normal                                  ctermfg=12  ctermbg=8  guifg=#839496  guibg=#002b36  gui=NONE

set background=dark

hi  ColorColumn                             cterm=NONE  ctermbg=0  guibg=#073642  gui=NONE
hi  Comment                                 cterm=NONE  ctermfg=10  guifg=#586e75  gui=italic
hi  ConId                                   cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  Conceal                                 cterm=NONE  ctermfg=4  ctermbg=8  guifg=#268bd2  guibg=#002b36  gui=NONE
hi  Constant                                cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  Cursor                                  cterm=NONE  ctermfg=8  ctermbg=12  guifg=#002b36  guibg=#839496  gui=NONE
hi  CursorColumn                            cterm=NONE  ctermbg=0  guibg=#073642  gui=NONE
hi  CursorLine                              cterm=NONE  ctermbg=0  guibg=#073642  guisp=#93a1a1  gui=NONE
hi  CursorLineNr                            cterm=NONE ctermfg=3  guifg=#b58900  gui=NONE
hi  DiffAdd                                 cterm=NONE  ctermfg=2  ctermbg=0  guifg=#719e07  guibg=#073642  guisp=#719e07  gui=NONE
hi  DiffChange                              cterm=NONE  ctermfg=3  ctermbg=0  guifg=#b58900  guibg=#073642  guisp=#b58900  gui=NONE
hi  DiffDelete                              cterm=NONE  ctermfg=1  ctermbg=0  guifg=#dc322f  guibg=#073642  gui=NONE
hi  DiffText                                cterm=NONE  ctermfg=4  ctermbg=0  guifg=#268bd2  guibg=#073642  guisp=#268bd2  gui=NONE
hi  Directory                               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  Error                                   cterm=NONE  ctermfg=1  ctermbg=NONE  guifg=#dc322f  guibg=#002b36  gui=NONE
hi  ErrorMsg                                cterm=reverse  ctermfg=1  ctermbg=NONE  guifg=#dc322f  guibg=NONE gui=reverse
hi  FoldColumn                              cterm=NONE  ctermfg=12  ctermbg=0  guifg=#839496  guibg=#073642  gui=NONE
hi  Folded                                  cterm=NONE,underline  ctermfg=12  ctermbg=0  guifg=#839496  guibg=#073642  guisp=#002b36  gui=NONE
hi  HelpExample                             cterm=NONE  ctermfg=14  guifg=#93a1a1  gui=NONE
hi  Identifier                              cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  IncSearch                               cterm=standout  ctermfg=9  guifg=#cb4b16  gui=standout
hi  LineNr                                  cterm=NONE  ctermfg=10  ctermbg=0  guifg=#586e75  guibg=#073642  gui=NONE
hi  MatchParen                              cterm=NONE  ctermfg=1  ctermbg=10  guifg=#dc322f  guibg=#586e75  gui=NONE
hi  ModeMsg                                 cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  MoreMsg                                 cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  NonText                                 cterm=NONE  ctermfg=11  guifg=#657b83  gui=NONE
hi  Pmenu                                   cterm=reverse  ctermfg=12  ctermbg=0  guifg=#839496  guibg=#073642  gui=reverse
hi  PmenuSbar                               cterm=reverse  ctermfg=7  ctermbg=12  guifg=#eee8d5  guibg=#839496  gui=reverse
hi  PmenuSel                                cterm=reverse  ctermfg=10  ctermbg=7  guifg=#586e75  guibg=#eee8d5  gui=reverse
hi  PmenuThumb                              cterm=reverse  ctermfg=12  ctermbg=8  guifg=#839496  guibg=#002b36  gui=reverse
hi  PreProc                                 cterm=NONE  ctermfg=1  guifg=#cb4b16  gui=NONE
hi  Question                                cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  Search                                  cterm=reverse  ctermfg=3 ctermbg=NONE  guifg=#b58900  guibg=NONE  gui=reverse
hi  SignColumn                              cterm=NONE  ctermfg=12  ctermbg=NONE  guifg=#839496  guibg=NONE  gui=NONE
hi  Special                                 cterm=NONE  ctermfg=1  guifg=#dc322f  gui=NONE
hi  SpecialKey                              cterm=NONE  ctermfg=11  ctermbg=0  guifg=#657b83  guibg=#073642  gui=NONE
hi  SpellBad                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#dc322f  gui=undercurl
hi  SpellCap                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#6c71c4  gui=undercurl
hi  SpellLocal                              cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#b58900  gui=undercurl
hi  SpellRare                               cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#2aa198  gui=undercurl
hi  Statement                               cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  StatusLine                              cterm=reverse  ctermfg=14  ctermbg=0  guifg=#93a1a1  guibg=#073642  gui=reverse
hi  StatusLineNC                            cterm=reverse  ctermfg=11  ctermbg=0  guifg=#657b83  guibg=#073642  gui=reverse
hi  TabLine                                 cterm=underline  ctermfg=12  ctermbg=0  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
hi  TabLineFill                             cterm=underline  ctermfg=12  ctermbg=0  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
hi  TabLineSel                              cterm=underline,reverse  ctermfg=10  ctermbg=7  guifg=#586e75  guibg=#eee8d5  guisp=#839496  gui=underline,reverse
hi  Title                                   cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  Todo                                    cterm=bold  ctermfg=5  ctermbg=8  guifg=#d33682  guibg=NONE  gui=bold
hi  Type                                    cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  Underlined                              cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  VarId                                   cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  VertSplit                               cterm=NONE  ctermfg=11  ctermbg=11  guifg=#657b83  guibg=#657b83  gui=NONE
hi  Visual                                  cterm=reverse  ctermfg=10  ctermbg=8  guifg=#586e75  guibg=#002b36  gui=reverse
hi  VisualNOS                               cterm=reverse  ctermbg=0  ctermbg=NONE  guibg=#073642  guifg=NONE  gui=reverse
hi  WarningMsg                              cterm=NONE  ctermfg=9  guifg=#dc322f  gui=NONE
hi  WildMenu                                cterm=reverse  ctermfg=7  ctermbg=0  guifg=#eee8d5  guibg=#073642 gui=reverse

hi  cPreCondit                              cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE

hi  gitcommitBranch                         cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  gitcommitComment                        cterm=NONE  ctermfg=10  guifg=#586e75  gui=italic
hi  gitcommitDiscardedFile                  cterm=NONE  ctermfg=1  guifg=#dc322f  gui=NONE
hi  gitcommitDiscardedType                  cterm=NONE  ctermfg=1  guifg=#dc322f  gui=NONE
hi  gitcommitFile                           cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  gitcommitHeader                         cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  gitcommitOnBranch                       cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  gitcommitSelectedFile                   cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  gitcommitSelectedType                   cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  gitcommitUnmerged                       cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  gitcommitUnmergedFile                   cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  gitcommitUntrackedFile                  cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE

hi  helpHyperTextEntry                      cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  helpHyperTextJump                       cterm=underline  ctermfg=4  guifg=#268bd2  gui=underline
hi  helpNote                                cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  helpOption                              cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  helpVim                                 cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE

hi  hsImport                                cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  hsImportLabel                           cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hsModuleName                            cterm=underline  ctermfg=2  guifg=#719e07  gui=underline
hi  hsNiceOperator                          cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hsStatement                             cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hsString                                cterm=NONE  ctermfg=11  guifg=#657b83  gui=NONE
hi  hsStructure                             cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hsType                                  cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  hsTypedef                               cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hsVarSym                                cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  hs_DeclareFunction                      cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  hs_OpFunctionName                       cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  hs_hlFunctionName                       cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE

hi  htmlArg                                 cterm=NONE  ctermfg=11  guifg=#657b83  gui=NONE
hi  htmlEndTag                              cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  htmlSpecialTagName                      cterm=NONE  ctermfg=4  guifg=#268bd2  gui=italic
hi  htmlTag                                 cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  htmlTagN                                cterm=NONE  ctermfg=14  guifg=#93a1a1  gui=NONE
hi  htmlTagName                             cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE

hi  javaScript                              cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE

hi  pandocBlockQuote                        cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocBlockQuoteLeader1                 cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocBlockQuoteLeader2                 cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE
hi  pandocBlockQuoteLeader3                 cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  pandocBlockQuoteLeader4                 cterm=NONE  ctermfg=1  guifg=#dc322f  gui=NONE
hi  pandocBlockQuoteLeader5                 cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  pandocBlockQuoteLeader6                 cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  pandocCitation                          cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  pandocCitationDelim                     cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  pandocCitationID                        cterm=underline  ctermfg=5  guifg=#d33682  gui=underline
hi  pandocCitationRef                       cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  pandocComment                           cterm=NONE  ctermfg=10  guifg=#586e75  gui=italic
hi  pandocDefinitionBlock                   cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocDefinitionIndctr                  cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocDefinitionTerm                    cterm=standout  ctermfg=13  guifg=#6c71c4  gui=standout
hi  pandocEmphasis                          cterm=NONE  ctermfg=12  guifg=#839496  gui=italic
hi  pandocEmphasisDefinition                cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=italic
hi  pandocEmphasisHeading                   cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocEmphasisNested                    cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  pandocEmphasisNestedDefinition          cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocEmphasisNestedHeading             cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocEmphasisNestedTable               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocEmphasisTable                     cterm=NONE  ctermfg=4  guifg=#268bd2  gui=italic
hi  pandocEscapePair                        cterm=NONE  ctermfg=1  guifg=#dc322f  gui=NONE
hi  pandocFootnote                          cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  pandocFootnoteDefLink                   cterm=NONE  ctermfg=2  guifg=#719e07  gui=NONE
hi  pandocFootnoteInline                    cterm=NONE,underline  ctermfg=2  guifg=#719e07  gui=NONE,underline
hi  pandocFootnoteLink                      cterm=underline  ctermfg=2  guifg=#719e07  gui=underline
hi  pandocHeading                           cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocHeadingMarker                     cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  pandocImageCaption                      cterm=NONE,underline  ctermfg=13  guifg=#6c71c4  gui=NONE,underline
hi  pandocLinkDefinition                    cterm=underline  ctermfg=6  guifg=#2aa198  guisp=#657b83  gui=underline
hi  pandocLinkDefinitionID                  cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocLinkDelim                         cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  pandocLinkLabel                         cterm=underline  ctermfg=4  guifg=#268bd2  gui=underline
hi  pandocLinkText                          cterm=NONE,underline  ctermfg=4  guifg=#268bd2  gui=NONE,underline
hi  pandocLinkTitle                         cterm=underline  ctermfg=11  guifg=#657b83  gui=underline
hi  pandocLinkTitleDelim                    cterm=underline  ctermfg=10  guifg=#586e75  guisp=#657b83  gui=underline
hi  pandocLinkURL                           cterm=underline  ctermfg=11  guifg=#657b83  gui=underline
hi  pandocListMarker                        cterm=NONE  ctermfg=5  guifg=#d33682  gui=NONE
hi  pandocListReference                     cterm=underline  ctermfg=5  guifg=#d33682  gui=underline
hi  pandocMetadata                          cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocMetadataDelim                     cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  pandocMetadataKey                       cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocNonBreakingSpace                  cterm=reverse  ctermfg=1  ctermbg=NONE  guifg=#dc322f  guibg=NONE  gui=reverse
hi  pandocRule                              cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocRuleLine                          cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocStrikeout                         cterm=reverse  ctermfg=10  ctermbg=NONE  guibg=NONE  guifg=#586e75  gui=reverse
hi  pandocStrikeoutDefinition               cterm=reverse  ctermfg=13  ctermbg=NONE  guibg=NONE  guifg=#6c71c4  gui=reverse
hi  pandocStrikeoutHeading                  cterm=reverse  ctermfg=9  ctermbg=NONE  guibg=NONE  guifg=#cb4b16  gui=reverse
hi  pandocStrikeoutTable                    cterm=reverse  ctermfg=4  ctermbg=NONE  guibg=NONE  guifg=#268bd2  gui=reverse
hi  pandocStrongEmphasis                    cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  pandocStrongEmphasisDefinition          cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocStrongEmphasisEmphasis            cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  pandocStrongEmphasisEmphasisDefinition  cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocStrongEmphasisEmphasisHeading     cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocStrongEmphasisEmphasisTable       cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocStrongEmphasisHeading             cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocStrongEmphasisNested              cterm=NONE  ctermfg=12  guifg=#839496  gui=NONE
hi  pandocStrongEmphasisNestedDefinition    cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocStrongEmphasisNestedHeading       cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocStrongEmphasisNestedTable         cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocStrongEmphasisTable               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocStyleDelim                        cterm=NONE  ctermfg=10  guifg=#586e75  gui=NONE
hi  pandocSubscript                         cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocSubscriptDefinition               cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocSubscriptHeading                  cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocSubscriptTable                    cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocSuperscript                       cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocSuperscriptDefinition             cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocSuperscriptHeading                cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocSuperscriptTable                  cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocTable                             cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocTableStructure                    cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocTableZebraDark                    cterm=NONE  ctermfg=4  ctermbg=0  guifg=#268bd2  guibg=#073642  gui=NONE
hi  pandocTableZebraLight                   cterm=NONE  ctermfg=4  ctermbg=8  guifg=#268bd2  guibg=#002b36  gui=NONE
hi  pandocTitleBlock                        cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocTitleBlockTitle                   cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocTitleComment                      cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  pandocVerbatimBlock                     cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  pandocVerbatimInline                    cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  pandocVerbatimInlineDefinition          cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  pandocVerbatimInlineHeading             cterm=NONE  ctermfg=9  guifg=#cb4b16  gui=NONE
hi  pandocVerbatimInlineTable               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE

hi  perlHereDoc                             cterm=NONE  ctermfg=14  ctermbg=8  guifg=#93a1a1  guibg=#002b36  gui=NONE
hi  perlStatementFileDesc                   cterm=NONE  ctermfg=6  ctermbg=8  guifg=#2aa198  guibg=#002b36  gui=NONE
hi  perlVarPlain                            cterm=NONE  ctermfg=3  ctermbg=8  guifg=#b58900  guibg=#002b36  gui=NONE

hi  rubyDefine                              cterm=NONE  ctermfg=14  ctermbg=8  guifg=#93a1a1  guibg=#002b36  gui=NONE

hi  texMathMatcher                          cterm=NONE  ctermfg=3  ctermbg=8  guifg=#b58900  guibg=#002b36  gui=NONE
hi  texMathZoneX                            cterm=NONE  ctermfg=3  ctermbg=8  guifg=#b58900  guibg=#002b36  gui=NONE
hi  texRefLabel                             cterm=NONE  ctermfg=3  ctermbg=8  guifg=#b58900  guibg=#002b36  gui=NONE
hi  texStatement                            cterm=NONE  ctermfg=6  ctermbg=8  guifg=#2aa198  guibg=#002b36  gui=NONE

hi  vimCmdSep                               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  vimCommand                              cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  vimCommentString                        cterm=NONE  ctermfg=13  guifg=#6c71c4  gui=NONE
hi  vimGroup                                cterm=NONE,underline  ctermfg=4  guifg=#268bd2  gui=NONE,underline
hi  vimHiGroup                              cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  vimHiLink                               cterm=NONE  ctermfg=4  guifg=#268bd2  gui=NONE
hi  vimIsCommand                            cterm=NONE  ctermfg=11  guifg=#657b83  gui=NONE
hi  vimSynMtchOpt                           cterm=NONE  ctermfg=3  guifg=#b58900  gui=NONE
hi  vimSynType                              cterm=NONE  ctermfg=6  guifg=#2aa198  gui=NONE

hi link Boolean                             Constant
hi link Character                           Constant
hi link Conditional                         Statement
hi link Debug                               Special
hi link Define                              PreProc
hi link Delimiter                           Special
hi link Exception                           Statement
hi link Float                               Number
hi link Function                            Identifier
hi link HelpCommand                         Statement
hi link Include                             PreProc
hi link Keyword                             Statement
hi link Label                               Statement
hi link Macro                               PreProc
hi link Number                              Constant
hi link Operator                            Statement
hi link PreCondit                           PreProc
hi link Repeat                              Statement
hi link SpecialChar                         Special
hi link SpecialComment                      Special
hi link StorageClass                        Type
hi link String                              Constant
hi link Structure                           Type
hi link SyntasticError                      SpellBad
hi link SyntasticErrorSign                  Error
hi link SyntasticStyleErrorLine             SyntasticErrorLine
hi link SyntasticStyleErrorSign             SyntasticErrorSign
hi link SyntasticStyleWarningLine           SyntasticWarningLine
hi link SyntasticStyleWarningSign           SyntasticWarningSign
hi link SyntasticWarning                    SpellCap
hi link SyntasticWarningSign                Todo
hi link Tag                                 Special
hi link Typedef                             Type

hi link diffAdded                           Statement
hi link diffBDiffer                         WarningMsg
hi link diffCommon                          WarningMsg
hi link diffDiffer                          WarningMsg
hi link diffIdentical                       WarningMsg
hi link diffIsA                             WarningMsg
hi link diffLine                            Identifier
hi link diffNoEOL                           WarningMsg
hi link diffOnly                            WarningMsg
hi link diffRemoved                         WarningMsg

hi link gitcommitDiscarded                  gitcommitComment
hi link gitcommitDiscardedArrow             gitcommitDiscardedFile
hi link gitcommitNoBranch                   gitcommitBranch
hi link gitcommitSelected                   gitcommitComment
hi link gitcommitSelectedArrow              gitcommitSelectedFile
hi link gitcommitUnmergedArrow              gitcommitUnmergedFile
hi link gitcommitUntracked                  gitcommitComment

hi link helpSpecial                         Special

hi link hsDelimTypeExport                   Delimiter
hi link hsImportParams                      Delimiter
hi link hsModuleStartLabel                  hsStructure
hi link hsModuleWhereLabel                  hsModuleStartLabel
hi link htmlLink                            Function

hi link lCursor                             Cursor

hi link pandocCodeBlock                     pandocVerbatimBlock
hi link pandocCodeBlockDelim                pandocVerbatimBlock
hi link pandocEscapedCharacter              pandocEscapePair
hi link pandocLineBreak                     pandocEscapePair
hi link pandocMetadataTitle                 pandocMetadata
hi link pandocTableStructureEnd             pandocTableStructre
hi link pandocTableStructureTop             pandocTableStructre
hi link pandocVerbatimBlockDeep             pandocVerbatimBlock

hi link vimFunc                             Function
hi link vimSet                              Normal
hi link vimSetEqual                         Normal
hi link vimUserFunc                         Function
hi link vipmVar                             Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre

if has('nvim')
  let g:terminal_color_0  = '#073642'
  let g:terminal_color_1  = '#dc322f'
  let g:terminal_color_2  = '#859900'
  let g:terminal_color_3  = '#b58900'
  let g:terminal_color_4  = '#268bd2'
  let g:terminal_color_5  = '#d33682'
  let g:terminal_color_6  = '#2aa198'
  let g:terminal_color_7  = '#eee8d5'
  let g:terminal_color_8  = '#002b36'
  let g:terminal_color_9  = '#cb4b16'
  let g:terminal_color_10 = '#586e75'
  let g:terminal_color_11 = '#657b83'
  let g:terminal_color_12 = '#839496'
  let g:terminal_color_13 = '#6c71c4'
  let g:terminal_color_14 = '#93a1a1'
  let g:terminal_color_15 = '#fdf6e3'
endif
