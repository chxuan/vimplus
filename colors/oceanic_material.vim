" ===============================================================
" Theme: Oceanice_Material
" Author: Glepnir
" License: MIT
" Source: http://github.com/hardcoreplayers/oceanic_material
" ===============================================================

" Initialization: {{{
"
hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "oceanic_material"
let s:oceanic_material_version = '0.2.2'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

let s:oceanic_material_transparent_background = get(g:,'oceanic_material_transparent_background',0)

let s:oceanic_material_background = get(g:,'oceanic_material_background','medium')

let s:oceanic_material_allow_bold = get(g:,'oceanic_material_allow_bold', 0)

let s:oceanic_material_allow_italic = get(g:,'oceanic_material_allow_italic',0)

let s:oceanic_material_allow_underline = get(g:,'oceanic_material_allow_underline',0)

let s:oceanic_material_allow_reverse = get(g:,'oceanic_material_allow_reverse',0)

let s:oceanic_material_allow_undercurl = get(g:,'oceanic_material_allow_undercurl',0)

let s:bold = ''
if s:oceanic_material_allow_bold == 1
  let s:bold = ' cterm=bold gui=bold '
endif

let s:italic = ''
if s:oceanic_material_allow_italic == 1
  let s:italic = ' cterm=italic gui=italic '
endif

let s:underline = ''
if s:oceanic_material_allow_underline == 1
  let s:underline = ' cterm=underline gui=underline '
endif

let s:reverse = ''
if s:oceanic_material_allow_reverse == 1
  let s:reverse = ' cterm=reverse gui=reverse '
endif

let s:undercurl = ''
if s:oceanic_material_allow_undercurl == 1
  let s:undercurl = ' cterm=undercurl gui=undercurl '
endif

let s:background = {
      \'medium': ['#282C34', '235'],
      \'ocean' : ['#1b2b34', '235'],
      \'deep': ['#212121', 'NONE'],
      \'darker': ['#1d1f21', '234'],
      \}

let s:colors = {
      \ 'bg0':              s:background[s:oceanic_material_background],
      \ 'bg1':              ['#343d46',   '237'],
      \ 'bg2':              ['#282828',   '235'],
      \ 'bg3':              ['#3c3836',   '237'],
      \ 'bg4':              ['#3c3836',   '237'],
      \ 'bg5':              ['#504945',   '239'],
      \ 'fg0':              ['#d4be98',   '223'],
      \ 'fg1':              ['#ddc7a1',   '223'],
      \ 'fg3':              ['#4f5b66',   '17'],
      \ 'red':              ['#EC5f67',   '203'],
      \ 'magenta':          ['#d16d9e',   '205'],
      \ 'orange':           ['#e78a4e',   '208'],
      \ 'yellow':           ['#d8a657',   '214'],
      \ 'green':            ['#a7c777',   '111'],
      \ 'aqua':             ['#62b3b2',   '73'],
      \ 'blue':             ['#6699cc',   '68'],
      \ 'purple':           ['#c594c5',   '176'],
      \ 'black':            ['#000000',    '0'],
      \ 'bg_red':           ['#ea6962',   '167'],
      \ 'grey0':            ['#7c6f64',   '243'],
      \ 'grey1':            ['#928374',   '245'],
      \ 'grey2':            ['#a89984',   '246'],
      \ 'operator_base05':  ['#c0c5ce',   '251'],
      \ 'none':             ['NONE',      'NONE']
  \ }

function! g:OceanicMaterialPalette()
  return copy(s:colors)
endfunction

function! g:OceanicMaterial()
  echo s:oceanic_material_version
endfunction

function! s:create_color_variables() abort
  for key in keys(s:colors)
    let palette = get(s:colors,key)
    let {'s:fg_' . key} = ' guifg='.palette[0].' ctermfg='.palette[1].' '
    let {'s:bg_' . key} = ' guibg='.palette[0].' ctermbg='.palette[1]. ' '
  endfor
  let s:sp_red = ' guisp='.s:colors.red[0] . ' '
  let s:sp_blue = ' guisp='.s:colors.blue[0] . ' '
  let s:sp_aqua = ' guisp='.s:colors.aqua[0] . ' '
  let s:sp_yellow = ' guisp='.s:colors.yellow[0] . ' '
  let s:sp_purple = ' guisp='.s:colors.purple[0] . ' '
endfunction

function! s:set_color_variables() abort
  call s:create_color_variables()
  let s:terminal = {
        \ 'black':    s:colors.bg0,
        \ 'red':      s:colors.red,
        \ 'yellow':   s:colors.yellow,
        \ 'green':    s:colors.green,
        \ 'cyan':     s:colors.aqua,
        \ 'blue':     s:colors.blue,
        \ 'purple':   s:colors.purple,
        \ 'white':    s:colors.fg0,
        \ 'light_grey': s:colors.bg5,
        \ 'dark_grey': s:colors.grey0,
        \ }
  let g:terminal_color_0 = s:terminal.black[0]
  let g:terminal_color_1 = s:terminal.red[0]
  let g:terminal_color_2 = s:terminal.green[0]
  let g:terminal_color_3 = s:terminal.yellow[0]
  let g:terminal_color_4 = s:terminal.blue[0]
  let g:terminal_color_5 = s:terminal.purple[0]
  let g:terminal_color_6 = s:terminal.cyan[0]
  let g:terminal_color_7 = s:terminal.light_grey[0]
  let g:terminal_color_8 = s:terminal.dark_grey[0]
  let g:terminal_color_9 = s:terminal.red[0]
  let g:terminal_color_10 = s:terminal.green[0]
  let g:terminal_color_11 = s:terminal.yellow[0]
  let g:terminal_color_12 = s:terminal.blue[0]
  let g:terminal_color_13 = s:terminal.purple[0]
  let g:terminal_color_14 = s:terminal.cyan[0]
  let g:terminal_color_15 = s:terminal.white[0]
endfunction

