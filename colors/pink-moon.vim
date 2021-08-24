" Pink Moon Theme

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "pink-moon"
set background=dark

" dark theme background
let s:newmoon = "2a2e38"
" line number background, file explorer selection
let s:halfmoon = "333C47"
" file address background, visual selection
let s:fullmoon = "434852"

let s:salmon = "D08785"
let s:pink = "FCDBD9"

let s:deep_sea_blue = "6d7b8b"
let s:teal = "6F98B3"
" let s:sea_blue = 9DB1C7
let s:shallow_blue = "a6b8cc"

let s:yellow = "FDF8CE"
let s:starlight = "F0FDFF"

let s:cliquot = "FFd17f"

" There are colors for Neovim's terminal emulator
if has("nvim")
  let g:terminal_color_0 = "#252932"
  let g:terminal_color_1 = "#9dd6f4"
  let g:terminal_color_2 = "#6E7B87"
  let g:terminal_color_3 = "#5F7C99"
  let g:terminal_color_4 = "#edd98f"
  let g:terminal_color_5 = "#f8f8f2"
  let g:terminal_color_6 = "#9dd6f4"
  let g:terminal_color_7 = "#f8f8f2"
  let g:terminal_color_8 = "#edd98f"
  let g:terminal_color_9 = "#608DAB"
  let g:terminal_color_10 = "#f8f8f2"
  let g:terminal_color_11 = "#9dd6f4"
  let g:terminal_color_12 = "#608DAB"
  let g:terminal_color_13 = "#5673BE" 
  let g:terminal_color_14 = "#5673BE"
  let g:terminal_color_15 = "#5673BE"
  let g:terminal_color_16 ="#333C47"
  let g:terminal_color_background="#333C47"
  let g:terminal_color_foreground="#eee"
endif

" Terminal color definitions

" dark theme background: 25,25,25 
let s:cterm00 = "00"

" comments, inactive vim window text: 128, 167, 140
let s:cterm03 = "02"

" puts, parameters, and method calls: 248,248,242
let s:cterm05 = "07"

" light theme background
let s:cterm07 = "15"

" instance variables, Python defs (and maybe if / elses): 236, 105, 32
let s:cterm08 = "11"

" class names, object names, while, end, template variables: 236, 215, 149
let s:cterm0A = "11"

" Ruby strings: 161,215,242
let s:cterm0B = "12"

" hex colors: 115, 228, 246
let s:cterm0C = "14"

" method names in definitions: 247,197,39
let s:cterm0D = "03"

" ruby def: 236, 105, 32
let s:cterm0E = "09"


if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  " Vim inactive window name background
  let s:cterm01 = "08"

  " Light background markdown text color plus
  " Vim window borders and active widnow background
  let s:cterm02 = "08"

  " Active vim window name (text)
  let s:cterm04 = "03"

  " vim borders in light mode"
  let s:cterm06 = "00"

  " integer: 115, 228, 246
  let s:cterm09 = "14"

  " backticks in markdown, probably some other stuff
  let s:cterm0F = "03"
endif


" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return GUI color for light/dark variants
fun s:gui(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:newmoon
    return s:cliquot
  elseif a:color == s:halfmoon
    return s:shallow_blue
  elseif a:color == s:fullmoon
    return s:starlight
  elseif a:color == s:shallow_blue
    return s:pink
  elseif a:color == s:pink
    return s:shallow_blue
  elseif a:color == s:starlight
    return s:fullmoon
  elseif a:color == s:shallow_blue
    return s:halfmoon
  elseif a:color == s:cliquot
    return s:newmoon
  endif

  return a:color
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:cterm00
    return s:cterm07
  elseif a:color == s:cterm01
    return s:cterm06
  elseif a:color == s:cterm02
    return s:cterm05
  elseif a:color == s:cterm03
    return s:cterm04
  elseif a:color == s:cterm04
    return s:cterm03
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm06
    return s:cterm01
  elseif a:color == s:cterm07
    return s:cterm00
  endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:salmon, "", s:cterm08, "", "")
