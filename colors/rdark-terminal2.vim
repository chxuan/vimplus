" rdark-terminal2 - vim color scheme
"
" Modified: Radu-Sebastian Marinescu
" Last Change: 2014 Jul 16
" Version: 0.3
"
" Based on rdark-terminal of Lukas Grässlin
" (http://www.vim.org/scripts/script.php?script_id=3202)
" which ported the rdark colorscheme for 256 colors.
" (http://www.vim.org/scripts/script.php?script_id=1732)
"
" Info: rdark-terminal2 enhances visibility for CursorLine, Type, Special,
" ColorColumn and IncSearch
"
hi clear
let colors_name="rdark-terminal2"

hi clear CursorLine
hi CursorLine ctermbg=234

hi Normal term=NONE cterm=NONE ctermbg=NONE ctermfg=252
hi Underlined term=underline cterm=underline ctermbg=NONE ctermfg=111
hi Ignore term=NONE cterm=NONE ctermbg=NONE ctermfg=16
hi Error term=reverse cterm=NONE ctermbg=160 ctermfg=255
hi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=215
hi Number term=NONE cterm=NONE ctermbg=NONE ctermfg=113
hi String term=NONE cterm=NONE ctermbg=NONE ctermfg=113
hi Function term=NONE cterm=NONE ctermbg=NONE ctermfg=215
hi SpecialKey term=bold cterm=NONE ctermbg=NONE ctermfg=196
hi NonText term=bold cterm=NONE ctermbg=NONE ctermfg=236
"hi MatchParen term=reverse cterm=NONE ctermbg=215 ctermfg=23
hi MatchParen term=NONE cterm=NONE ctermbg=NONE ctermfg=166
hi Comment term=bold cterm=NONE ctermbg=NONE ctermfg=245
hi Constant term=underline cterm=NONE ctermbg=NONE ctermfg=113
hi Special term=bold cterm=NONE ctermbg=NONE ctermfg=66
hi Keyword term=NONE cterm=NONE ctermbg=NONE ctermfg=255
hi Identifier term=underline cterm=NONE ctermbg=NONE ctermfg=252
hi Statement term=bold cterm=NONE ctermbg=NONE ctermfg=74
hi PreProc term=underline cterm=NONE ctermbg=NONE ctermfg=215
hi Type term=underline cterm=NONE ctermbg=NONE ctermfg=108
hi LineNr term=underline cterm=NONE ctermbg=NONE ctermfg=59
hi ExtraWhitespace term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
"hi Visual term=reverse cterm=NONE ctermbg=90 ctermfg=255

hi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=250
hi PmenuSel term=NONE cterm=NONE ctermbg=61 ctermfg=231
hi PmenuSbar term=NONE cterm=NONE ctermbg=238 ctermfg=238
hi PmenuThumb term=NONE cterm=NONE ctermbg=102 ctermfg=102

