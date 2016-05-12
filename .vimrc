"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set t_Co=256
set cul 
set shortmess=atI   
autocmd InsertEnter * se cul    
set ruler           
set showcmd         
set scrolloff=3     
set laststatus=2
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set autoread
set completeopt=preview,menu 
set autowrite
set magic                   
set guioptions-=T           
set guioptions-=m           
set nocompatible
set noeb
set confirm
set nobackup
set noswapfile
set ignorecase
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set completeopt=longest,menu
set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
filetype on
filetype plugin on
filetype indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()" 
func SetTitle() 
	if expand("%:e") == 'sh'
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 
    elseif expand("%:e") == 'cpp'
		call setline(1,"#include <iostream>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'cc'
		call setline(1,"#include <iostream>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'c'
		call setline(1,"#include <stdio.h>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'h'
		call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
		call setline(2, "#define _".toupper(expand("%:r"))."_H")
		call setline(3, "#endif")
    elseif expand("%:e") == 'hpp'
		call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
		call setline(2, "#define _".toupper(expand("%:r"))."_H")
		call setline(3, "#endif")
	endif
endfunc 
autocmd BufNewFile * normal G

" Vundle
set nocompatible              
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'vim-scripts/SQLComplete.vim'
Bundle 'vim-scripts/txt.vim'

call vundle#end()            
filetype plugin indent on    

" nerdtree
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Doxygen
let g:DoxygenToolkit_authorName="highway-9, 787280310@qq.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_commentType="Qt"

" YCM
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
"let g:ycm_cache_omnifunc = 0 
let mapleader = "f"
nnoremap <leader>o :YcmCompleter GoToInclude<CR>
nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
nmap <F5> :YcmDiags<CR>

"a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <F2> :A<CR>

" tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
map <F4> :TagbarToggle<CR>
imap <F4> <ESC> :TagbarToggle<CR>

" colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme monokai

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" airline
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

"ctrlp
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = ':CtrlP'
let g:ctrlp_working_path_mode = '0'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
