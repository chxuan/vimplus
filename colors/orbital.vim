" orbital.vim -- Vim color scheme.
" Author:      fcpg (n/a)
" Webpage:     https://github.com/fcpg
" Description: Dark blue base16 theme for 256-color terminals

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "orbital"

if &t_Co >= 256 || has("gui_running")
    hi Normal ctermbg=16 ctermfg=75 cterm=NONE guibg=#000000 guifg=#5fafff gui=NONE
    set background=dark
    hi NonText ctermbg=bg ctermfg=20 cterm=NONE guibg=bg guifg=#0000d7 gui=NONE
    hi Comment ctermbg=bg ctermfg=59 cterm=NONE guibg=bg guifg=#5f5f5f gui=NONE
    hi Constant ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi Error ctermbg=20 ctermfg=223 cterm=NONE guibg=#0000d7 guifg=#ffd7af gui=NONE
    hi Identifier ctermbg=bg ctermfg=246 cterm=NONE guibg=bg guifg=#949494 gui=NONE
    hi Ignore ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi PreProc ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi Special ctermbg=bg ctermfg=180 cterm=NONE guibg=bg guifg=#d7af87 gui=NONE
    hi Statement ctermbg=bg ctermfg=32 cterm=NONE guibg=bg guifg=#0087d7 gui=NONE
    hi String ctermbg=235 ctermfg=110 cterm=NONE guibg=#262626 guifg=#87afd7 gui=NONE
    hi Number ctermbg=bg ctermfg=67 cterm=NONE guibg=bg guifg=#5f87af gui=NONE
    hi Todo ctermbg=bg ctermfg=254 cterm=bold guibg=bg guifg=#e4e4e4 gui=bold
    hi Type ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi! link Character Constant
    hi! link Float Number
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Label Statement
    hi! link Keyword Statement
    hi! link Exception Statement
    hi! link Include PreProc
    hi! link Define PreProc
    hi! link Macro PreProc
    hi! link PreCondit PreProc
    hi! link StorageClass Type
    hi! link Structure Type
    hi! link Typedef Type
    hi! link Tag Special
    hi! link SpecialChar Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi Underlined ctermbg=235 ctermfg=137 cterm=NONE guibg=#262626 guifg=#af875f gui=NONE
    hi StatusLine ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi StatusLineNC ctermbg=bg ctermfg=235 cterm=NONE guibg=bg guifg=#262626 gui=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi VertSplit ctermbg=bg ctermfg=235 cterm=NONE guibg=bg guifg=#262626 gui=NONE
    hi TabLine ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi TabLineFill ctermbg=235 ctermfg=254 cterm=NONE guibg=#262626 guifg=#e4e4e4 gui=NONE
    hi TabLineSel ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi Title ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi CursorLine ctermbg=235 ctermfg=NONE cterm=NONE guibg=#262626 guifg=NONE gui=NONE
    hi LineNr ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi CursorLineNr ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi qfLineNr ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi helpLeadBlank ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi helpNormal ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi Visual ctermbg=110 ctermfg=16 cterm=NONE guibg=#87afd7 guifg=#000000 gui=NONE
    hi VisualNOS ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi Pmenu ctermbg=235 ctermfg=246 cterm=NONE guibg=#262626 guifg=#949494 gui=NONE
    hi PmenuSbar ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi PmenuSel ctermbg=235 ctermfg=223 cterm=NONE guibg=#262626 guifg=#ffd7af gui=NONE
    hi PmenuThumb ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi FoldColumn ctermbg=bg ctermfg=235 cterm=NONE guibg=bg guifg=#262626 gui=NONE
    hi Folded ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi WildMenu ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi SpecialKey ctermbg=bg ctermfg=67 cterm=NONE guibg=bg guifg=#5f87af gui=NONE
    hi DiffAdd ctermbg=235 ctermfg=223 cterm=NONE guibg=#262626 guifg=#ffd7af gui=NONE
    hi DiffChange ctermbg=235 ctermfg=246 cterm=NONE guibg=#262626 guifg=#949494 gui=NONE
    hi DiffDelete ctermbg=bg ctermfg=20 cterm=NONE guibg=bg guifg=#0000d7 gui=NONE
    hi DiffText ctermbg=235 ctermfg=110 cterm=NONE guibg=#262626 guifg=#87afd7 gui=NONE
    hi IncSearch ctermbg=68 ctermfg=16 cterm=NONE guibg=#5f87d7 guifg=#000000 gui=NONE
    hi Search ctermbg=20 ctermfg=250 cterm=NONE guibg=#0000d7 guifg=#bcbcbc gui=NONE
    hi Directory ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi MatchParen ctermbg=25 ctermfg=223 cterm=bold guibg=#005faf guifg=#ffd7af gui=bold
    hi SpellBad ctermbg=NONE ctermfg=20 cterm=NONE guibg=NONE guifg=#0000d7 gui=NONE guisp=#0000d7
    hi SpellCap ctermbg=NONE ctermfg=223 cterm=NONE guibg=NONE guifg=#ffd7af gui=NONE guisp=#ffd7af
    hi SpellLocal ctermbg=NONE ctermfg=20 cterm=NONE guibg=NONE guifg=#0000d7 gui=NONE guisp=#0000d7
    hi SpellRare ctermbg=NONE ctermfg=25 cterm=NONE guibg=NONE guifg=#005faf gui=NONE guisp=#005faf
    hi ColorColumn ctermbg=bg ctermfg=235 cterm=NONE guibg=bg guifg=#262626 gui=NONE
    hi signColumn ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi ErrorMsg ctermbg=20 ctermfg=254 cterm=NONE guibg=#0000d7 guifg=#e4e4e4 gui=NONE
    hi ModeMsg ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi MoreMsg ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi Question ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi WarningMsg ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi Cursor ctermbg=68 ctermfg=16 cterm=NONE guibg=#5f87d7 guifg=#000000 gui=NONE
    hi CursorColumn ctermbg=235 ctermfg=NONE cterm=NONE guibg=#262626 guifg=NONE gui=NONE
    hi Function ctermbg=bg ctermfg=250 cterm=NONE guibg=bg guifg=#bcbcbc gui=NONE
    hi Operator ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi Delimiter ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi Boolean ctermbg=bg ctermfg=67 cterm=NONE guibg=bg guifg=#5f87af gui=NONE
    hi VimIsCommand ctermbg=235 ctermfg=254 cterm=NONE guibg=#262626 guifg=#e4e4e4 gui=NONE
    hi VimFunction ctermbg=bg ctermfg=254 cterm=bold guibg=bg guifg=#e4e4e4 gui=bold
    hi! link VimFuncKey VimCommand
    hi! link VimSubstPat VimString
    hi VimSubstRep4 ctermbg=235 ctermfg=25 cterm=NONE guibg=#262626 guifg=#005faf gui=NONE
    hi VimMapLhs ctermbg=235 ctermfg=254 cterm=NONE guibg=#262626 guifg=#e4e4e4 gui=NONE
    hi javaScriptObjectKey ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi javaScriptFunctionKey ctermbg=235 ctermfg=180 cterm=NONE guibg=#262626 guifg=#d7af87 gui=NONE
    hi htmlItalic ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi markdownLinkTextDelimiter ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi markdownLinkDelimiter ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi markdownUrl ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi markdownCodeBlock ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi markdownCode ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi helpExample ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi manSectionHeading ctermbg=bg ctermfg=137 cterm=NONE guibg=bg guifg=#af875f gui=NONE
    hi manOptionDesc ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi manLongOptionDesc ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi CtrlPNoEntries ctermbg=bg ctermfg=20 cterm=NONE guibg=bg guifg=#0000d7 gui=NONE
    hi CtrlPMatch ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi CtrlPLinePre ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi CtrlPPrtBase ctermbg=bg ctermfg=25 cterm=NONE guibg=bg guifg=#005faf gui=NONE
    hi CtrlPPrtText ctermbg=bg ctermfg=254 cterm=NONE guibg=bg guifg=#e4e4e4 gui=NONE
    hi CtrlPPtrCursor ctermbg=bg ctermfg=68 cterm=NONE guibg=bg guifg=#5f87d7 gui=NONE
    hi CtrlPBufferInd ctermbg=bg ctermfg=223 cterm=NONE guibg=bg guifg=#ffd7af gui=NONE
    hi CtrlPBufferVis ctermbg=bg ctermfg=110 cterm=NONE guibg=bg guifg=#87afd7 gui=NONE
    hi CtrlPBufferNr ctermbg=bg ctermfg=67 cterm=NONE guibg=bg guifg=#5f87af gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=black ctermfg=blue cterm=NONE
    set background=dark
    hi NonText ctermbg=bg ctermfg=darkblue cterm=NONE
    hi Comment ctermbg=bg ctermfg=grey cterm=NONE
    hi Constant ctermbg=bg ctermfg=white cterm=NONE
    hi Error ctermbg=darkblue ctermfg=white cterm=NONE
    hi Identifier ctermbg=bg ctermfg=grey cterm=NONE
    hi Ignore ctermbg=bg ctermfg=darkblue cterm=NONE
    hi PreProc ctermbg=bg ctermfg=white cterm=NONE
    hi Special ctermbg=bg ctermfg=darkyellow cterm=NONE
    hi Statement ctermbg=bg ctermfg=blue cterm=NONE
    hi String ctermbg=grey ctermfg=blue cterm=NONE
    hi Number ctermbg=bg ctermfg=blue cterm=NONE
    hi Todo ctermbg=bg ctermfg=white cterm=bold
    hi Type ctermbg=bg ctermfg=white cterm=NONE
    hi link Character Constant
    hi link Float Number
    hi link Conditional Statement
    hi link Repeat Statement
    hi link Label Statement
    hi link Keyword Statement
    hi link Exception Statement
    hi link Include PreProc
    hi link Define PreProc
    hi link Macro PreProc
    hi link PreCondit PreProc
    hi link StorageClass Type
    hi link Structure Type
    hi link Typedef Type
    hi link Tag Special
    hi link SpecialChar Special
    hi link SpecialComment Special
    hi link Debug Special
    hi Underlined ctermbg=grey ctermfg=yellow cterm=NONE
    hi StatusLine ctermbg=bg ctermfg=blue cterm=NONE
    hi StatusLineNC ctermbg=bg ctermfg=grey cterm=NONE
    hi link StatusLineTerm StatusLine
    hi link StatusLineTermNC StatusLineNC
    hi VertSplit ctermbg=bg ctermfg=grey cterm=NONE
    hi TabLine ctermbg=bg ctermfg=darkblue cterm=NONE
    hi TabLineFill ctermbg=grey ctermfg=white cterm=NONE
    hi TabLineSel ctermbg=bg ctermfg=white cterm=NONE
    hi Title ctermbg=bg ctermfg=white cterm=NONE
    hi CursorLine ctermbg=grey ctermfg=NONE cterm=NONE
    hi LineNr ctermbg=bg ctermfg=darkblue cterm=NONE
    hi CursorLineNr ctermbg=bg ctermfg=blue cterm=NONE
    hi qfLineNr ctermbg=bg ctermfg=darkblue cterm=NONE
    hi helpLeadBlank ctermbg=bg ctermfg=white cterm=NONE
    hi helpNormal ctermbg=bg ctermfg=white cterm=NONE
    hi Visual ctermbg=blue ctermfg=black cterm=NONE
    hi VisualNOS ctermbg=bg ctermfg=white cterm=NONE
    hi Pmenu ctermbg=grey ctermfg=grey cterm=NONE
    hi PmenuSbar ctermbg=bg ctermfg=white cterm=NONE
    hi PmenuSel ctermbg=grey ctermfg=white cterm=NONE
    hi PmenuThumb ctermbg=bg ctermfg=white cterm=NONE
    hi FoldColumn ctermbg=bg ctermfg=grey cterm=NONE
    hi Folded ctermbg=bg ctermfg=darkblue cterm=NONE
    hi WildMenu ctermbg=bg ctermfg=white cterm=NONE
    hi SpecialKey ctermbg=bg ctermfg=blue cterm=NONE
    hi DiffAdd ctermbg=grey ctermfg=white cterm=NONE
    hi DiffChange ctermbg=grey ctermfg=grey cterm=NONE
    hi DiffDelete ctermbg=bg ctermfg=darkblue cterm=NONE
    hi DiffText ctermbg=grey ctermfg=blue cterm=NONE
    hi IncSearch ctermbg=blue ctermfg=black cterm=NONE
    hi Search ctermbg=darkblue ctermfg=grey cterm=NONE
    hi Directory ctermbg=bg ctermfg=white cterm=NONE
    hi MatchParen ctermbg=darkblue ctermfg=white cterm=bold
    hi SpellBad ctermbg=NONE ctermfg=darkblue cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=white cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=darkblue cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=darkblue cterm=NONE
    hi ColorColumn ctermbg=bg ctermfg=grey cterm=NONE
    hi signColumn ctermbg=bg ctermfg=white cterm=NONE
    hi ErrorMsg ctermbg=darkblue ctermfg=white cterm=NONE
    hi ModeMsg ctermbg=bg ctermfg=white cterm=NONE
    hi MoreMsg ctermbg=bg ctermfg=white cterm=NONE
    hi Question ctermbg=bg ctermfg=white cterm=NONE
    hi WarningMsg ctermbg=bg ctermfg=white cterm=NONE
    hi Cursor ctermbg=blue ctermfg=black cterm=NONE
    hi CursorColumn ctermbg=grey ctermfg=NONE cterm=NONE
    hi Function ctermbg=bg ctermfg=grey cterm=NONE
    hi Operator ctermbg=bg ctermfg=yellow cterm=NONE
    hi Delimiter ctermbg=bg ctermfg=yellow cterm=NONE
    hi Boolean ctermbg=bg ctermfg=blue cterm=NONE
    hi VimIsCommand ctermbg=grey ctermfg=white cterm=NONE
    hi VimFunction ctermbg=bg ctermfg=white cterm=bold
    hi link VimFuncKey VimCommand
    hi link VimSubstPat VimString
    hi VimSubstRep4 ctermbg=grey ctermfg=darkblue cterm=NONE
    hi VimMapLhs ctermbg=grey ctermfg=white cterm=NONE
    hi javaScriptObjectKey ctermbg=bg ctermfg=blue cterm=NONE
    hi javaScriptFunctionKey ctermbg=grey ctermfg=darkyellow cterm=NONE
    hi htmlItalic ctermbg=bg ctermfg=blue cterm=NONE
    hi markdownLinkTextDelimiter ctermbg=bg ctermfg=blue cterm=NONE
    hi markdownLinkDelimiter ctermbg=bg ctermfg=darkblue cterm=NONE
    hi markdownUrl ctermbg=bg ctermfg=darkblue cterm=NONE
    hi markdownCodeBlock ctermbg=bg ctermfg=yellow cterm=NONE
    hi markdownCode ctermbg=bg ctermfg=yellow cterm=NONE
    hi helpExample ctermbg=bg ctermfg=yellow cterm=NONE
    hi manSectionHeading ctermbg=bg ctermfg=yellow cterm=NONE
    hi manOptionDesc ctermbg=bg ctermfg=white cterm=NONE
    hi manLongOptionDesc ctermbg=bg ctermfg=blue cterm=NONE
    hi CtrlPNoEntries ctermbg=bg ctermfg=darkblue cterm=NONE
    hi CtrlPMatch ctermbg=bg ctermfg=white cterm=NONE
    hi CtrlPLinePre ctermbg=bg ctermfg=darkblue cterm=NONE
    hi CtrlPPrtBase ctermbg=bg ctermfg=darkblue cterm=NONE
    hi CtrlPPrtText ctermbg=bg ctermfg=white cterm=NONE
    hi CtrlPPtrCursor ctermbg=bg ctermfg=blue cterm=NONE
    hi CtrlPBufferInd ctermbg=bg ctermfg=white cterm=NONE
    hi CtrlPBufferVis ctermbg=bg ctermfg=blue cterm=NONE
    hi CtrlPBufferNr ctermbg=bg ctermfg=blue cterm=NONE
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