call <sid>hi("Directory",     s:pink, "", s:cterm0D, "", "")
call <sid>hi("ErrorMsg",      s:salmon, s:newmoon, s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:salmon, "", s:cterm08, "", "")
call <sid>hi("FoldColumn",    "", s:halfmoon, "", s:cterm01, "")
call <sid>hi("Folded",        s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "")
call <sid>hi("IncSearch",     s:halfmoon, s:teal, s:cterm01, s:cterm09, "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:salmon, "", s:cterm08, "", "")
call <sid>hi("MatchParen",    s:newmoon, s:shallow_blue, s:cterm00, s:cterm03,  "")
call <sid>hi("ModeMsg",       s:yellow, "", s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:yellow, "", s:cterm0B, "", "")
call <sid>hi("Question",      s:teal, "", s:cterm09, "", "")
call <sid>hi("Search",        s:shallow_blue, s:pink, s:cterm03, s:cterm0A,  "")
call <sid>hi("SpecialKey",    s:shallow_blue, "", s:cterm03, "", "")
call <sid>hi("TooLong",       s:salmon, "", s:cterm08, "", "")
call <sid>hi("Underlined",    s:salmon, "", s:cterm08, "", "")
call <sid>hi("Visual",        "", s:fullmoon, "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:salmon, "", s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:salmon, "", s:cterm08, "", "")
call <sid>hi("WildMenu",      s:salmon, "", s:cterm08, "", "")
call <sid>hi("Title",         s:pink, "", s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:pink, s:newmoon, s:cterm0D, s:cterm00, "")
call <sid>hi("Cursor",        s:newmoon, s:starlight, s:cterm00, s:cterm05, "")
call <sid>hi("NonText",       s:shallow_blue, "", s:cterm03, "", "")
call <sid>hi("Normal",        s:starlight, s:newmoon, s:cterm05, s:cterm00, "")
call <sid>hi("LineNr",        s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "")
call <sid>hi("SignColumn",    s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "")
call <sid>hi("SpecialKey",    s:shallow_blue, "", s:cterm03, "", "")
call <sid>hi("StatusLine",    s:pink, s:fullmoon, s:cterm04, s:cterm02, "none")
call <sid>hi("StatusLineNC",  s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "none")
call <sid>hi("VertSplit",     s:fullmoon, s:fullmoon, s:cterm02, s:cterm02, "none")
call <sid>hi("ColorColumn",   "", s:halfmoon, "", s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:halfmoon, "", s:cterm01, "none")
call <sid>hi("CursorLine",    "", s:halfmoon, "", s:cterm01, "none")
call <sid>hi("CursorLineNr",  s:pink, s:fullmoon, s:cterm03, s:cterm01, "")
call <sid>hi("PMenu",         s:pink, s:halfmoon, s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:halfmoon, s:pink, s:cterm01, s:cterm04, "")
call <sid>hi("TabLine",       s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:shallow_blue, s:halfmoon, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:yellow, s:halfmoon, s:cterm0B, s:cterm01, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:teal, "", s:cterm09, "", "")
call <sid>hi("Character",    s:salmon, "", s:cterm08, "", "")
call <sid>hi("Comment",      s:deep_sea_blue, "", s:cterm03, "", "")
call <sid>hi("Conditional",  s:teal, "", s:cterm0E, "", "")
call <sid>hi("Constant",     s:salmon, "", s:cterm09, "", "")
call <sid>hi("Define",       s:teal, "", s:cterm0E, "", "none")
call <sid>hi("Delimiter",    s:starlight, "", s:cterm0F, "", "")
call <sid>hi("Float",        s:teal, "", s:cterm09, "", "")
call <sid>hi("Function",     s:pink, "", s:cterm0D, "", "")
call <sid>hi("Identifier",   s:salmon, "", s:cterm08, "", "none")
call <sid>hi("Include",      s:pink, "", s:cterm0D, "", "")
call <sid>hi("Keyword",      s:salmon, "", s:cterm0E, "", "")
call <sid>hi("Label",        s:pink, "", s:cterm0A, "", "")
call <sid>hi("Number",       s:shallow_blue, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:salmon, "", s:cterm05, "", "none")
call <sid>hi("PreProc",      s:pink, "", s:cterm0A, "", "")
call <sid>hi("Repeat",       s:pink, "", s:cterm0A, "", "")
call <sid>hi("Special",      s:cliquot, "", s:cterm0C, "", "")
call <sid>hi("SpecialChar",  s:cliquot, "", s:cterm0F, "", "")
call <sid>hi("Statement",    s:teal, "", s:cterm08, "", "")
call <sid>hi("StorageClass", s:pink, "", s:cterm0A, "", "")
call <sid>hi("String",       s:yellow, "", s:cterm0B, "", "")
call <sid>hi("Structure",    s:teal, "", s:cterm0E, "", "")
call <sid>hi("Tag",          s:pink, "", s:cterm0A, "", "")
call <sid>hi("Todo",         s:pink, s:halfmoon, s:cterm0A, s:cterm01, "")
call <sid>hi("Type",         s:teal, "", s:cterm09, "", "none")
call <sid>hi("Typedef",      s:pink, "", s:cterm0A, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:newmoon, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:newmoon, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:newmoon, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:newmoon, "", s:cterm00, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:yellow, s:newmoon, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffChange",   s:pink, s:newmoon, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffDelete",   s:salmon, s:newmoon, s:cterm08, s:cterm00, "")
call <sid>hi("DiffText",     s:pink, s:newmoon, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffAdded",    s:yellow, s:newmoon, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:salmon, s:newmoon, s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:yellow, s:newmoon, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:pink, s:newmoon, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:salmon, s:newmoon, s:cterm08, s:cterm00, "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:pink, "", s:cterm0D, "", "")
call <sid>hi("rubyConstant",                s:pink, "", s:cterm0A, "", "")
call <sid>hi("rubyInterpolation",           s:pink, "", s:cterm0B, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:teal, "", s:cterm0F, "", "")
call <sid>hi("rubyRegexp",                  s:yellow, "", s:cterm0C, "", "")
call <sid>hi("rubySymbol",                  s:salmon, "", s:cterm0B, "", "")
call <sid>hi("rubyStringDelimiter",         s:yellow, "", s:cterm0B, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:starlight, "", s:cterm05, "", "")
call <sid>hi("phpComparison",      s:starlight, "", s:cterm05, "", "")
call <sid>hi("phpParent",          s:starlight, "", s:cterm05, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:pink, "", s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:teal, "", s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:starlight, "", s:cterm05, "", "")
call <sid>hi("htmlTag",     s:starlight, "", s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:starlight, "", s:cterm05, "", "")
call <sid>hi("cssClassName",   s:salmon, "", s:cterm0E, "", "")
call <sid>hi("cssClassNameDot",   s:salmon, "", s:cterm0E, "", "")
call <sid>hi("cssPseudoClassId",   s:salmon, "", s:cterm0E, "", "")
call <sid>hi("cssTagName",   s:salmon, "", s:cterm0E, "", "")
call <sid>hi("cssColor",       s:yellow, "", s:cterm0C, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:salmon, "", s:cterm08, "", "")
call <sid>hi("sassClassChar",  s:teal, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:teal, "", s:cterm0E, "", "")
call <sid>hi("sassMixing",     s:teal, "", s:cterm0E, "", "")
call <sid>hi("sassMixinName",  s:pink, "", s:cterm0D, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:starlight, "", s:cterm05, "", "")
call <sid>hi("javaScriptBraces",  s:starlight, "", s:cterm05, "", "")
call <sid>hi("javaScriptNumber",  s:teal, "", s:cterm09, "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:teal, "", s:cterm0E, "", "")
call <sid>hi("pythonRepeat",    s:teal, "", s:cterm0E, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:yellow, "", s:cterm0B, "", "")
call <sid>hi("markdownError",             s:starlight, s:newmoon, s:cterm05, s:cterm00, "")
call <sid>hi("markdownCodeBlock",         s:yellow, "", s:cterm0B, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:pink, "", s:cterm0D, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:salmon, "", s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:yellow, "", s:cterm0B, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:yellow, s:halfmoon, s:cterm0B, s:cterm01, "")
call <sid>hi("GitGutterChange",  s:pink, s:halfmoon, s:cterm0D, s:cterm01, "")
call <sid>hi("GitGutterDelete",  s:salmon, s:halfmoon, s:cterm08, s:cterm01, "")
call <sid>hi("GitGutterChangeDelete",  s:teal, s:halfmoon, s:cterm0E, s:cterm01, "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:yellow, s:halfmoon, s:cterm0B, s:cterm01, "")
call <sid>hi("SignifySignChange",  s:pink, s:halfmoon, s:cterm0D, s:cterm01, "")
call <sid>hi("SignifySignDelete",  s:salmon, s:halfmoon, s:cterm08, s:cterm01, "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:pink, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:starlight, "", s:cterm05, "", "")

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:newmoon s:halfmoon s:fullmoon s:shallow_blue  s:pink  s:starlight  s:cliquot  s:salmon  s:teal  s:yellow
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
