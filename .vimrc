"
"             __                __          
"     __   __/_/___ ___  ____  / /_  _______
"     \ \ / / / __ `__ \/ __ \/ / / / / ___/
"      \ V / / / / / / / /_/ / / /_/ (__  )
"       \_/_/_/ /_/ /_/ ,___/_/\____/____/
"                    /_/
"            
"
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vimplus
" Create Date: 2016-04-10
" License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax   " 设置基于语法进行代码折叠
set nofoldenable        " 关闭折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'chxuan/cppfun'
Plug 'chxuan/change-colorscheme'
Plug 'chxuan/prepare-code'
Plug 'chxuan/vim-buffer'
Plug 'chxuan/vimplus-startify'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rkulla/pydiction'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/txt.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'sgur/vim-textobj-parameter'
Plug 'Shougo/echodoc.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'rhysd/clever-f.vim'
Plug 'rhysd/github-complete.vim'

call plug#end()            

" load vim default plugin
runtime macros/matchit.vim

" 编辑vimrc文件
nnoremap <leader>e :edit $MYVIMRC<cr>

" 查看vimplus的help文件
nnoremap <leader>h :edit ~/.vimplus/help.md<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" 主题
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" cppfun
nnoremap <leader>y :CopyFun<cr>
nnoremap <leader>p :PasteFun<cr>
nnoremap <leader>U :GoToDefinition<cr>
nnoremap <leader><leader>fp :FormatFunParam<cr>
nnoremap <leader><leader>if :FormatIf<cr>

" change-colorscheme
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

" prepare-code
let g:prepare_code_plugin_path = expand($HOME . "/.vim/plugged/prepare-code")

" vim-buffer
nnoremap <c-p> :PreviousBuffer<cr>
nnoremap <c-n> :NextBuffer<cr>
nnoremap <leader>d :CloseCurrentBuffer<cr>
nnoremap <leader>D :BufOnly<cr>

" nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" YCM
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
" 已经使用cppfun插件提供的转到函数实现的功能
" nnoremap <leader>i :YcmCompleter GoToDefinition<cr> 
nnoremap <leader>o :YcmCompleter GoToInclude<cr>
nnoremap <leader>ff :YcmCompleter FixIt<cr>
nmap <F5> :YcmDiags<cr>

" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

" a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <leader>a :A<cr>

" tagbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" markdown
let uname = system('uname -s')
if uname == "Darwin\n"
    let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
else
    let g:mkdp_path_to_chrome = '/usr/bin/google-chrome-stable %U'
endif
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" pydiction
let g:pydiction_location='~/.vim/plugged/pydiction/complete-dict'
let g:pydiction_menu_height=10

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" LeaderF
nnoremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

" ack
nnoremap <Leader>F :Ack!<space>

" echodoc.vim
let g:echodoc_enable_at_startup = 1

" tabular
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-j>'
let g:multi_cursor_start_key           = 'g<C-j>'
let g:multi_cursor_select_all_key      = 'g<A-j>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-k>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif
