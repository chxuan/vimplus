" 
"
" ███████╗██████╗  █████╗  ██████╗███████╗ ██████╗ █████╗ ███╗   ███╗██████╗
" ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██╔══██╗████╗ ████║██╔══██╗
" ███████╗██████╔╝███████║██║     █████╗  ██║     ███████║██╔████╔██║██████╔╝
" ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  ██║     ██╔══██║██║╚██╔╝██║██╔═══╝
" ███████║██║     ██║  ██║╚██████╗███████╗╚██████╗██║  ██║██║ ╚═╝ ██║██║
" ╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
"
"                 Vim colors for the final frontier
"
" by Jared Gorski
" https://github.com/jaredgorski/spacecamp

scriptencoding utf-8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="spacecamp"

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:spaceBlack = {'gui': '#121212', 'cterm256': '233'}
let s:spaceBlack2 = {'gui': '#262626', 'cterm256': '235'}
let s:spaceGray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:spaceGray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:spaceGray3 = {'gui': '#6B6B6B', 'cterm256': '242'}
let s:spaceGray4 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:spaceSteel = {'gui': '#DEDEDE', 'cterm256': '253'}
let s:spaceWhite = {'gui': '#EEEEEE', 'cterm256': '255'}
let s:spaceViolet = {'gui': '#CF73E6', 'cterm256': '170'}
let s:spaceBlue = {'gui': '#91AADF', 'cterm256': '110'}
let s:spaceBlue2 = {'gui': '#B7CBF4', 'cterm256': '111'}
let s:spaceGreen = {'gui': '#57BA37', 'cterm256': '71'}
let s:spaceGoo = {'gui': '#D8FA3B', 'cterm256': '191'}
let s:spaceGold = {'gui': '#F0D50C', 'cterm256': '220'}
let s:spaceOrange = {'gui': '#F66100', 'cterm256': '202'}
let s:spaceRed = {'gui': '#821A1A', 'cterm256': '1'}
let s:spaceRed2 = {'gui': '#FF0000', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:spaceGray1, 'none')
call <sid>hi('Cursor', s:spaceBlack, s:spaceSteel, 'none')
call <sid>hi('CursorColumn', s:none, s:spaceGray1, 'none')
call <sid>hi('CursorLine', s:none, s:spaceGray1, 'none')
call <sid>hi('CursorLineNr', s:spaceSteel, s:spaceGray1, 'none')
call <sid>hi('Directory', s:spaceBlue, s:spaceBlack, 'none')
call <sid>hi('FoldColumn', s:none, s:spaceGray1, 'none')
call <sid>hi('Folded', s:spaceGray3, s:none, 'none')
call <sid>hi('IncSearch', s:spaceBlack, s:spaceBlue2, 'none')
call <sid>hi('LineNr', s:spaceGray3, s:spaceBlack2, 'none')
call <sid>hi('MatchParen', s:spaceBlack, s:spaceGold, 'none')
call <sid>hi('Normal', s:spaceWhite, s:spaceBlack, 'none')
call <sid>hi('Pmenu', s:none, s:spaceBlack2, 'none')
call <sid>hi('PmenuSel', s:none, s:spaceGray2, 'none')
call <sid>hi('Search', s:spaceBlack, s:spaceBlue, 'none')
call <sid>hi('SignColumn', s:none, s:spaceBlack2, 'none')
call <sid>hi('StatusLine', s:spaceBlack, s:spaceSteel, 'none')
call <sid>hi('StatusLineNC', s:spaceGray3, s:spaceBlack2, 'none')
call <sid>hi('VertSplit', s:spaceGray3, s:spaceGray3, 'none')
call <sid>hi('Visual', s:none, s:spaceGray2, 'none')