hi StatusLine term=reverse,bold cterm=NONE ctermbg=250 ctermfg=0
hi StatusLineNC term=reverse cterm=NONE ctermbg=240 ctermfg=16
"hi VertSplit term=reverse cterm=NONE ctermbg=102 ctermfg=59
hi VertSplit term=reverse cterm=NONE ctermbg=NONE ctermfg=59
hi Directory term=bold cterm=NONE ctermbg=NONE ctermfg=231
hi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231
hi IncSearch term=reverse cterm=NONE ctermbg=226 ctermfg=23
hi Search term=reverse cterm=NONE ctermbg=215 ctermfg=23
hi MoreMsg term=bold cterm=bold ctermbg=NONE ctermfg=74
hi ModeMsg term=bold cterm=bold ctermbg=NONE ctermfg=fg
"hi TabLine term=underline cterm=underline ctermbg=16 ctermfg=102
"hi TabLineSel term=bold cterm=NONE ctermbg=59 ctermfg=255
"hi TabLineFill term=reverse cterm=NONE ctermbg=16 ctermfg=16
hi TabLine term=underline cterm=NONE ctermbg=240 ctermfg=0
hi TabLineSel term=bold cterm=NONE ctermbg=243 ctermfg=255
hi TabLineFill term=reverse cterm=NONE ctermbg=240 ctermfg=16
hi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg
hi Cursor term=NONE cterm=NONE ctermbg=145 ctermfg=16
hi cppSTLType term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cssUIProp term=NONE cterm=NONE ctermbg=NONE ctermfg=188
hi vimAutoEvent term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cParen term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cBracket term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cNumbers term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi phpPropertySelectorInString term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi Question term=NONE cterm=NONE ctermbg=NONE ctermfg=113
hi Title term=bold cterm=bold ctermbg=NONE ctermfg=215
hi VisualNOS term=bold,underline cterm=bold,underline ctermbg=NONE ctermfg=fg
hi WarningMsg term=NONE cterm=NONE ctermbg=NONE ctermfg=196
hi WildMenu term=NONE cterm=NONE ctermbg=233 ctermfg=255
"hi Folded term=NONE cterm=NONE ctermbg=NONE ctermfg=188
hi Folded term=NONE cterm=NONE ctermbg=NONE ctermfg=26
hi FoldColumn term=NONE cterm=NONE ctermbg=NONE ctermfg=26
hi phpSemicolon term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpFunctions term=NONE cterm=NONE ctermbg=NONE ctermfg=188
hi phpParent term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi javaScriptBraces term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi javaScriptOperator term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi htmlTag term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi htmlTagName term=NONE cterm=NONE ctermbg=NONE ctermfg=145
hi cCppBracket term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cBlock term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi htmlTitle term=NONE cterm=NONE ctermbg=NONE ctermfg=113
hi cUserCont term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi lCursor term=NONE cterm=NONE ctermbg=145 ctermfg=16
hi cssPseudoClassId term=NONE cterm=NONE ctermbg=NONE ctermfg=255
hi cssBraces term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi cssIdentifier term=NONE cterm=NONE ctermbg=NONE ctermfg=215
hi cssTagName term=NONE cterm=NONE ctermbg=NONE ctermfg=215
hi cMulti term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi ICursor term=NONE cterm=NONE ctermbg=145 ctermfg=fg
hi DiffAdd term=bold cterm=NONE ctermbg=NONE ctermfg=113
hi DiffChange term=bold cterm=NONE ctermbg=NONE ctermfg=fg
hi DiffDelete term=bold cterm=bold ctermbg=NONE ctermfg=215
hi DiffText term=reverse cterm=NONE ctermbg=NONE ctermfg=fg
hi SignColumn term=NONE cterm=NONE ctermbg=16 ctermfg=51
hi SpellBad term=reverse cterm=undercurl ctermbg=NONE ctermfg=196
hi SpellCap term=reverse cterm=undercurl ctermbg=NONE ctermfg=21
hi SpellRare term=reverse cterm=undercurl ctermbg=NONE ctermfg=201
hi SpellLocal term=underline cterm=undercurl ctermbg=NONE ctermfg=51
hi htmlSpecialTagName term=NONE cterm=NONE ctermbg=NONE ctermfg=145
hi htmlArg term=NONE cterm=NONE ctermbg=NONE ctermfg=188
hi cBitField term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cssSelectorOp term=NONE cterm=NONE ctermbg=NONE ctermfg=255
hi pythonFunction term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi cNumbersCom term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi vimFuncName term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi phpRegionDelimiter term=NONE cterm=NONE ctermbg=NONE ctermfg=139
hi phpPropertySelector term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi cCppParen term=NONE cterm=NONE ctermbg=NONE ctermfg=fg
hi phpOperator term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpArrayPair term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpAssignByRef term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpRelation term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpMemberSelector term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpUnknownSelector term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi phpVarSelector term=NONE cterm=NONE ctermbg=NONE ctermfg=145
hi htmlEndTag term=NONE cterm=NONE ctermbg=NONE ctermfg=102
hi vimFold term=NONE cterm=NONE ctermbg=NONE ctermfg=fg

"Sat's todo conf
hi satTodoNew term=underline cterm=NONE ctermbg=NONE ctermfg=fg
hi satTodoDone term=bold cterm=NONE ctermbg=NONE ctermfg=196
hi satComment term=bold cterm=NONE ctermbg=NONE ctermfg=245
hi satTitle term=reverse cterm=NONE ctermbg=102 ctermfg=59

"Minibuff Explorer"
hi MBEVisibleNormal term=NONE cterm=NONE ctermbg=NONE ctermfg=166
hi MBEVisibleChanged term=NONE cterm=NONE ctermbg=NONE ctermfg=166


hi ColorColumn ctermbg=235
