"
"
"        ┌─┐┌─┐┌─┐┌┐ ┌─┐┬  ┬
"        ├┤ │ ││ ┬├┴┐├┤ │  │
"        └  └─┘└─┘└─┘└─┘┴─┘┴─┘
"
"
" by Jared Gorski
" https://github.com/jaredgorski/fogbell

scriptencoding utf-8

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="fogbell_light"

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
let s:voidBlack = {'gui': '#121212', 'cterm256': '233'}
let s:voidBlack2 = {'gui': '#262626', 'cterm256': '235'}
let s:voidGray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:voidGray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:voidGray3 = {'gui': '#6B6B6B', 'cterm256': '242'}
let s:voidGray4 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:voidSteel = {'gui': '#D0D0D0', 'cterm256': '252'}
let s:voidBlue = {'gui': '#699B9B', 'cterm256': '109'}
let s:voidGreen = {'gui': '#569F7A', 'cterm256': '72'}
let s:voidGold = {'gui': '#8E700B', 'cterm256': '136'}
let s:voidRed = {'gui': '#821A1A', 'cterm256': '1'}
let s:voidRed2 = {'gui': '#FF0000', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:voidGray1, 'none')
call <sid>hi('Cursor', s:voidSteel, s:voidBlack2, 'none')
call <sid>hi('CursorColumn', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLine', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLineNr', s:voidBlack, s:voidGray1, 'none')
call <sid>hi('Directory', s:voidBlack, s:none, 'none')
call <sid>hi('FoldColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('Folded', s:voidGray3, s:none, 'none')
call <sid>hi('IncSearch', s:voidSteel, s:voidGold, 'none')
call <sid>hi('LineNr', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('MatchParen', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('Normal', s:voidBlack, s:voidSteel, 'none')
call <sid>hi('Pmenu', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('PmenuSel', s:voidSteel, s:voidGray2, 'none')
call <sid>hi('Search', s:voidSteel, s:voidGold, 'none')
call <sid>hi('SignColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('StatusLine', s:voidSteel, s:voidBlack, 'none')
call <sid>hi('StatusLineNC', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('VertSplit', s:voidBlack, s:voidGray3, 'none')
call <sid>hi('Visual', s:none, s:voidGray2, 'none')

" General
call <sid>hi('Boolean', s:voidBlack, s:none, 'none')
call <sid>hi('Character', s:voidBlack, s:none, 'none')
call <sid>hi('Comment', s:voidGray3, s:none, 'none')
call <sid>hi('Conditional', s:voidBlack, s:none, 'none')
call <sid>hi('Constant', s:voidBlack, s:none, 'none')
call <sid>hi('Define', s:voidBlack, s:none, 'none')
call <sid>hi('DiffAdd', s:voidSteel, s:voidGreen, 'none')
call <sid>hi('DiffChange', s:voidSteel, s:voidGold, 'none')
call <sid>hi('DiffDelete', s:voidBlack, s:voidRed, 'none')
call <sid>hi('DiffText', s:voidGray1, s:voidBlue, 'none')
call <sid>hi('ErrorMsg', s:voidBlack, s:voidRed, 'none')
call <sid>hi('Float', s:voidBlack, s:none, 'none')
call <sid>hi('Function', s:voidBlack, s:none, 'none')
call <sid>hi('Identifier', s:voidBlack, s:none, 'none')
call <sid>hi('Keyword', s:voidBlack, s:none, 'none')
call <sid>hi('Label', s:voidBlack, s:none, 'none')
call <sid>hi('NonText', s:voidGray1, s:none, 'none')
call <sid>hi('Number', s:voidBlack, s:none, 'none')
call <sid>hi('Operator', s:voidBlack, s:none, 'none')
call <sid>hi('PreProc', s:voidBlack, s:none, 'none')
call <sid>hi('Special', s:voidBlack, s:none, 'none')
call <sid>hi('SpecialKey', s:voidBlack, s:none, 'none')
call <sid>hi('SpellBad', s:voidRed2, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:voidBlack, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:voidBlack, s:none, 'undercurl')
call <sid>hi('Statement', s:voidBlack, s:none, 'none')
call <sid>hi('StorageClass', s:voidBlack, s:none, 'none')
call <sid>hi('String', s:voidBlack, s:none, 'none')
call <sid>hi('Tag', s:voidBlack, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:voidGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:voidBlack, s:voidRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:voidSteel, s:voidGreen, 'none')
  call <sid>hi('DiffChange', s:voidSteel, s:voidGold, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:voidRed, 'none')
  call <sid>hi('DiffText', s:voidGray1, s:voidBlue, 'none')
else
  call <sid>hi('DiffAdd', s:voidGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:voidGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:none, 'none')
  call <sid>hi('DiffText', s:voidBlack, s:voidBlue, 'none')
endif

" ------------
" Languages
" ------------

" C
call <sid>hi('cConstant', s:voidBlack, s:none, 'none')
call <sid>hi('cFormat', s:voidBlack, s:none, 'none')
call <sid>hi('cMulti', s:voidBlack, s:none, 'none')
call <sid>hi('cNumbers', s:voidBlack, s:none, 'none')
call <sid>hi('cOperator', s:voidBlack, s:none, 'none')
call <sid>hi('cSpecial', s:voidBlack, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:voidBlack, s:none, 'none')
call <sid>hi('cStatement', s:voidBlack, s:none, 'none')
call <sid>hi('cStorageClass', s:voidBlack, s:none, 'none')
call <sid>hi('cString', s:voidBlack, s:none, 'none')
call <sid>hi('cStructure', s:voidBlack, s:none, 'none')
call <sid>hi('cType', s:voidBlack, s:none, 'none')

" C++
call <sid>hi('cppConstant', s:voidBlack, s:none, 'none')
call <sid>hi('cppFormat', s:voidBlack, s:none, 'none')
call <sid>hi('cppMulti', s:voidBlack, s:none, 'none')
call <sid>hi('cppNumbers', s:voidBlack, s:none, 'none')
call <sid>hi('cppOperator', s:voidBlack, s:none, 'none')
call <sid>hi('cppSpecial', s:voidBlack, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:voidBlack, s:none, 'none')
call <sid>hi('cppStatement', s:voidBlack, s:none, 'none')
call <sid>hi('cppStorageClass', s:voidBlack, s:none, 'none')
call <sid>hi('cppString', s:voidBlack, s:none, 'none')
call <sid>hi('cppStructure', s:voidBlack, s:none, 'none')
call <sid>hi('cppType', s:voidBlack, s:none, 'none')

" CSS
call <sid>hi('cssAttr', s:voidBlack, s:none, 'none')
call <sid>hi('cssAttrRegion', s:voidBlack, s:none, 'none')
call <sid>hi('cssBraces', s:voidBlack, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:voidBlack, s:none, 'none')
call <sid>hi('cssClassName', s:voidBlack, s:none, 'none')
call <sid>hi('cssClassNameDot', s:voidBlack, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:voidBlack, s:none, 'none')
call <sid>hi('cssColor', s:voidBlack, s:none, 'none')
call <sid>hi('cssCommonAttr', s:voidBlack, s:none, 'none')
call <sid>hi('cssCustomProperty', s:voidBlack, s:none, 'none')
call <sid>hi('cssDefinition', s:voidBlack, s:none, 'none')
call <sid>hi('cssFunction', s:voidBlack, s:none, 'none')
call <sid>hi('cssFunctionName', s:voidBlack, s:none, 'none')
call <sid>hi('cssIdentifier', s:voidBlack, s:none, 'none')
call <sid>hi('cssImportant', s:voidBlack, s:none, 'none')
call <sid>hi('cssInclude', s:voidBlack, s:none, 'none')
call <sid>hi('cssMedia', s:voidBlack, s:none, 'none')
call <sid>hi('cssMediaBlock', s:voidBlack, s:none, 'none')
call <sid>hi('cssProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssTextProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssAnimationProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssUIProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssTransformProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssTransitionProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssPrintProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssPositioningProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssBoxProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssMarginProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssListProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssTableProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssFontProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssPaddingProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssDimensionProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssRenderProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssColorProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:voidBlack, s:none, 'none')
call <sid>hi('cssPropDefinition', s:voidBlack, s:none, 'none')
call <sid>hi('cssPseudoClass', s:voidBlack, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:voidBlack, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:voidBlack, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:voidBlack, s:none, 'none')
call <sid>hi('cssTagName', s:voidBlack, s:none, 'none')
call <sid>hi('cssURL', s:voidBlack, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:voidBlack, s:none, 'none')
call <sid>hi('cssUnits', s:voidBlack, s:none, 'none')
call <sid>hi('cssValueLength', s:voidBlack, s:none, 'none')
call <sid>hi('cssValueNumber', s:voidBlack, s:none, 'none')
call <sid>hi('cssValueKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('cssVendor', s:voidBlack, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:voidBlack, s:none, 'none')
call <sid>hi('htmlEndTag', s:voidBlack, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:voidBlack, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:voidBlack, s:none, 'none')
call <sid>hi('htmlTag', s:voidBlack, s:none, 'none')
call <sid>hi('htmlTagName', s:voidBlack, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptFunction', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptMember', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptNull', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptNumber', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptNumber', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptParens', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:voidBlack, s:none, 'none')
call <sid>hi('javaScriptStringS', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptBraces', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptBrackets', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptClassName', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDefault', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocTags', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptEndColons', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptExport', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptImport', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptLabel', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptOperator', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptVariable', s:voidBlack, s:none, 'none')
call <sid>hi('javascriptYield', s:voidBlack, s:none, 'none')
call <sid>hi('jsArrowFunction', s:voidBlack, s:none, 'none')
call <sid>hi('jsClassDefinition', s:voidBlack, s:none, 'none')
call <sid>hi('jsClassKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('jsDecorator', s:voidBlack, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:voidBlack, s:none, 'none')
call <sid>hi('jsExportDefault', s:voidBlack, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('jsFuncArgs', s:voidBlack, s:none, 'none')
call <sid>hi('jsFuncCall', s:voidBlack, s:none, 'none')
call <sid>hi('jsFunction', s:voidBlack, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:voidBlack, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:voidBlack, s:none, 'none')
call <sid>hi('jsNull', s:voidBlack, s:none, 'none')
call <sid>hi('jsObjectBraces', s:voidBlack, s:none, 'none')
call <sid>hi('jsObjectKey', s:voidBlack, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:voidBlack, s:none, 'none')
call <sid>hi('jsRegexpString', s:voidBlack, s:none, 'none')
call <sid>hi('jsReturn', s:voidBlack, s:none, 'none')
call <sid>hi('jsSpecial', s:voidBlack, s:none, 'none')
call <sid>hi('jsSuper', s:voidBlack, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:voidBlack, s:none, 'none')
call <sid>hi('jsTemplateString', s:voidBlack, s:none, 'none')
call <sid>hi('jsThis', s:voidBlack, s:none, 'none')
call <sid>hi('jsVariableDef', s:voidBlack, s:none, 'none')

" JSX
call <sid>hi('jsxAttrib', s:voidBlack, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:voidBlack, s:none, 'none')
call <sid>hi('jsxCloseString', s:voidBlack, s:none, 'none')
call <sid>hi('jsxCloseTag', s:voidBlack, s:none, 'none')
call <sid>hi('jsxString', s:voidBlack, s:none, 'none')
call <sid>hi('jsxTag', s:voidBlack, s:none, 'none')
call <sid>hi('jsxTagName', s:voidBlack, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:voidBlack, s:none, 'none')
call <sid>hi('rubyClass', s:voidBlack, s:none, 'none')
call <sid>hi('rubyClassVariable', s:voidBlack, s:none, 'none')
call <sid>hi('rubyConstant', s:voidBlack, s:none, 'none')
call <sid>hi('rubyControl', s:voidBlack, s:none, 'none')
call <sid>hi('rubyEscape', s:voidBlack, s:none, 'none')
call <sid>hi('rubyException', s:voidBlack, s:none, 'none')
call <sid>hi('rubyFunction', s:voidBlack, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:voidBlack, s:none, 'none')
call <sid>hi('rubyInclude', s:voidBlack, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:voidBlack, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:voidBlack, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRegexp', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:voidBlack, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:voidBlack, s:none, 'none')
call <sid>hi('rubySymbol', s:voidBlack, s:none, 'none')

" Ruby (Embedded)
call <sid>hi('erubyComment', s:voidGray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:voidBlack, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:voidBlack, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:voidBlack, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:voidBlack, s:none, 'none')
call <sid>hi('xmlEndTag', s:voidBlack, s:none, 'none')
call <sid>hi('xmlTag', s:voidBlack, s:none, 'none')
call <sid>hi('xmlTagName', s:voidBlack, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:voidBlack, s:none, 'none')
call <sid>hi('yamlAnchor', s:voidBlack, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:voidBlack, s:none, 'none')
call <sid>hi('yamlKey', s:voidBlack, s:none, 'none')



" ------------
" Plugins
" ------------

" todo.txt
call <sid>hi('TodoContext', s:voidBlack, s:none, 'none')
call <sid>hi('TodoDate', s:voidBlack, s:none, 'none')
call <sid>hi('TodoDone', s:voidGray3, s:none, 'none')
call <sid>hi('TodoPriorityA', s:voidBlack, s:none, 'none')
call <sid>hi('TodoPriorityB', s:voidBlack, s:none, 'none')
call <sid>hi('TodoPriorityC', s:voidBlack, s:none, 'none')
call <sid>hi('TodoProject', s:voidBlack, s:none, 'none')

" Buftabline
call <sid>hi('BufTabLineActive', s:voidBlack, s:voidGray3, 'none')
call <sid>hi('BufTabLineCurrent', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('BufTabLineFill', s:voidBlack, s:voidSteel, 'none')
call <sid>hi('BufTabLineHidden', s:voidGray3, s:voidBlack2, 'none')