" General
call <sid>hi('Boolean', s:spaceGoo, s:none, 'none')
call <sid>hi('Character', s:spaceGoo, s:none, 'none')
call <sid>hi('Comment', s:spaceGray3, s:none, 'none')
call <sid>hi('Conditional', s:spaceViolet, s:none, 'none')
call <sid>hi('Constant', s:spaceOrange, s:none, 'none')
call <sid>hi('Define', s:spaceViolet, s:none, 'none')
call <sid>hi('DiffAdd', s:spaceBlack, s:spaceGreen, 'none')
call <sid>hi('DiffChange', s:spaceBlack, s:spaceGold, 'none')
call <sid>hi('DiffDelete', s:spaceWhite, s:spaceRed, 'none')
call <sid>hi('DiffText', s:spaceGray1, s:spaceBlue, 'none')
call <sid>hi('ErrorMsg', s:spaceWhite, s:spaceRed, 'none')
call <sid>hi('Float', s:spaceGoo, s:none, 'none')
call <sid>hi('Function', s:spaceBlue, s:none, 'none')
call <sid>hi('Identifier', s:spaceGold, s:none, 'none')
call <sid>hi('Keyword', s:spaceGold, s:none, 'none')
call <sid>hi('Label', s:spaceGreen, s:none, 'none')
call <sid>hi('NonText', s:spaceGray1, s:spaceBlack, 'none')
call <sid>hi('Number', s:spaceGoo, s:none, 'none')
call <sid>hi('Operator', s:spaceViolet, s:none, 'none')
call <sid>hi('PreProc', s:spaceViolet, s:none, 'none')
call <sid>hi('Special', s:spaceWhite, s:none, 'none')
call <sid>hi('SpecialKey', s:spaceGray1, s:spaceBlack, 'none')
call <sid>hi('SpellBad', s:spaceRed2, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:spaceBlue, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:spaceOrange, s:none, 'undercurl')
call <sid>hi('Statement', s:spaceViolet, s:none, 'none')
call <sid>hi('StorageClass', s:spaceGold, s:none, 'none')
call <sid>hi('String', s:spaceGreen, s:none, 'none')
call <sid>hi('Tag', s:spaceGold, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:spaceGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:spaceWhite, s:spaceRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:spaceBlack, s:spaceGreen, 'none')
  call <sid>hi('DiffChange', s:spaceBlack, s:spaceGold, 'none')
  call <sid>hi('DiffDelete', s:spaceRed2, s:spaceRed, 'none')
  call <sid>hi('DiffText', s:spaceGray1, s:spaceBlue, 'none')
else
  call <sid>hi('DiffAdd', s:spaceGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:spaceGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:spaceRed2, s:none, 'none')
  call <sid>hi('DiffText', s:spaceSteel, s:spaceBlue, 'none')
endif

" ------------
" Languages
" ------------

" C
call <sid>hi('cConstant', s:spaceOrange, s:none, 'none')
call <sid>hi('cFormat', s:spaceSteel, s:none, 'none')
call <sid>hi('cMulti', s:spaceViolet, s:none, 'none')
call <sid>hi('cNumbers', s:spaceGoo, s:none, 'none')
call <sid>hi('cOperator', s:spaceViolet, s:none, 'none')
call <sid>hi('cSpecial', s:spaceGoo, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:spaceGoo, s:none, 'none')
call <sid>hi('cStatement', s:spaceViolet, s:none, 'none')
call <sid>hi('cStorageClass', s:spaceGold, s:none, 'none')
call <sid>hi('cString', s:spaceGreen, s:none, 'none')
call <sid>hi('cStructure', s:spaceGold, s:none, 'none')
call <sid>hi('cType', s:spaceBlue, s:none, 'none')

" C++
call <sid>hi('cppConstant', s:spaceOrange, s:none, 'none')
call <sid>hi('cppFormat', s:spaceSteel, s:none, 'none')
call <sid>hi('cppMulti', s:spaceViolet, s:none, 'none')
call <sid>hi('cppNumbers', s:spaceGoo, s:none, 'none')
call <sid>hi('cppOperator', s:spaceViolet, s:none, 'none')
call <sid>hi('cppSpecial', s:spaceGoo, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:spaceGoo, s:none, 'none')
call <sid>hi('cppStatement', s:spaceViolet, s:none, 'none')
call <sid>hi('cppStorageClass', s:spaceGold, s:none, 'none')
call <sid>hi('cppString', s:spaceGreen, s:none, 'none')
call <sid>hi('cppStructure', s:spaceGold, s:none, 'none')
call <sid>hi('cppType', s:spaceBlue, s:none, 'none')

