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

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="fogbell_lite"

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
let s:voidBlack = {'gui': '#1C1C1C', 'cterm256': '234'}
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
call <sid>hi('Cursor', s:voidBlack, s:voidSteel, 'none')
call <sid>hi('CursorColumn', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLine', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLineNr', s:voidSteel, s:voidGray1, 'none')
call <sid>hi('Directory', s:voidSteel, s:voidBlack, 'none')
call <sid>hi('FoldColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('Folded', s:voidGray3, s:none, 'none')
call <sid>hi('IncSearch', s:voidBlack, s:voidGold, 'none')
call <sid>hi('LineNr', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('MatchParen', s:voidSteel, s:voidGray3, 'none')
call <sid>hi('Normal', s:voidSteel, s:voidBlack, 'none')
call <sid>hi('Pmenu', s:none, s:voidBlack2, 'none')
call <sid>hi('PmenuSel', s:none, s:voidGray2, 'none')
call <sid>hi('Search', s:voidBlack, s:voidGold, 'none')
call <sid>hi('SignColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('StatusLine', s:voidBlack, s:voidSteel, 'none')
call <sid>hi('StatusLineNC', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('VertSplit', s:voidBlack, s:voidGray3, 'none')
call <sid>hi('Visual', s:none, s:voidGray2, 'none')

" General
call <sid>hi('Boolean', s:voidSteel, s:none, 'none')
call <sid>hi('Character', s:voidSteel, s:none, 'none')
call <sid>hi('Comment', s:voidGray3, s:none, 'none')
call <sid>hi('Conditional', s:voidSteel, s:none, 'none')
call <sid>hi('Constant', s:voidSteel, s:none, 'none')
call <sid>hi('Define', s:voidSteel, s:none, 'none')
call <sid>hi('DiffAdd', s:voidBlack, s:voidGreen, 'none')
call <sid>hi('DiffChange', s:voidBlack, s:voidGold, 'none')
call <sid>hi('DiffDelete', s:voidSteel, s:voidRed, 'none')
call <sid>hi('DiffText', s:voidGray1, s:voidBlue, 'none')
call <sid>hi('ErrorMsg', s:voidSteel, s:voidRed, 'none')
call <sid>hi('Float', s:voidSteel, s:none, 'none')
call <sid>hi('Function', s:voidSteel, s:none, 'none')
call <sid>hi('Identifier', s:voidSteel, s:none, 'none')
call <sid>hi('Keyword', s:voidSteel, s:none, 'none')
call <sid>hi('Label', s:voidSteel, s:none, 'none')
call <sid>hi('NonText', s:voidGray3, s:none, 'none')
call <sid>hi('Number', s:voidSteel, s:none, 'none')
call <sid>hi('Operator', s:voidSteel, s:none, 'none')
call <sid>hi('PreProc', s:voidSteel, s:none, 'none')
call <sid>hi('Special', s:voidSteel, s:none, 'none')
call <sid>hi('SpecialKey', s:voidSteel, s:none, 'none')
call <sid>hi('SpellBad', s:voidRed2, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:voidSteel, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:voidSteel, s:none, 'undercurl')
call <sid>hi('Statement', s:voidSteel, s:none, 'none')
call <sid>hi('StorageClass', s:voidSteel, s:none, 'none')
call <sid>hi('String', s:voidSteel, s:none, 'none')
call <sid>hi('Tag', s:voidSteel, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:voidGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:voidSteel, s:voidRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:voidBlack, s:voidGreen, 'none')
  call <sid>hi('DiffChange', s:voidBlack, s:voidGold, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:voidRed, 'none')
  call <sid>hi('DiffText', s:voidGray1, s:voidBlue, 'none')
else
  call <sid>hi('DiffAdd', s:voidGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:voidGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:none, 'none')
  call <sid>hi('DiffText', s:voidSteel, s:voidBlue, 'none')
endif

" ------------
" Languages
" ------------

" C
call <sid>hi('cConstant', s:voidSteel, s:none, 'none')
call <sid>hi('cFormat', s:voidSteel, s:none, 'none')
call <sid>hi('cMulti', s:voidSteel, s:none, 'none')
call <sid>hi('cNumbers', s:voidSteel, s:none, 'none')
call <sid>hi('cOperator', s:voidSteel, s:none, 'none')
call <sid>hi('cSpecial', s:voidSteel, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:voidSteel, s:none, 'none')
call <sid>hi('cStatement', s:voidSteel, s:none, 'none')
call <sid>hi('cStorageClass', s:voidSteel, s:none, 'none')
call <sid>hi('cString', s:voidSteel, s:none, 'none')
call <sid>hi('cStructure', s:voidSteel, s:none, 'none')
call <sid>hi('cType', s:voidSteel, s:none, 'none')

" C++
call <sid>hi('cppConstant', s:voidSteel, s:none, 'none')
call <sid>hi('cppFormat', s:voidSteel, s:none, 'none')
call <sid>hi('cppMulti', s:voidSteel, s:none, 'none')
call <sid>hi('cppNumbers', s:voidSteel, s:none, 'none')
call <sid>hi('cppOperator', s:voidSteel, s:none, 'none')
call <sid>hi('cppSpecial', s:voidSteel, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:voidSteel, s:none, 'none')
call <sid>hi('cppStatement', s:voidSteel, s:none, 'none')
call <sid>hi('cppStorageClass', s:voidSteel, s:none, 'none')
call <sid>hi('cppString', s:voidSteel, s:none, 'none')
call <sid>hi('cppStructure', s:voidSteel, s:none, 'none')
call <sid>hi('cppType', s:voidSteel, s:none, 'none')

" CSS
call <sid>hi('cssAttr', s:voidSteel, s:none, 'none')
call <sid>hi('cssAttrRegion', s:voidSteel, s:none, 'none')
call <sid>hi('cssBraces', s:voidSteel, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:voidSteel, s:none, 'none')
call <sid>hi('cssClassName', s:voidSteel, s:none, 'none')
call <sid>hi('cssClassNameDot', s:voidSteel, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:voidSteel, s:none, 'none')
call <sid>hi('cssColor', s:voidSteel, s:none, 'none')
call <sid>hi('cssCommonAttr', s:voidSteel, s:none, 'none')
call <sid>hi('cssCustomProperty', s:voidSteel, s:none, 'none')
call <sid>hi('cssDefinition', s:voidSteel, s:none, 'none')
call <sid>hi('cssFunction', s:voidSteel, s:none, 'none')
call <sid>hi('cssFunctionName', s:voidSteel, s:none, 'none')
call <sid>hi('cssIdentifier', s:voidSteel, s:none, 'none')
call <sid>hi('cssImportant', s:voidSteel, s:none, 'none')
call <sid>hi('cssInclude', s:voidSteel, s:none, 'none')
call <sid>hi('cssMedia', s:voidSteel, s:none, 'none')
call <sid>hi('cssMediaBlock', s:voidSteel, s:none, 'none')
call <sid>hi('cssProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssTextProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssAnimationProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssUIProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssTransformProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssTransitionProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssPrintProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssPositioningProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssBoxProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssMarginProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssListProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssTableProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssFontProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssPaddingProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssDimensionProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssRenderProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssColorProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:voidSteel, s:none, 'none')
call <sid>hi('cssPropDefinition', s:voidSteel, s:none, 'none')
call <sid>hi('cssPseudoClass', s:voidSteel, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:voidSteel, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:voidSteel, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:voidSteel, s:none, 'none')
call <sid>hi('cssTagName', s:voidSteel, s:none, 'none')
call <sid>hi('cssURL', s:voidSteel, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:voidSteel, s:none, 'none')
call <sid>hi('cssUnits', s:voidSteel, s:none, 'none')
call <sid>hi('cssValueLength', s:voidSteel, s:none, 'none')
call <sid>hi('cssValueNumber', s:voidSteel, s:none, 'none')
call <sid>hi('cssValueKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('cssVendor', s:voidSteel, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:voidSteel, s:none, 'none')
call <sid>hi('htmlEndTag', s:voidSteel, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:voidSteel, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:voidSteel, s:none, 'none')
call <sid>hi('htmlTag', s:voidSteel, s:none, 'none')
call <sid>hi('htmlTagName', s:voidSteel, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptFunction', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptMember', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptNull', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptNumber', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptNumber', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptParens', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:voidSteel, s:none, 'none')
call <sid>hi('javaScriptStringS', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptBraces', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptBrackets', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptClassName', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDefault', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptDocTags', s:voidGray4, s:none, 'none')
call <sid>hi('javascriptEndColons', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptExport', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptImport', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptLabel', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptOperator', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptVariable', s:voidSteel, s:none, 'none')
call <sid>hi('javascriptYield', s:voidSteel, s:none, 'none')
call <sid>hi('jsArrowFunction', s:voidSteel, s:none, 'none')
call <sid>hi('jsClassDefinition', s:voidSteel, s:none, 'none')
call <sid>hi('jsClassKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('jsDecorator', s:voidSteel, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:voidSteel, s:none, 'none')
call <sid>hi('jsExportDefault', s:voidSteel, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('jsFuncArgs', s:voidSteel, s:none, 'none')
call <sid>hi('jsFuncCall', s:voidSteel, s:none, 'none')
call <sid>hi('jsFunction', s:voidSteel, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:voidSteel, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:voidSteel, s:none, 'none')
call <sid>hi('jsNull', s:voidSteel, s:none, 'none')
call <sid>hi('jsObjectBraces', s:voidSteel, s:none, 'none')
call <sid>hi('jsObjectKey', s:voidSteel, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:voidSteel, s:none, 'none')
call <sid>hi('jsRegexpString', s:voidSteel, s:none, 'none')
call <sid>hi('jsReturn', s:voidSteel, s:none, 'none')
call <sid>hi('jsSpecial', s:voidSteel, s:none, 'none')
call <sid>hi('jsSuper', s:voidSteel, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:voidSteel, s:none, 'none')
call <sid>hi('jsTemplateString', s:voidSteel, s:none, 'none')
call <sid>hi('jsThis', s:voidSteel, s:none, 'none')
call <sid>hi('jsVariableDef', s:voidSteel, s:none, 'none')

" JSX
call <sid>hi('jsxAttrib', s:voidSteel, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:voidSteel, s:none, 'none')
call <sid>hi('jsxCloseString', s:voidSteel, s:none, 'none')
call <sid>hi('jsxCloseTag', s:voidSteel, s:none, 'none')
call <sid>hi('jsxString', s:voidSteel, s:none, 'none')
call <sid>hi('jsxTag', s:voidSteel, s:none, 'none')
call <sid>hi('jsxTagName', s:voidSteel, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:voidSteel, s:none, 'none')
call <sid>hi('rubyClass', s:voidSteel, s:none, 'none')
call <sid>hi('rubyClassVariable', s:voidSteel, s:none, 'none')
call <sid>hi('rubyConstant', s:voidSteel, s:none, 'none')
call <sid>hi('rubyControl', s:voidSteel, s:none, 'none')
call <sid>hi('rubyEscape', s:voidSteel, s:none, 'none')
call <sid>hi('rubyException', s:voidSteel, s:none, 'none')
call <sid>hi('rubyFunction', s:voidSteel, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:voidSteel, s:none, 'none')
call <sid>hi('rubyInclude', s:voidSteel, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:voidSteel, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:voidSteel, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRegexp', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:voidSteel, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:voidSteel, s:none, 'none')
call <sid>hi('rubySymbol', s:voidSteel, s:none, 'none')

" Ruby (Embedded)
call <sid>hi('erubyComment', s:voidGray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:voidSteel, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:voidSteel, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:voidSteel, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:voidSteel, s:none, 'none')
call <sid>hi('xmlEndTag', s:voidSteel, s:none, 'none')
call <sid>hi('xmlTag', s:voidSteel, s:none, 'none')
call <sid>hi('xmlTagName', s:voidSteel, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:voidSteel, s:none, 'none')
call <sid>hi('yamlAnchor', s:voidSteel, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:voidSteel, s:none, 'none')
call <sid>hi('yamlKey', s:voidSteel, s:none, 'none')



" ------------
" Plugins
" ------------

" todo.txt
call <sid>hi('TodoContext', s:voidSteel, s:none, 'none')
call <sid>hi('TodoDate', s:voidSteel, s:none, 'none')
call <sid>hi('TodoDone', s:voidGray3, s:none, 'none')
call <sid>hi('TodoPriorityA', s:voidSteel, s:none, 'none')
call <sid>hi('TodoPriorityB', s:voidSteel, s:none, 'none')
call <sid>hi('TodoPriorityC', s:voidSteel, s:none, 'none')
call <sid>hi('TodoProject', s:voidSteel, s:none, 'none')

" Buftabline
call <sid>hi('BufTabLineActive', s:voidSteel, s:voidGray2, 'none')
call <sid>hi('BufTabLineCurrent', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('BufTabLineFill', s:voidBlack, s:voidBlack, 'none')
call <sid>hi('BufTabLineHidden', s:voidGray3, s:voidBlack2, 'none')

