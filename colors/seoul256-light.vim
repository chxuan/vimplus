" "  _____             _ ___ ___ ___            "
" " |   __|___ ___ _ _| |_  |  _|  _|           "
" " |__   | -_| . | | | |  _|_  | . |           "
" " |_____|___|___|___|_|___|___|___|-light.vim "
"
" " Low-contrast light Vim color scheme using Seoul Colors "
"
" File:         seoul256-light.vim
" URL:          github.com/junegunn/seoul256.vim
" Author:       Junegunn Choi (junegunn.c@gmail.com)
" License:      MIT
"
" Copyright (c) 2017 Junegunn Choi
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:master    = expand('<sfile>:p:h').'/seoul256.vim'
let s:custom_bg = get(g:, 'seoul256_light_background', get(g:, 'seoul256_background', 253))
let s:light     = s:custom_bg >= 252 && s:custom_bg <= 256
let s:var_found = exists('g:seoul256_background')
let s:light_var_found = exists('g:seoul256_light_background')

if filereadable(s:master)
  try
    " Backup current g:seoul256_background
    if s:var_found
      let s:backup = g:seoul256_background
    endif

    " Invalid range. Force the default light version.
    if !s:light && s:var_found
      unlet g:seoul256_background
    endif

    " g:seoul256_light_background is found, use it
    if s:light && s:light_var_found
      let g:seoul256_background = s:custom_bg
    endif

    if get(g:, 'colors_name', '') == 'seoul256-light' && &background == 'dark'
      set background=dark
    else
      set background=light
    endif
    let g:colors_name = 'seoul256'
    execute 'silent source' fnameescape(s:master)
    let g:colors_name = &background == 'dark' ? 'seoul256' : 'seoul256-light'
  finally
    " Revert g:seoul256_background
    if s:var_found
      let g:seoul256_background = s:backup
    endif
  endtry
else
  echom 'seoul256.vim not found'
endif