" Oceanic Material Transparent BackGround
function! s:apply_syntax_highlightings()
  if s:oceanic_material_transparent_background
    exec 'hi Normal' . s:fg_fg0 . s:bg_none
    exec 'hi Terminal' . s:fg_fg0 . s:bg_none
    exec 'hi FoldColumn' . s:fg_grey0 . s:bg_none
    exec 'hi SignColumn' . s:fg_fg0 . s:bg_none
    exec 'hi ToolbarLine' . s:fg_fg0 . s:bg_none
    exec 'hi VertSplit' . s:fg_black . s:bg_none . 'gui=NONE cterm=NONE'
  else
    exec 'hi Normal' . s:fg_fg0 . s:bg_bg0
    exec 'hi Terminal' . s:fg_fg0 . s:bg_bg0
    exec 'hi ToolbarLine' . s:fg_fg1 . s:bg_bg3
    exec 'hi SignColumn' . s:fg_fg0 . s:bg_bg0
    exec 'hi FoldColumn' . s:fg_grey0 . s:bg_bg2
    exec 'hi VertSplit' . s:fg_bg0 . s:bg_black
  endif
  exec 'hi Folded' . s:fg_grey1 . s:bg_bg2
  exec 'hi EndOfBuffer' . s:fg_bg0 . s:bg_none
  exec 'hi IncSearch'. s:fg_bg1 . s:bg_orange .' cterm=NONE gui=NONE '
  exec 'hi Search'. s:fg_bg0 . s:bg_green
  exec 'hi ColorColumn'. s:fg_none . s:bg_bg1
  exec 'hi Conceal'. s:fg_grey1 . s:bg_none
  exec 'hi Cursor'. s:fg_none . s:bg_none . s:reverse
  exec 'hi vCursor'. s:fg_none . s:bg_none . s:reverse
  exec 'hi iCursor'. s:fg_none . s:bg_none . s:reverse
  exec 'hi lCursor'. s:fg_none . s:bg_none . s:reverse
  exec 'hi CursorIM'. s:fg_none . s:bg_none . s:reverse
  exec 'hi CursorColumn'. s:fg_none. s:fg_bg1
  exec 'hi CursorLine'. s:fg_none . s:bg_bg1
  exec 'hi LineNr'. s:fg_grey0
  exec 'hi CursorLineNr'. s:fg_fg1
  exec 'hi DiffAdd'. s:fg_black . s:bg_green
  exec 'hi DiffChange'. s:fg_black. s:bg_yellow
  exec 'hi DiffDelete'. s:fg_black. s:bg_red
  exec 'hi DiffText'. s:fg_black . s:bg_fg0
  exec 'hi Directory'. s:fg_bg5. s:bg_none
  exec 'hi ErrorMsg'. s:fg_red. s:bg_none. s:bold . s:underline
  exec 'hi WarningMsg'. s:fg_yellow. s:bg_none. s:bold
  exec 'hi ModeMsg'. s:fg_fg0. s:bg_none. s:bold
  exec 'hi MoreMsg'. s:fg_yellow. s:bg_none. s:bold
  exec 'hi MatchParen'. s:fg_none. s:bg_bg4
  exec 'hi NonText'. s:fg_bg5
  exec 'hi Whitespace'. s:fg_bg5
  exec 'hi SpecialKey'. s:fg_bg5
  exec 'hi Pmenu'. s:fg_fg1. s:bg_bg1
  exec 'hi PmenuSbar'. s:fg_none. s:bg_fg3
  exec 'hi PmenuSel'. s:fg_bg3. s:bg_blue
  exec 'hi PmenuThumb'. s:fg_none. s:bg_operator_base05
  exec 'hi WildMenu'. s:fg_bg3. s:bg_green
  exec 'hi Question'. s:fg_yellow
  exec 'hi NormalFloat' .s:fg_fg1 . s:bg_bg3
  " Tabline
  exec 'hi TabLineFill' . ' gui=NONE cterm=NONE'
  " Statusline
  exec 'hi StatusLine'. s:fg_fg1. s:bg_none .'gui=NONE'
  exec 'hi StatusLineNC'. s:fg_grey1 . s:bg_none .'cterm=NONE gui=NONE'
  " spell
  exec 'hi SpellBad'. s:fg_red. s:bg_none. s:undercurl. s:sp_red
  exec 'hi SpellCap'. s:fg_blue. s:bg_none. s:undercurl. s:sp_blue
  exec 'hi SpellLocal'. s:fg_aqua. s:bg_none. s:undercurl. s:sp_aqua
  exec 'hi SpellRare'. s:fg_purple. s:bg_none. s:undercurl. s:sp_purple

  exec 'hi Visual'. s:fg_black . s:bg_operator_base05 .s:reverse
  exec 'hi VisualNOS'. s:fg_black . s:bg_operator_base05 . s:reverse

  exec 'hi QuickFixLine'. s:fg_purple. s:bold
  exec 'hi Debug'. s:fg_orange
  exec 'hi debugPC'. s:fg_bg0. s:bg_green
  exec 'hi debugBreakpoint'. s:fg_bg0. s:bg_red
  exec 'hi ToolbarButton'. s:fg_bg0. s:bg_grey2

  " Syntax
  exec 'hi Boolean'. s:fg_orange
  exec 'hi Number'. s:fg_purple
  exec 'hi Float'. s:fg_purple
  exec 'hi PreProc'. s:fg_purple. s:italic
  exec 'hi PreCondit'. s:fg_purple. s:italic
  exec 'hi Include'. s:fg_purple. s:italic
  exec 'hi Define'. s:fg_purple. s:italic
  exec 'hi Conditional'. s:fg_purple  . s:italic
  exec 'hi Repeat'. s:fg_purple
  exec 'hi Keyword'. s:fg_red. s:italic
  exec 'hi Typedef'. s:fg_red. s:italic
  exec 'hi Exception'. s:fg_red. s:italic
  exec 'hi Statement'. s:fg_red. s:italic
  exec 'hi Error'. s:fg_red . s:bg_none
  exec 'hi StorageClass'. s:fg_orange
  exec 'hi Tag'. s:fg_orange
  exec 'hi Label'. s:fg_orange
  exec 'hi Structure'. s:fg_orange
  exec 'hi Operator'. s:fg_operator_base05
  exec 'hi Title'. s:fg_orange. s:bold
  exec 'hi Special'. s:fg_yellow
  exec 'hi SpecialChar'. s:fg_yellow
  exec 'hi Type'. s:fg_yellow
  exec 'hi Function'. s:fg_magenta. 'gui=bold'
  exec 'hi String'. s:fg_green
  exec 'hi Character'. s:fg_green
  exec 'hi Constant'. s:fg_aqua
  exec 'hi Macro'. s:fg_aqua
  exec 'hi Identifier'. s:fg_blue

  " Comment
  exec 'hi Comment'. s:fg_grey1. s:italic
  exec 'hi SpecialComment'. s:fg_grey1. s:italic
  exec 'hi Todo'. s:fg_purple. s:italic

  exec 'hi Delimiter'. s:fg_fg0
  exec 'hi Ignore'. s:fg_grey1
  exec 'hi Underlined'. s:fg_none. s:underline

  " Markdown Filetype:
  "===============================================================
  exec 'hi markdownH1'. s:fg_red. s:bold
  exec 'hi markdownH2'. s:fg_orange. s:bold
  exec 'hi markdownH3'. s:fg_yellow. s:bold
  exec 'hi markdownH4'. s:fg_green. s:bold
  exec 'hi markdownH5'. s:fg_blue. s:bold
  exec 'hi markdownH6'. s:fg_purple. s:bold
  exec 'hi markdownUrl'. s:fg_blue. s:underline
  exec 'hi markdownItalic'. s:fg_none. s:italic
  exec 'hi markdownBold'. s:fg_none. s:bold
  exec 'hi markdownItalicDelimiter'. s:fg_grey1. s:italic
  exec 'hi markdownCode' .s:fg_green
  exec 'hi markdownCodeBlock' .s:fg_aqua
  exec 'hi markdownCodeDelimiter' .s:fg_aqua
  exec 'hi markdownBlockquote'.s:fg_grey1
  exec 'hi markdownListMarker'. s:fg_red
  exec 'hi markdownOrderedListMarker'. s:fg_red
  exec 'hi markdownRule'. s:fg_purple
  exec 'hi markdownHeadingRule'. s:fg_grey1
  exec 'hi markdownUrlDelimiter'. s:fg_grey1
  exec 'hi markdownLinkDelimiter'. s:fg_grey1
  exec 'hi markdownLinkTextDelimiter'. s:fg_grey1
  exec 'hi markdownHeadingDelimiter'. s:fg_grey1
  exec 'hi markdownLinkText'. s:fg_purple
  exec 'hi markdownUrlTitleDelimiter'. s:fg_green
  exec 'hi markdownIdDeclaration'. s:fg_purple
  exec 'hi markdownBoldDelimiter'. s:fg_grey1
  exec 'hi markdownId'. s:fg_yellow
  "===============================================================
  " Latex: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_TEX
  "===============================================================
  exec 'hi texStatement'.s:fg_green
  exec 'hi texOnlyMath'.s:fg_grey1
  exec 'hi texDefName'.s:fg_yellow
  exec 'hi texNewCmd'.s:fg_orange
  exec 'hi texCmdName'.s:fg_blue
  exec 'hi texBeginEnd'.s:fg_red
  exec 'hi texBeginEndName'.s:fg_blue
  exec 'hi texDocType'.s:fg_purple
  exec 'hi texDocTypeArgs'.s:fg_orange
  "===============================================================
  " Javascript:
  " https://github.com/pangloss/vim-javascript
  exec 'hi jsThis' . s:fg_purple
  exec 'hi jsUndefined' . s:fg_aqua
  exec 'hi jsNull' . s:fg_aqua
  exec 'hi jsNan' . s:fg_aqua
  exec 'hi jsSuper' . s:fg_purple
  exec 'hi jsPrototype' . s:fg_purple
  exec 'hi jsFunction' . s:fg_red  . s:italic
  exec 'hi jsGlobalNodeObjects' . s:fg_purple  . s:italic
  exec 'hi jsGlobalObjects' . s:fg_yellow
  exec 'hi jsArrowFunction' . s:fg_purple
  exec 'hi jsArrowFuncArgs' . s:fg_blue
  exec 'hi jsFuncArgs' . s:fg_blue
  exec 'hi jsObjectProp' . s:fg_aqua
  exec 'hi jsVariableDef' . s:fg_blue
  exec 'hi jsObjectKey' . s:fg_aqua
  exec 'hi jsParen' . s:fg_blue
  exec 'hi jsParenIfElse' . s:fg_blue
  exec 'hi jsParenRepeat' . s:fg_blue
  exec 'hi jsParenSwitch' . s:fg_blue
  exec 'hi jsParenCatch' . s:fg_blue
  exec 'hi jsBracket' . s:fg_blue
  exec 'hi jsBlockLabel' . s:fg_aqua
  exec 'hi jsFunctionKey' . s:fg_green  . s:bold
  exec 'hi jsClassDefinition' . s:fg_yellow
  exec 'hi jsDot' . s:fg_grey1
  exec 'hi jsDestructuringBlock' . s:fg_blue
  exec 'hi jsSpreadExpression' . s:fg_purple
  exec 'hi jsSpreadOperator' . s:fg_green
  exec 'hi jsModuleKeyword' . s:fg_yellow
  exec 'hi jsObjectValue' . s:fg_blue
  exec 'hi jsTemplateExpression' . s:fg_yellow
  exec 'hi jsTemplateBraces' . s:fg_yellow
  exec 'hi jsClassMethodType'. s:fg_orange
  " yajs: https://github.com/othree/yajs.vim
  exec 'hi javascriptEndColons' . s:fg_fg0
  exec 'hi javascriptOpSymbol' . s:fg_orange
  exec 'hi javascriptOpSymbols' . s:fg_orange
  exec 'hi javascriptIdentifierName' . s:fg_blue
  exec 'hi javascriptVariable' . s:fg_orange
  exec 'hi javascriptObjectLabel' . s:fg_aqua
  exec 'hi javascriptObjectLabelColon' . s:fg_grey1
  exec 'hi javascriptPropertyNameString' . s:fg_aqua
  exec 'hi javascriptFuncArg' . s:fg_blue
  exec 'hi javascriptIdentifier' . s:fg_purple
  exec 'hi javascriptArrowFunc' . s:fg_purple
  exec 'hi javascriptTemplate' . s:fg_yellow
  exec 'hi javascriptTemplateSubstitution' . s:fg_yellow
  exec 'hi javascriptTemplateSB' . s:fg_yellow
  exec 'hi javascriptNodeGlobal' . s:fg_purple  . s:italic
  exec 'hi javascriptDocTags' . s:fg_purple  . s:italic
  exec 'hi javascriptDocNotation' . s:fg_purple
  exec 'hi javascriptClassSuper' . s:fg_purple
  exec 'hi javascriptClassName' . s:fg_yellow
  exec 'hi javascriptClassSuperName' . s:fg_yellow
  exec 'hi javascriptBrackets' . s:fg_fg0
  exec 'hi javascriptBraces' . s:fg_fg0
  exec 'hi javascriptLabel' . s:fg_purple
  exec 'hi javascriptDotNotation' . s:fg_grey1
  exec 'hi javascriptGlobalArrayDot' . s:fg_grey1
  exec 'hi javascriptGlobalBigIntDot' . s:fg_grey1
  exec 'hi javascriptGlobalDateDot' . s:fg_grey1
  exec 'hi javascriptGlobalJSONDot' . s:fg_grey1
  exec 'hi javascriptGlobalMathDot' . s:fg_grey1
  exec 'hi javascriptGlobalNumberDot' . s:fg_grey1
  exec 'hi javascriptGlobalObjectDot' . s:fg_grey1
  exec 'hi javascriptGlobalPromiseDot' . s:fg_grey1
  exec 'hi javascriptGlobalRegExpDot' . s:fg_grey1
  exec 'hi javascriptGlobalStringDot' . s:fg_grey1
  exec 'hi javascriptGlobalSymbolDot' . s:fg_grey1
  exec 'hi javascriptGlobalURLDot' . s:fg_grey1
  exec 'hi javascriptMethod' . s:fg_green  . s:bold
  exec 'hi javascriptMethodName' . s:fg_green  . s:bold
  exec 'hi javascriptObjectMethodName' . s:fg_green  . s:bold
  exec 'hi javascriptGlobalMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMStorageMethod' . s:fg_green  . s:bold
  exec 'hi javascriptFileMethod' . s:fg_green  . s:bold
  exec 'hi javascriptFileReaderMethod' . s:fg_green  . s:bold
  exec 'hi javascriptFileListMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBlobMethod' . s:fg_green  . s:bold
  exec 'hi javascriptURLStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptNumberStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptNumberMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMNodeMethod' . s:fg_green  . s:bold
  exec 'hi javascriptES6BigIntStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBOMWindowMethod' . s:fg_green  . s:bold
  exec 'hi javascriptHeadersMethod' . s:fg_green  . s:bold
  exec 'hi javascriptRequestMethod' . s:fg_green  . s:bold
  exec 'hi javascriptResponseMethod' . s:fg_green  . s:bold
  exec 'hi javascriptES6SetMethod' . s:fg_green  . s:bold
  exec 'hi javascriptReflectMethod' . s:fg_green  . s:bold
  exec 'hi javascriptPaymentMethod' . s:fg_green  . s:bold
  exec 'hi javascriptPaymentResponseMethod' . s:fg_green  . s:bold
  exec 'hi javascriptTypedArrayStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptGeolocationMethod' . s:fg_green  . s:bold
  exec 'hi javascriptES6MapMethod' . s:fg_green  . s:bold
  exec 'hi javascriptServiceWorkerMethod' . s:fg_green  . s:bold
  exec 'hi javascriptCacheMethod' . s:fg_green  . s:bold
  exec 'hi javascriptFunctionMethod' . s:fg_green  . s:bold
  exec 'hi javascriptXHRMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBOMNavigatorMethod' . s:fg_green  . s:bold
  exec 'hi javascriptServiceWorkerMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMEventTargetMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMEventMethod' . s:fg_green  . s:bold
  exec 'hi javascriptIntlMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMDocMethod' . s:fg_green  . s:bold
  exec 'hi javascriptStringStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptStringMethod' . s:fg_green  . s:bold
  exec 'hi javascriptSymbolStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptRegExpMethod' . s:fg_green  . s:bold
  exec 'hi javascriptObjectStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptObjectMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBOMLocationMethod' . s:fg_green  . s:bold
  exec 'hi javascriptJSONStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptGeneratorMethod' . s:fg_green  . s:bold
  exec 'hi javascriptEncodingMethod' . s:fg_green  . s:bold
  exec 'hi javascriptPromiseStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptPromiseMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBOMHistoryMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDOMFormMethod' . s:fg_green  . s:bold
  exec 'hi javascriptClipboardMethod' . s:fg_green  . s:bold
  exec 'hi javascriptTypedArrayStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptBroadcastMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDateStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptDateMethod' . s:fg_green  . s:bold
  exec 'hi javascriptConsoleMethod' . s:fg_green  . s:bold
  exec 'hi javascriptArrayStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptArrayMethod' . s:fg_green  . s:bold
  exec 'hi javascriptMathStaticMethod' . s:fg_green  . s:bold
  exec 'hi javascriptSubtleCryptoMethod' . s:fg_green  . s:bold
  exec 'hi javascriptCryptoMethod' . s:fg_green  . s:bold
  exec 'hi javascriptProp' . s:fg_aqua
  exec 'hi javascriptBOMWindowProp' . s:fg_aqua
  exec 'hi javascriptDOMStorageProp' . s:fg_aqua
  exec 'hi javascriptFileReaderProp' . s:fg_aqua
  exec 'hi javascriptURLUtilsProp' . s:fg_aqua
  exec 'hi javascriptNumberStaticProp' . s:fg_aqua
  exec 'hi javascriptDOMNodeProp' . s:fg_aqua
  exec 'hi javascriptRequestProp' . s:fg_aqua
  exec 'hi javascriptResponseProp' . s:fg_aqua
  exec 'hi javascriptES6SetProp' . s:fg_aqua
  exec 'hi javascriptPaymentProp' . s:fg_aqua
  exec 'hi javascriptPaymentResponseProp' . s:fg_aqua
  exec 'hi javascriptPaymentAddressProp' . s:fg_aqua
  exec 'hi javascriptPaymentShippingOptionProp' . s:fg_aqua
  exec 'hi javascriptTypedArrayStaticProp' . s:fg_aqua
  exec 'hi javascriptServiceWorkerProp' . s:fg_aqua
  exec 'hi javascriptES6MapProp' . s:fg_aqua
  exec 'hi javascriptRegExpStaticProp' . s:fg_aqua
  exec 'hi javascriptRegExpProp' . s:fg_aqua
  exec 'hi javascriptXHRProp' . s:fg_aqua
  exec 'hi javascriptBOMNavigatorProp' . s:fg_green  . s:bold
  exec 'hi javascriptDOMEventProp' . s:fg_aqua
  exec 'hi javascriptBOMNetworkProp' . s:fg_aqua
  exec 'hi javascriptDOMDocProp' . s:fg_aqua
  exec 'hi javascriptSymbolStaticProp' . s:fg_aqua
  exec 'hi javascriptSymbolProp' . s:fg_aqua
  exec 'hi javascriptBOMLocationProp' . s:fg_aqua
  exec 'hi javascriptEncodingProp' . s:fg_aqua
  exec 'hi javascriptCryptoProp' . s:fg_aqua
  exec 'hi javascriptBOMHistoryProp' . s:fg_aqua
  exec 'hi javascriptDOMFormProp' . s:fg_aqua
  exec 'hi javascriptDataViewProp' . s:fg_aqua
  exec 'hi javascriptBroadcastProp' . s:fg_aqua
  exec 'hi javascriptMathStaticProp' . s:fg_aqua
  "===============================================================
  " JavaScript React:
  " vim-jsx-pretty: https://github.com/maxmellon/vim-jsx-pretty
  "===============================================================
  exec 'hi jsxTagName' . s:fg_orange  . s:italic
  exec 'hi jsxTag' . s:fg_purple . s:bold
  exec 'hi jsxOpenPunct' . s:fg_green
  exec 'hi jsxClosePunct' . s:fg_blue
  exec 'hi jsxEscapeJs' . s:fg_blue
  exec 'hi jsxAttrib' . s:fg_yellow
  exec 'hi jsxCloseTag' . s:fg_aqua . s:bold
  exec 'hi jsxComponentName' . s:fg_blue . 'gui=bold'
  "===============================================================
  " TypeScript:
  " vim-typescript: https://github.com/leafgarland/typescript-vim {{{
  "===============================================================
  exec 'hi typescriptSource' . s:fg_purple  . s:italic
  exec 'hi typescriptMessage' . s:fg_yellow
  exec 'hi typescriptGlobalObjects' . s:fg_aqua
  exec 'hi typescriptInterpolation' . s:fg_yellow
  exec 'hi typescriptInterpolationDelimiter' . s:fg_yellow
  exec 'hi typescriptBraces' . s:fg_fg0
  exec 'hi typescriptParens' . s:fg_fg0
  "===============================================================
  " Typescript:
  " yats: https:github.com/HerringtonDarkholme/yats.vim
  " But now builtin neovim vim
  "===============================================================
  exec 'hi typescriptMethodAccessor' . s:fg_orange  . s:italic
  exec 'hi typescriptVariable' . s:fg_orange
  exec 'hi typescriptVariableDeclaration' . s:fg_aqua
  exec 'hi typescriptTypeReference' . s:fg_yellow
  exec 'hi typescriptBraces' . s:fg_fg0
  exec 'hi typescriptBoolean' .s:fg_orange
  exec 'hi typescriptCase' .s:fg_purple
  exec 'hi typescriptRepeat' .s:fg_purple
  exec 'hi typescriptEnumKeyword' . s:fg_red  . s:italic
  exec 'hi typescriptEnum' . s:fg_yellow
  exec 'hi typescriptIdentifierName' . s:fg_aqua
  exec 'hi typescriptProp' . s:fg_aqua
  exec 'hi typescriptCall' . s:fg_aqua
  exec 'hi typescriptConditional' . s:fg_purple
  exec 'hi typescriptInterfaceName' . s:fg_yellow
  exec 'hi typescriptEndColons' . s:fg_fg0
  exec 'hi typescriptMember' . s:fg_aqua
  exec 'hi typescriptMemberOptionality' . s:fg_orange
  exec 'hi typescriptObjectLabel' . s:fg_aqua
  exec 'hi typescriptArrowFunc' . s:fg_purple
  exec 'hi typescriptAbstract' . s:fg_orange
  exec 'hi typescriptObjectColon' . s:fg_grey1
  exec 'hi typescriptTypeAnnotation' . s:fg_grey1
  exec 'hi typescriptAssign' . s:fg_operator_base05
  exec 'hi typescriptBinaryOp' . s:fg_operator_base05
  exec 'hi typescriptUnaryOp' . s:fg_orange
  exec 'hi typescriptFuncComma' . s:fg_fg0
  exec 'hi typescriptClassName' . s:fg_yellow
  exec 'hi typescriptClassHeritage' . s:fg_yellow
  exec 'hi typescriptInterfaceHeritage' . s:fg_yellow
  exec 'hi typescriptIdentifier' . s:fg_purple
  exec 'hi typescriptGlobal' . s:fg_purple
  exec 'hi typescriptOperator' . s:fg_red  . s:italic
  exec 'hi typescriptNodeGlobal' . s:fg_purple  . s:italic
  exec 'hi typescriptExport' . s:fg_purple  . s:italic
  exec 'hi typescriptDefaultParam' . s:fg_orange
  exec 'hi typescriptImport' . s:fg_red  . s:italic
  exec 'hi typescriptTypeParameter' . s:fg_yellow
  exec 'hi typescriptReadonlyModifier' . s:fg_orange
  exec 'hi typescriptAccessibilityModifier' . s:fg_orange
  exec 'hi typescriptAmbientDeclaration' . s:fg_red  . s:italic
  exec 'hi typescriptTemplateSubstitution' . s:fg_yellow
  exec 'hi typescriptTemplateSB' . s:fg_yellow
  exec 'hi typescriptExceptions' . s:fg_yellow
  exec 'hi typescriptCastKeyword' . s:fg_red  . s:italic
  exec 'hi typescriptOptionalMark' . s:fg_orange
  exec 'hi typescriptNull' . s:fg_aqua
  exec 'hi typescriptMappedIn' . s:fg_red  . s:italic
  exec 'hi typescriptFuncTypeArrow' . s:fg_purple
  exec 'hi typescriptTernaryOp' . s:fg_orange
  exec 'hi typescriptParenExp' . s:fg_blue
  exec 'hi typescriptIndexExpr' . s:fg_blue
  exec 'hi typescriptDotNotation' . s:fg_grey1
  exec 'hi typescriptGlobalNumberDot' . s:fg_grey1
  exec 'hi typescriptGlobalStringDot' . s:fg_grey1
  exec 'hi typescriptGlobalArrayDot' . s:fg_grey1
  exec 'hi typescriptGlobalObjectDot' . s:fg_grey1
  exec 'hi typescriptGlobalSymbolDot' . s:fg_grey1
  exec 'hi typescriptGlobalMathDot' . s:fg_grey1
  exec 'hi typescriptGlobalDateDot' . s:fg_grey1
  exec 'hi typescriptGlobalJSONDot' . s:fg_grey1
  exec 'hi typescriptGlobalRegExpDot' . s:fg_grey1
  exec 'hi typescriptGlobalPromiseDot' . s:fg_grey1
  exec 'hi typescriptGlobalURLDot' . s:fg_grey1
  exec 'hi typescriptGlobalMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMStorageMethod' . s:fg_green  . s:bold
  exec 'hi typescriptFileMethod' . s:fg_green  . s:bold
  exec 'hi typescriptFileReaderMethod' . s:fg_green  . s:bold
  exec 'hi typescriptFileListMethod' . s:fg_green  . s:bold
  exec 'hi typescriptBlobMethod' . s:fg_green  . s:bold
  exec 'hi typescriptURLStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptNumberStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptNumberMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMNodeMethod' . s:fg_green  . s:bold
  exec 'hi typescriptPaymentMethod' . s:fg_green  . s:bold
  exec 'hi typescriptPaymentResponseMethod' . s:fg_green  . s:bold
  exec 'hi typescriptHeadersMethod' . s:fg_green  . s:bold
  exec 'hi typescriptRequestMethod' . s:fg_green  . s:bold
  exec 'hi typescriptResponseMethod' . s:fg_green  . s:bold
  exec 'hi typescriptES6SetMethod' . s:fg_green  . s:bold
  exec 'hi typescriptReflectMethod' . s:fg_green  . s:bold
  exec 'hi typescriptBOMWindowMethod' . s:fg_green  . s:bold
  exec 'hi typescriptGeolocationMethod' . s:fg_green  . s:bold
  exec 'hi typescriptServiceWorkerMethod' . s:fg_green  . s:bold
  exec 'hi typescriptCacheMethod' . s:fg_green  . s:bold
  exec 'hi typescriptES6MapMethod' . s:fg_green  . s:bold
  exec 'hi typescriptFunctionMethod' . s:fg_green  . s:bold
  exec 'hi typescriptFuncName' . s:fg_magenta
  exec 'hi typescriptFuncKeyword' . s:fg_blue
  exec 'hi typescriptRegExpMethod' . s:fg_green  . s:bold
  exec 'hi typescriptXHRMethod' . s:fg_green  . s:bold
  exec 'hi typescriptBOMNavigatorMethod' . s:fg_green  . s:bold
  exec 'hi typescriptServiceWorkerMethod' . s:fg_green  . s:bold
  exec 'hi typescriptIntlMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMEventTargetMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMEventMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMDocMethod' . s:fg_green  . s:bold
  exec 'hi typescriptStringStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptStringMethod' . s:fg_green  . s:bold
  exec 'hi typescriptSymbolStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptObjectStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptObjectMethod' . s:fg_green  . s:bold
  exec 'hi typescriptJSONStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptEncodingMethod' . s:fg_green  . s:bold
  exec 'hi typescriptBOMLocationMethod' . s:fg_green  . s:bold
  exec 'hi typescriptPromiseStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptPromiseMethod' . s:fg_green  . s:bold
  exec 'hi typescriptSubtleCryptoMethod' . s:fg_green  . s:bold
  exec 'hi typescriptCryptoMethod' . s:fg_green  . s:bold
  exec 'hi typescriptBOMHistoryMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDOMFormMethod' . s:fg_green  . s:bold
  exec 'hi typescriptConsoleMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDateStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptDateMethod' . s:fg_green  . s:bold
  exec 'hi typescriptArrayStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptArrayMethod' . s:fg_green  . s:bold
  exec 'hi typescriptMathStaticMethod' . s:fg_green  . s:bold
  exec 'hi typescriptStringProperty' . s:fg_aqua
  exec 'hi typescriptDOMStorageProp' . s:fg_aqua
  exec 'hi typescriptFileReaderProp' . s:fg_aqua
  exec 'hi typescriptURLUtilsProp' . s:fg_aqua
  exec 'hi typescriptNumberStaticProp' . s:fg_aqua
  exec 'hi typescriptDOMNodeProp' . s:fg_aqua
  exec 'hi typescriptBOMWindowProp' . s:fg_aqua
  exec 'hi typescriptRequestProp' . s:fg_aqua
  exec 'hi typescriptResponseProp' . s:fg_aqua
  exec 'hi typescriptPaymentProp' . s:fg_aqua
  exec 'hi typescriptPaymentResponseProp' . s:fg_aqua
  exec 'hi typescriptPaymentAddressProp' . s:fg_aqua
  exec 'hi typescriptPaymentShippingOptionProp' . s:fg_aqua
  exec 'hi typescriptES6SetProp' . s:fg_aqua
  exec 'hi typescriptServiceWorkerProp' . s:fg_aqua
  exec 'hi typescriptES6MapProp' . s:fg_aqua
  exec 'hi typescriptRegExpStaticProp' . s:fg_aqua
  exec 'hi typescriptRegExpProp' . s:fg_aqua
  exec 'hi typescriptBOMNavigatorProp' . s:fg_green  . s:bold
  exec 'hi typescriptXHRProp' . s:fg_aqua
  exec 'hi typescriptDOMEventProp' . s:fg_aqua
  exec 'hi typescriptDOMDocProp' . s:fg_aqua
  exec 'hi typescriptBOMNetworkProp' . s:fg_aqua
  exec 'hi typescriptSymbolStaticProp' . s:fg_aqua
  exec 'hi typescriptEncodingProp' . s:fg_aqua
  exec 'hi typescriptBOMLocationProp' . s:fg_aqua
  exec 'hi typescriptCryptoProp' . s:fg_aqua
  exec 'hi typescriptDOMFormProp' . s:fg_aqua
  exec 'hi typescriptBOMHistoryProp' . s:fg_aqua
  exec 'hi typescriptMathStaticProp' . s:fg_aqua
  "===============================================================
  " Dart:
  " dart-lang: https://github.com/dart-lang/dart-vim-plugin
  "===============================================================
  exec 'hi dartCoreClasses' . s:fg_aqua
  exec 'hi dartTypeName' . s:fg_aqua
  exec 'hi dartInterpolation' . s:fg_blue
  exec 'hi dartTypeDef' . s:fg_red  . s:italic
  exec 'hi dartClassDecl' . s:fg_red  . s:italic
  exec 'hi dartLibrary' . s:fg_purple  . s:italic
  exec 'hi dartMetadata' . s:fg_blue
  "===============================================================
  " CoffeeScript:
  " vim-coffee-script: https://github.com/kchmck/vim-coffee-script
  "===============================================================
  exec 'hi coffeeExtendedOp' . s:fg_orange
  exec 'hi coffeeSpecialOp' . s:fg_fg0
  exec 'hi coffeeDotAccess' . s:fg_grey1
  exec 'hi coffeeCurly' . s:fg_fg0
  exec 'hi coffeeParen' . s:fg_fg0
  exec 'hi coffeeBracket' . s:fg_fg0
  exec 'hi coffeeParens' . s:fg_blue
  exec 'hi coffeeBrackets' . s:fg_blue
  exec 'hi coffeeCurlies' . s:fg_blue
  exec 'hi coffeeOperator' . s:fg_red  . s:italic
  exec 'hi coffeeStatement' . s:fg_orange
  exec 'hi coffeeSpecialIdent' . s:fg_purple
  exec 'hi coffeeObject' . s:fg_purple
  exec 'hi coffeeObjAssign' . s:fg_aqua
  "===============================================================
  " vim-lsp-cxx-highlight https://github.com/jackguo380/vim-lsp-cxx-highlight {{{
  "===============================================================
  exec 'hi LspCxxHlSkippedRegion' . s:fg_grey1
  exec 'hi LspCxxHlSkippedRegionBeginEnd' . s:fg_purple  . s:italic
  exec 'hi LspCxxHlGroupEnumConstant' . s:fg_aqua
  exec 'hi LspCxxHlGroupNamespace' . s:fg_purple
  exec 'hi LspCxxHlGroupMemberVariable' . s:fg_aqua
  "===============================================================
  " ObjectiveC
  "===============================================================
  exec 'hi objcModuleImport' . s:fg_purple  . s:italic
  exec 'hi objcException' . s:fg_red  . s:italic
  exec 'hi objcProtocolList' . s:fg_aqua
  exec 'hi objcObjDef' . s:fg_purple  . s:italic
  exec 'hi objcDirective' . s:fg_red  . s:italic
  exec 'hi objcPropertyAttribute' . s:fg_orange
  exec 'hi objcHiddenArgument' . s:fg_aqua
  "===============================================================
  " Python:
  "===============================================================
  exec 'hi pythonBuiltin' . s:fg_yellow
  exec 'hi pythonExceptions' . s:fg_purple
  exec 'hi pythonDecoratorName' . s:fg_blue
  "===============================================================
  " python-syntax: https://github.com/vim-python/python-syntax
  "===============================================================
  exec 'hi pythonExClass' . s:fg_purple
  exec 'hi pythonBuiltinType' . s:fg_yellow
  exec 'hi pythonBuiltinObj' . s:fg_blue
  exec 'hi pythonDottedName' . s:fg_purple  . s:italic
  exec 'hi pythonBuiltinFunc' . s:fg_green  . s:bold
  exec 'hi pythonFunction' . s:fg_aqua  . s:bold
  exec 'hi pythonDecorator' . s:fg_orange
  exec 'hi pythonInclude'. s:fg_purple. s:italic
  exec 'hi pythonImport'. s:fg_purple. s:italic
  exec 'hi pythonRun' . s:fg_blue
  exec 'hi pythonCoding' . s:fg_grey1
  exec 'hi pythonOperator' . s:fg_orange
  exec 'hi pythonConditional' . s:fg_red  . s:italic
  exec 'hi pythonRepeat' . s:fg_red  . s:italic
  exec 'hi pythonException' . s:fg_red  . s:italic
  exec 'hi pythonNone' . s:fg_aqua
  exec 'hi pythonDot' . s:fg_grey1
  "===============================================================
  " semshi: https://github.com/numirias/semshi
  "===============================================================
  exec 'hi semshiUnresolved' . s:fg_yellow. s:undercurl
  exec 'hi semshiImported' . s:fg_purple
  exec 'hi semshiParameter' . s:fg_blue
  exec 'hi semshiParameterUnused' . s:fg_grey1
  exec 'hi semshiSelf' . s:fg_purple  . s:italic
  exec 'hi semshiGlobal' . s:fg_yellow
  exec 'hi semshiBuiltin' . s:fg_yellow
  exec 'hi semshiAttribute' . s:fg_aqua
  exec 'hi semshiLocal' . s:fg_red
  exec 'hi semshiFree' . s:fg_red
  hi link  semshiSelected CocHighlightText
  exec 'hi semshiErrorSign' . s:fg_red
  exec 'hi semshiErrorChar' . s:fg_red
  "===============================================================
  " Kotlin:
  " kotlin-vim: https://github.com/udalov/kotlin-vim
  "===============================================================
  exec 'hi ktSimpleInterpolation' . s:fg_yellow
  exec 'hi ktComplexInterpolation' . s:fg_yellow
  exec 'hi ktComplexInterpolationBrace' . s:fg_yellow
  exec 'hi ktStructure' . s:fg_red  . s:italic
  exec 'hi ktKeyword' . s:fg_aqua
  "===============================================================
  " Scala:
  " builtin: https://github.com/derekwyatt/vim-scala
  "===============================================================
  exec 'hi scalaNameDefinition' . s:fg_aqua
  exec 'hi scalaInterpolationBoundary' . s:fg_yellow
  exec 'hi scalaInterpolation' . s:fg_blue
  exec 'hi scalaTypeOperator' . s:fg_orange
  exec 'hi scalaOperator' . s:fg_orange
  exec 'hi scalaKeywordModifier' . s:fg_orange
  "===============================================================
  " Go:
  "===============================================================
  exec 'hi goDirective' . s:fg_purple  . s:italic
  exec 'hi goConstants' . s:fg_aqua
  exec 'hi goTypeDecl' . s:fg_purple  . s:italic
  exec 'hi goDeclType' . s:fg_orange  . s:italic
  exec 'hi goFunctionCall' . s:fg_yellow  . s:bold
  exec 'hi goSpaceError'. s:fg_grey1. s:bg_red
  exec 'hi goVarArgs' . s:fg_blue
  exec 'hi goBuiltins' . s:fg_purple
  exec 'hi goPredefinedIdentifiers' . s:fg_orange
  exec 'hi goVar' . s:fg_orange
  exec 'hi goField' . s:fg_aqua
  exec 'hi goDeclaration' . s:fg_blue
  exec 'hi goConst' . s:fg_orange
  exec 'hi goParamName' . s:fg_aqua
  "===============================================================
  " Rust:
  " builtin: https://github.com/rust-lang/rust.vim
  "===============================================================
  exec 'hi rustStructure' . s:fg_orange
  exec 'hi rustIdentifier' . s:fg_purple
  exec 'hi rustModPath' . s:fg_orange
  exec 'hi rustModPathSep' . s:fg_grey1
  exec 'hi rustSelf' . s:fg_blue
  exec 'hi rustSuper' . s:fg_blue
  exec 'hi rustDeriveTrait' . s:fg_purple  . s:italic
  exec 'hi rustEnumVariant' . s:fg_purple
  exec 'hi rustMacroVariable' . s:fg_blue
  exec 'hi rustAssert' . s:fg_aqua
  exec 'hi rustPanic' . s:fg_aqua
  exec 'hi rustPubScopeCrate' . s:fg_purple  . s:italic
  "===============================================================
  " Swift:
  " swift.vim: https://github.com/keith/swift.vim
  "===============================================================
  exec 'hi swiftInterpolatedWrapper' . s:fg_yellow
  exec 'hi swiftInterpolatedString' . s:fg_blue
  exec 'hi swiftProperty' . s:fg_aqua
  exec 'hi swiftTypeDeclaration' . s:fg_orange
  exec 'hi swiftClosureArgument' . s:fg_purple
  "===============================================================
  " PHP:
  " php.vim: https://github.com/StanAngeloff/php.vim
  "===============================================================
  exec 'hi phpParent' . s:fg_fg0
  exec 'hi phpNowDoc' . s:fg_green
  exec 'hi phpFunction' . s:fg_green  . s:bold
  exec 'hi phpMethod' . s:fg_green  . s:bold
  exec 'hi phpClass' . s:fg_orange
  exec 'hi phpSuperglobals' . s:fg_purple
  "===============================================================
  " Ruby:
  " builtin: https://github.com/vim-ruby/vim-ruby
  "===============================================================
  exec 'hi rubyKeywordAsMethod' . s:fg_green  . s:bold
  exec 'hi rubyInterpolation' . s:fg_yellow
  exec 'hi rubyInterpolationDelimiter' . s:fg_yellow
  exec 'hi rubyStringDelimiter' . s:fg_green
  exec 'hi rubyBlockParameterList' . s:fg_blue
  exec 'hi rubyDefine' . s:fg_red  . s:italic
  exec 'hi rubyModuleName' . s:fg_purple
  exec 'hi rubyAccess' . s:fg_orange
  exec 'hi rubyAttribute' . s:fg_yellow
  exec 'hi rubyMacro' . s:fg_red  . s:italic
  "===============================================================
  " Haskell:
  " haskell-vim: https://github.com/neovimhaskell/haskell-vim
  "===============================================================
  exec 'hi haskellBrackets' . s:fg_blue
  exec 'hi haskellIdentifier' . s:fg_yellow
  exec 'hi haskellAssocType' . s:fg_aqua
  exec 'hi haskellQuotedType' . s:fg_aqua
  exec 'hi haskellType' . s:fg_aqua
  exec 'hi haskellDeclKeyword' . s:fg_red  . s:italic
  exec 'hi haskellWhere' . s:fg_red  . s:italic
  exec 'hi haskellDeriving' . s:fg_purple  . s:italic
  exec 'hi haskellForeignKeywords' . s:fg_purple  . s:italic
  "===============================================================
  " Perl:
  " builtin: https://github.com/vim-perl/vim-perl
  "===============================================================
  exec 'hi perlStatementPackage' . s:fg_purple  . s:italic
  exec 'hi perlStatementInclude' . s:fg_purple  . s:italic
  exec 'hi perlStatementStorage' . s:fg_orange
  exec 'hi perlStatementList' . s:fg_orange
  exec 'hi perlMatchStartEnd' . s:fg_orange
  exec 'hi perlVarSimpleMemberName' . s:fg_aqua
  exec 'hi perlVarSimpleMember' . s:fg_fg0
  exec 'hi perlMethod' . s:fg_green  . s:bold
  exec 'hi podVerbatimLine' . s:fg_green
  exec 'hi podCmdText' . s:fg_yellow
  "===============================================================
  " OCaml:
  " builtin: https://github.com/rgrinberg/vim-ocaml
  "===============================================================
  exec 'hi ocamlArrow' . s:fg_orange
  exec 'hi ocamlEqual' . s:fg_orange
  exec 'hi ocamlOperator' . s:fg_orange
  exec 'hi ocamlKeyChar' . s:fg_orange
  exec 'hi ocamlModPath' . s:fg_green
  exec 'hi ocamlFullMod' . s:fg_green
  exec 'hi ocamlModule' . s:fg_purple
  exec 'hi ocamlConstructor' . s:fg_aqua
  exec 'hi ocamlFuncWith' . s:fg_yellow
  exec 'hi ocamlWith' . s:fg_yellow
  exec 'hi ocamlModParam' . s:fg_fg0
  exec 'hi ocamlModParam1' . s:fg_fg0
  exec 'hi ocamlAnyVar' . s:fg_blue
  exec 'hi ocamlPpxEncl' . s:fg_orange
  exec 'hi ocamlPpxIdentifier' . s:fg_blue
  exec 'hi ocamlSigEncl' . s:fg_orange
  exec 'hi ocamlStructEncl' . s:fg_aqua
  exec 'hi ocamlModParam1' . s:fg_blue
  "===============================================================
  " Erlang:
  " builtin: https://github.com/vim-erlang/vim-erlang-runtime
  "===============================================================
  exec 'hi erlangAtom' . s:fg_aqua
  exec 'hi erlangLocalFuncRef' . s:fg_green  . s:bold
  exec 'hi erlangLocalFuncCall' . s:fg_green  . s:bold
  exec 'hi erlangGlobalFuncRef' . s:fg_green  . s:bold
  exec 'hi erlangGlobalFuncCall' . s:fg_green  . s:bold
  exec 'hi erlangAttribute' . s:fg_purple  . s:italic
  exec 'hi erlangPipe' . s:fg_orange
  "===============================================================
  " Elixir:
  " vim-elixir: https://github.com/elixir-editors/vim-elixir
  "===============================================================
  exec 'hi elixirStringDelimiter' . s:fg_green
  exec 'hi elixirKeyword' . s:fg_orange
  exec 'hi elixirInterpolation' . s:fg_yellow
  exec 'hi elixirInterpolationDelimiter' . s:fg_yellow
  exec 'hi elixirSelf' . s:fg_purple
  exec 'hi elixirPseudoVariable' . s:fg_purple
  exec 'hi elixirModuleDefine' . s:fg_purple  . s:italic
  exec 'hi elixirBlockDefinition' . s:fg_red  . s:italic
  exec 'hi elixirDefine' . s:fg_red  . s:italic
  exec 'hi elixirPrivateDefine' . s:fg_red  . s:italic
  exec 'hi elixirGuard' . s:fg_red  . s:italic
  exec 'hi elixirPrivateGuard' . s:fg_red  . s:italic
  exec 'hi elixirProtocolDefine' . s:fg_red  . s:italic
  exec 'hi elixirImplDefine' . s:fg_red  . s:italic
  exec 'hi elixirRecordDefine' . s:fg_red  . s:italic
  exec 'hi elixirPrivateRecordDefine' . s:fg_red  . s:italic
  exec 'hi elixirMacroDefine' . s:fg_red  . s:italic
  exec 'hi elixirPrivateMacroDefine' . s:fg_red  . s:italic
  exec 'hi elixirDelegateDefine' . s:fg_red  . s:italic
  exec 'hi elixirOverridableDefine' . s:fg_red  . s:italic
  exec 'hi elixirExceptionDefine' . s:fg_red  . s:italic
  exec 'hi elixirCallbackDefine' . s:fg_red  . s:italic
  exec 'hi elixirStructDefine' . s:fg_red  . s:italic
  exec 'hi elixirExUnitMacro' . s:fg_red  . s:italic
  "===============================================================
  " Clojure:
  " builtin: https://github.com/guns/vim-clojure-static
  "===============================================================
  exec 'hi clojureMacro' . s:fg_purple  . s:italic
  exec 'hi clojureFunc' . s:fg_aqua  . s:bold
  exec 'hi clojureConstant' . s:fg_yellow
  exec 'hi clojureSpecial' . s:fg_red  . s:italic
  exec 'hi clojureDefine' . s:fg_red  . s:italic
  exec 'hi clojureKeyword' . s:fg_orange
  exec 'hi clojureVariable' . s:fg_blue
  exec 'hi clojureMeta' . s:fg_yellow
  exec 'hi clojureDeref' . s:fg_yellow
  "===============================================================
  " Matlab:
  "===============================================================
  exec 'hi matlabSemicolon' . s:fg_fg0
  exec 'hi matlabFunction' . s:fg_red  . s:italic
  exec 'hi matlabImplicit' . s:fg_green  . s:bold
  exec 'hi matlabDelimiter' . s:fg_fg0
  exec 'hi matlabOperator' . s:fg_green  . s:bold
  exec 'hi matlabArithmeticOperator' . s:fg_orange
  exec 'hi matlabArithmeticOperator' . s:fg_orange
  exec 'hi matlabRelationalOperator' . s:fg_orange
  exec 'hi matlabRelationalOperator' . s:fg_orange
  exec 'hi matlabLogicalOperator' . s:fg_orange
  "===============================================================
  " VimL:
  "===============================================================
  exec 'hi vimCommentTitle'. s:fg_grey1. s:bold
  exec 'hi vimLet' . s:fg_orange
  exec 'hi vimVar' . s:fg_aqua
  exec 'hi vimFunction' . s:fg_magenta  . s:bold
  exec 'hi vimIsCommand' . s:fg_fg0
  exec 'hi vimUserFunc' . s:fg_yellow  . s:bold
  exec 'hi vimFuncName' . s:fg_yellow  . s:bold
  "===============================================================
  " Makefile:
  "===============================================================
  exec 'hi makeIdent' . s:fg_aqua
  exec 'hi makeSpecTarget' . s:fg_yellow
  exec 'hi makeTarget' . s:fg_blue
  exec 'hi makeCommands' . s:fg_orange
  "===============================================================
  " Json:
  "===============================================================
  exec 'hi jsonKeyword' . s:fg_orange
  exec 'hi jsonQuote' . s:fg_grey1
  exec 'hi jsonBraces' . s:fg_fg0
  "===============================================================
  " Yaml:
  "===============================================================
  exec 'hi yamlKey' . s:fg_orange
  exec 'hi yamlConstant' . s:fg_purple
  "===============================================================
  " Toml:
  "===============================================================
  exec 'hi tomlTable'. s:fg_purple. s:bold
  exec 'hi tomlKey' . s:fg_orange
  exec 'hi tomlBoolean' . s:fg_aqua
  exec 'hi tomlTableArray'. s:fg_purple. s:bold
  "===============================================================
  " Diff:
  "===============================================================
  exec 'hi diffAdded' . s:fg_green
  exec 'hi diffRemoved' . s:fg_red
  exec 'hi diffChanged' . s:fg_blue
  exec 'hi diffOldFile' . s:fg_yellow
  exec 'hi diffNewFile' . s:fg_orange
  exec 'hi diffFile' . s:fg_aqua
  exec 'hi diffLine' . s:fg_grey1
  exec 'hi diffIndexLine' . s:fg_purple
  "===============================================================
  " Git Commit:
  "===============================================================
  exec 'hi gitcommitSummary' . s:fg_red
  exec 'hi gitcommitUntracked' . s:fg_grey1
  exec 'hi gitcommitDiscarded' . s:fg_grey1
  exec 'hi gitcommitSelected' . s:fg_grey1
  exec 'hi gitcommitUnmerged' . s:fg_grey1
  exec 'hi gitcommitOnBranch' . s:fg_grey1
  exec 'hi gitcommitArrow' . s:fg_grey1
  exec 'hi gitcommitFile' . s:fg_green
  "===============================================================
  " neoclide/coc.nvim
  "===============================================================
  exec 'hi CocHoverRange'. s:fg_none. s:bold . s:underline
  exec 'hi CocHintHighlight'. s:fg_none. s:undercurl. s:sp_aqua .s:underline
  exec 'hi CocErrorFloat'. s:fg_red. s:bg_bg3
  exec 'hi CocWarningFloat'. s:fg_yellow. s:bg_bg3
  exec 'hi CocInfoFloat'. s:fg_blue. s:bg_bg3
  exec 'hi CocHintFloat'. s:fg_aqua. s:bg_bg3
  exec 'hi CocHighlightText'. s:bg_fg3
  exec 'hi CocErrorSign' . s:fg_red
  exec 'hi CocWarningSign' . s:fg_yellow
  exec 'hi CocInfoSign' . s:fg_blue
  exec 'hi CocHintSign' . s:fg_aqua
  exec 'hi CocErrorHighlight' . s:fg_none  . s:undercurl . s:sp_red . s:underline
  exec 'hi CocWarningHighlight' . s:fg_none  . s:undercurl . s:sp_yellow.s:underline
  exec 'hi CocInfoHighlight' . s:fg_none  . s:undercurl . s:sp_blue
  exec 'hi CocWarningVirtualText' . s:fg_grey1
  exec 'hi CocErrorVirtualText' . s:fg_grey1
  exec 'hi CocInfoVirtualText' . s:fg_grey1
  exec 'hi CocHintVirtualText' . s:fg_grey1
  exec 'hi CocCodeLens' . s:fg_grey1
  exec 'hi HighlightedyankRegion'. s:fg_none. s:reverse
  exec 'hi CocGitAddedSign' . s:fg_green
  exec 'hi CocGitChangeRemovedSign' . s:fg_purple
  exec 'hi CocGitChangedSign' . s:fg_blue
  exec 'hi CocGitRemovedSign' . s:fg_red
  exec 'hi CocGitTopRemovedSign' . s:fg_red
  "coc-explorer
  exec 'hi CocExplorerBufferRoot' . s:fg_orange
  exec 'hi CocExplorerBufferExpandIcon'. s:fg_aqua
  exec 'hi CocExplorerBufferBufnr' . s:fg_purple
  exec 'hi CocExplorerBufferModified'. s:fg_red
  exec 'hi CocExplorerBufferBufname'. s:fg_grey0
  exec 'hi CocExplorerBufferFullpath'. s:fg_grey0
  exec 'hi CocExplorerFileRoot' . s:fg_orange
  exec 'hi CocExplorerFileExpandIcon' . s:fg_aqua
  exec 'hi CocExplorerFileFullpath' . s:fg_grey0
  exec 'hi CocExplorerFileDirectory' .  s:fg_green
  exec 'hi CocExplorerFileGitStage' . s:fg_purple
  exec 'hi CocExplorerFileGitUnstage' . s:fg_yellow
  exec 'hi CocExplorerFileSize' . s:fg_blue
  exec 'hi CocExplorerTimeAccessed' . s:fg_aqua
  exec 'hi CocExplorerTimeCreated' . s:fg_aqua
  exec 'hi CocExplorerTimeModified' . s:fg_aqua
  "===============================================================
  " dense-analysis/ale
  "===============================================================
  exec 'hi ALEError'. s:fg_none. s:undercurl. s:sp_red
  exec 'hi ALEWarning'. s:fg_none. s:undercurl. s:sp_yellow
  exec 'hi ALEInfo'. s:fg_none. s:undercurl. s:sp_blue
  exec 'hi ALEErrorSign' . s:fg_red
  exec 'hi ALEWarningSign' . s:fg_yellow
  exec 'hi ALEInfoSign' . s:fg_blue
  exec 'hi ALEVirtualTextError' . s:fg_grey1
  exec 'hi ALEVirtualTextWarning' . s:fg_grey1
  exec 'hi ALEVirtualTextInfo' . s:fg_grey1
  exec 'hi ALEVirtualTextStyleError' . s:fg_grey1
  exec 'hi ALEVirtualTextStyleWarning' . s:fg_grey1
  "===============================================================
  " neomake/neomake
  "===============================================================
  exec 'hi NeomakeError' . s:fg_none  . s:undercurl . s:sp_red
  exec 'hi NeomakeErrorSign' . s:fg_red
  exec 'hi NeomakeWarning' . s:fg_none  . s:undercurl . s:sp_yellow
  exec 'hi NeomakeWarningSign' . s:fg_yellow
  exec 'hi NeomakeInfo'. s:fg_none. s:undercurl. s:sp_blue
  exec 'hi NeomakeInfoSign' . s:fg_blue
  exec 'hi NeomakeMessage' . s:fg_aqua
  exec 'hi NeomakeMessageSign' . s:fg_aqua
  exec 'hi NeomakeVirtualtextError' . s:fg_grey1
  exec 'hi NeomakeVirtualtextWarning' . s:fg_grey1
  exec 'hi NeomakeVirtualtextInfo' . s:fg_grey1
  exec 'hi NeomakeVirtualtextMessag' . s:fg_grey1
  "===============================================================
  " Shougo/denite.nvim
  "===============================================================
  exec 'hi deniteMatchedChar'. s:fg_green. s:bold
  exec 'hi deniteMatchedRange'. s:fg_green. s:bold.s:underline
  exec 'hi deniteInput'. s:fg_green. s:bg_bg4. s:bold
  exec 'hi deniteStatusLineNumber'. s:fg_purple. s:bg_bg4
  exec 'hi deniteStatusLinePath'. s:fg_fg0. s:bg_bg4
  exec 'hi deniteSelectedLin' . s:fg_green
  "===============================================================
  " liuchengxu/vista.vim
  "===============================================================
  exec 'hi VistaBracket' . s:fg_grey1
  exec 'hi VistaChildrenNr' . s:fg_orange
  exec 'hi VistaKind' . s:fg_purple
  exec 'hi VistaScope' . s:fg_red
  exec 'hi VistaScopeKind' . s:fg_blue
  exec 'hi VistaTag' . s:fg_green . s:bold
  exec 'hi VistaPrefix' . s:fg_grey1
  exec 'hi VistaColon' . s:fg_green
  exec 'hi VistaIcon' . s:fg_yellow
  exec 'hi VistaLineNr' . s:fg_fg0
  "===============================================================
  " airblade/vim-gitgutter
  "===============================================================
  exec 'hi GitGutterAdd' . s:fg_green  . s:bold
  exec 'hi GitGutterChange' . s:fg_blue  . s:bold
  exec 'hi GitGutterDelete' . s:fg_red  . s:bold
  exec 'hi GitGutterChangeDelete' . s:fg_purple  .s:bold
  "===============================================================
  " mhinz/vim-signify
  "===============================================================
  exec 'hi SignifySignAdd' . s:fg_green
  exec 'hi SignifySignChange' . s:fg_blue
  exec 'hi SignifySignDelete' . s:fg_red
  exec 'hi SignifySignChangeDelete' . s:fg_purple
  "===============================================================
  " scrooloose/nerdtree
  "===============================================================
  exec 'hi NERDTreeDir' . s:fg_green
  exec 'hi NERDTreeDirSlash' . s:fg_aqua
  exec 'hi NERDTreeOpenable' . s:fg_orange
  exec 'hi NERDTreeClosable' . s:fg_orange
  exec 'hi NERDTreeFile' . s:fg_fg0
  exec 'hi NERDTreeExecFile' . s:fg_yellow
  exec 'hi NERDTreeUp' . s:fg_grey1
  exec 'hi NERDTreeCWD' . s:fg_aqua
  exec 'hi NERDTreeToggleOn' . s:fg_green
  exec 'hi NERDTreeToggleOff' . s:fg_red
  exec 'hi NERDTreeFlags' . s:fg_orange
  exec 'hi NERDTreeLinkFile' . s:fg_grey1
  exec 'hi NERDTreeLinkTarget' . s:fg_green
  "===============================================================
  " easymotion/vim-easymotion
  "===============================================================
  exec 'hi EasyMotionTarget'. s:fg_bg0 . s:bg_green
  exec 'hi EasyMotionShade' . s:fg_grey1
  "===============================================================
  " mhinz/vim-startify
  "===============================================================
  exec 'hi StartifyBracket' . s:fg_grey1
  exec 'hi StartifyFile' . s:fg_fg0
  exec 'hi StartifyNumber' . s:fg_red
  exec 'hi StartifyPath' . s:fg_green
  exec 'hi StartifySlash' . s:fg_green
  exec 'hi StartifySection' . s:fg_blue
  exec 'hi StartifyHeader' . s:fg_orange
  exec 'hi StartifySpecial' . s:fg_grey1
  exec 'hi StartifyFooter' . s:fg_grey1
  "===============================================================
  " liuchengxu/vim-which-key
  "===============================================================
  exec 'hi WhichKey' . s:fg_red
  exec 'hi WhichKeySeperator' . s:fg_green
  exec 'hi WhichKeyGroup' . s:fg_yellow
  exec 'hi WhichKeyDesc' . s:fg_blue
  "===============================================================
  "kristijanhusak/vim-dadbod-ui
  "===============================================================
  exec 'hi dbui_tables' . s:fg_blue
  "===============================================================
  "Shougo/defx.nvim
  "===============================================================
  exec 'hi DefxIconsParentDirectory' . s:fg_orange
  exec 'hi Defx_filename_directory' . s:fg_blue
  exec 'hi Defx_filename_root' . s:fg_red
  "===============================================================
  "hardcoreplayers/dashboard-nvim
  "===============================================================
  exec 'hi DashboardShortCut' . s:fg_red . s:bold
  exec 'hi DashboardFooter' . s:fg_purple .s:bold
  exec 'hi DashboardHeader' . s:fg_blue .s:bold
  "===============================================================
  " voldkiss/vim-floaterm
  "===============================================================
  exec 'hi Floaterm' .s:fg_none . s:bg_bg0
  exec 'hi FloatermBorder' .s:fg_blue . s:bg_none

endfunction

command! -nargs=0 OceanicMaterial :call g:OceanicMaterial()

call s:set_color_variables()
call s:apply_syntax_highlightings()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