" CSS
call <sid>hi('cssAttr', s:spaceViolet, s:none, 'none')
call <sid>hi('cssAttrRegion', s:spaceViolet, s:none, 'none')
call <sid>hi('cssBraces', s:spaceWhite, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:spaceSteel, s:none, 'none')
call <sid>hi('cssClassName', s:spaceBlue2, s:none, 'none')
call <sid>hi('cssClassNameDot', s:spaceSteel, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:spaceSteel, s:none, 'none')
call <sid>hi('cssColor', s:spaceSteel, s:none, 'none')
call <sid>hi('cssCommonAttr', s:spaceViolet, s:none, 'none')
call <sid>hi('cssCustomProperty', s:spaceGray4, s:none, 'none')
call <sid>hi('cssDefinition', s:spaceGray4, s:none, 'none')
call <sid>hi('cssFunction', s:spaceSteel, s:none, 'none')
call <sid>hi('cssFunctionName', s:spaceBlue, s:none, 'none')
call <sid>hi('cssIdentifier', s:spaceBlue2, s:none, 'none')
call <sid>hi('cssImportant', s:spaceOrange, s:none, 'none')
call <sid>hi('cssInclude', s:spaceSteel, s:none, 'none')
call <sid>hi('cssMedia', s:spaceGoo, s:none, 'none')
call <sid>hi('cssMediaBlock', s:spaceGoo, s:none, 'none')
call <sid>hi('cssProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssTextProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssAnimationProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssUIProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssTransformProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssTransitionProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssPrintProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssPositioningProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssBoxProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssMarginProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssListProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssTableProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssFontProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssPaddingProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssDimensionProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssRenderProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssColorProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:spaceGray4, s:none, 'none')
call <sid>hi('cssPropDefinition', s:spaceGray4, s:none, 'none')
call <sid>hi('cssPseudoClass', s:spaceGold, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:spaceGold, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:spaceGold, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:spaceSteel, s:none, 'none')
call <sid>hi('cssTagName', s:spaceBlue2, s:none, 'none')
call <sid>hi('cssURL', s:spaceGold, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:spaceViolet, s:none, 'none')
call <sid>hi('cssUnits', s:spaceViolet, s:none, 'none')
call <sid>hi('cssValueLength', s:spaceBlue, s:none, 'none')
call <sid>hi('cssValueNumber', s:spaceBlue, s:none, 'none')
call <sid>hi('cssValueKeyword', s:spaceGreen, s:none, 'none')
call <sid>hi('cssVendor', s:spaceSteel, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:spaceViolet, s:none, 'none')
call <sid>hi('htmlEndTag', s:spaceSteel, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:spaceGoo, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:spaceBlue2, s:none, 'none')
call <sid>hi('htmlTag', s:spaceSteel, s:none, 'none')
call <sid>hi('htmlTagName', s:spaceBlue2, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:spaceWhite, s:none, 'none')
call <sid>hi('javaScriptFunction', s:spaceGold, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:spaceBlue, s:none, 'none')
call <sid>hi('javaScriptMember', s:spaceSteel, s:none, 'none')
call <sid>hi('javaScriptNull', s:spaceGoo, s:none, 'none')
call <sid>hi('javaScriptNumber', s:spaceGoo, s:none, 'none')
call <sid>hi('javaScriptNumber', s:spaceGoo, s:none, 'none')
call <sid>hi('javaScriptParens', s:spaceWhite, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:spaceGoo, s:none, 'none')
call <sid>hi('javaScriptStringS', s:spaceGreen, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:spaceGold, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:spaceGold, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:spaceGold, s:none, 'none')
call <sid>hi('javascriptBraces', s:spaceWhite, s:none, 'none')
call <sid>hi('javascriptBrackets', s:spaceWhite, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:spaceGold, s:none, 'none')
call <sid>hi('javascriptClassName', s:spaceBlue, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:spaceBlue, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptDefault', s:spaceGold, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:spaceGray4, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:spaceGray4, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:spaceGray4, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:spaceGray4, s:none, 'none')
call <sid>hi('javascriptDocTags', s:spaceGray4, s:none, 'none')
call <sid>hi('javascriptEndColons', s:spaceWhite, s:none, 'none')
call <sid>hi('javascriptExport', s:spaceViolet, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:spaceBlue, s:none, 'none')
call <sid>hi('javascriptImport', s:spaceViolet, s:none, 'none')
call <sid>hi('javascriptLabel', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:spaceViolet, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptOperator', s:spaceViolet, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:spaceSteel, s:none, 'none')
call <sid>hi('javascriptVariable', s:spaceWhite, s:none, 'none')
call <sid>hi('javascriptYield', s:spaceGold, s:none, 'none')
call <sid>hi('jsArrowFunction', s:spaceGold, s:none, 'none')
call <sid>hi('jsClassDefinition', s:spaceBlue, s:none, 'none')
call <sid>hi('jsClassKeyword', s:spaceGold, s:none, 'none')
call <sid>hi('jsDecorator', s:spaceGoo, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:spaceSteel, s:none, 'none')
call <sid>hi('jsExportDefault', s:spaceGold, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:spaceSteel, s:none, 'none')
call <sid>hi('jsFuncArgs', s:spaceSteel, s:none, 'none')
call <sid>hi('jsFuncCall', s:spaceBlue, s:none, 'none')
call <sid>hi('jsFunction', s:spaceGold, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:spaceOrange, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:spaceSteel, s:none, 'none')
call <sid>hi('jsNull', s:spaceGoo, s:none, 'none')
call <sid>hi('jsObjectBraces', s:spaceWhite, s:none, 'none')
call <sid>hi('jsObjectKey', s:spaceSteel, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:spaceGreen, s:none, 'none')
call <sid>hi('jsRegexpString', s:spaceGoo, s:none, 'none')
call <sid>hi('jsReturn', s:spaceViolet, s:none, 'none')
call <sid>hi('jsSpecial', s:spaceGoo, s:none, 'none')
call <sid>hi('jsSuper', s:spaceOrange, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:spaceSteel, s:none, 'none')
call <sid>hi('jsTemplateString', s:spaceGreen, s:none, 'none')
call <sid>hi('jsThis', s:spaceBlue, s:none, 'none')
call <sid>hi('jsVariableDef', s:spaceWhite, s:none, 'none')

" JSX
call <sid>hi('jsxAttrib', s:spaceViolet, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:spaceWhite, s:none, 'none')
call <sid>hi('jsxCloseString', s:spaceBlue2, s:none, 'none')
call <sid>hi('jsxCloseTag', s:spaceSteel, s:none, 'none')
call <sid>hi('jsxString', s:spaceGreen, s:none, 'none')
call <sid>hi('jsxTag', s:spaceSteel, s:none, 'none')
call <sid>hi('jsxTagName', s:spaceBlue2, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:spaceBlue, s:none, 'none')
call <sid>hi('rubyClass', s:spaceViolet, s:none, 'none')
call <sid>hi('rubyClassVariable', s:spaceWhite, s:none, 'none')
call <sid>hi('rubyConstant', s:spaceOrange, s:none, 'none')
call <sid>hi('rubyControl', s:spaceViolet, s:none, 'none')
call <sid>hi('rubyEscape', s:spaceGoo, s:none, 'none')
call <sid>hi('rubyException', s:spaceViolet, s:none, 'none')
call <sid>hi('rubyFunction', s:spaceBlue, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:spaceWhite, s:none, 'none')
call <sid>hi('rubyInclude', s:spaceViolet, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:spaceWhite, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:spaceViolet, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:spaceWhite, s:none, 'none')
call <sid>hi('rubyRegexp', s:spaceGreen, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:spaceGreen, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:spaceGreen, s:none, 'none')
call <sid>hi('rubySymbol', s:spaceGoo, s:none, 'none')

" Ruby (Embedded)
call <sid>hi('erubyComment', s:spaceGray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:spaceOrange, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:spaceOrange, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:spaceOrange, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:spaceOrange, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:spaceOrange, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:spaceOrange, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:spaceViolet, s:none, 'none')
call <sid>hi('xmlEndTag', s:spaceSteel, s:none, 'none')
call <sid>hi('xmlTag', s:spaceSteel, s:none, 'none')
call <sid>hi('xmlTagName', s:spaceBlue2, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:spaceWhite, s:none, 'none')
call <sid>hi('yamlAnchor', s:spaceWhite, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:spaceGreen, s:none, 'none')
call <sid>hi('yamlKey', s:spaceGold, s:none, 'none')



" ------------
" Plugins
" ------------

" todo.txt
call <sid>hi('TodoContext', s:spaceOrange, s:none, 'none')
call <sid>hi('TodoDate', s:spaceBlue, s:none, 'none')
call <sid>hi('TodoDone', s:spaceGray3, s:none, 'none')
call <sid>hi('TodoPriorityA', s:spaceGoo, s:none, 'none')
call <sid>hi('TodoPriorityB', s:spaceGreen, s:none, 'none')
call <sid>hi('TodoPriorityC', s:spaceGold, s:none, 'none')
call <sid>hi('TodoProject', s:spaceViolet, s:none, 'none')

" Buftabline
call <sid>hi('BufTabLineActive', s:spaceSteel, s:spaceGray2, 'none')
call <sid>hi('BufTabLineCurrent', s:spaceBlack, s:spaceGray4, 'none')
call <sid>hi('BufTabLineFill', s:spaceBlack, s:spaceBlack, 'none')
call <sid>hi('BufTabLineHidden', s:spaceGray3, s:spaceBlack2, 'none')

