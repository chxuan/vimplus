autocmd BufEnter .vimrc execute ":call EnterVimrc()"
autocmd BufLeave .vimrc execute ":call LeaveVimrc()"

let s:lines = []

function! EnterVimrc()
    if match(getline(18), "vimplus") != -1
        call timer_start(0, 'HighlightLogoAsync', {'repeat': 1})
    endif
endfunction

function! LeaveVimrc()
    call clearmatches()
endfunction

function! HighlightLogoAsync(id)
    call timer_stop(a:id)
    call <sid>highlight_logo()
endfunction

function! s:highlight_logo()
    highlight default 87a231 ctermfg=87 ctermbg=231 cterm=bold
    highlight default 130a83 ctermfg=130 ctermbg=83 cterm=bold
    highlight default 37a87 ctermfg=37 ctermbg=87 cterm=bold
    highlight default 248a87 ctermfg=248 ctermbg=87 cterm=bold
    highlight default 87a248 ctermfg=87 ctermbg=248 cterm=bold
    highlight default 240a37 ctermfg=240 ctermbg=37 cterm=bold
    highlight default 83a37 ctermfg=83 ctermbg=37 cterm=bold
    highlight default 248a83 ctermfg=248 ctermbg=83 cterm=bold
    highlight default 130a248 ctermfg=130 ctermbg=248 cterm=bold
    highlight default 248a240 ctermfg=248 ctermbg=240 cterm=bold
    highlight default 34a83 ctermfg=34 ctermbg=83 cterm=bold
    highlight default 37a240 ctermfg=37 ctermbg=240 cterm=bold
    highlight default 87a37 ctermfg=87 ctermbg=37 cterm=bold
    highlight default 231a248 ctermfg=231 ctermbg=248 cterm=bold
    highlight default 83a87 ctermfg=83 ctermbg=87 cterm=bold
    highlight default 37a248 ctermfg=37 ctermbg=248 cterm=bold
    highlight default 34a37 ctermfg=34 ctermbg=37 cterm=bold
    highlight default 248a37 ctermfg=248 ctermbg=37 cterm=bold
    highlight default 248a231 ctermfg=248 ctermbg=231 cterm=bold
    highlight default 130a240 ctermfg=130 ctermbg=240 cterm=bold
    highlight default 37a83 ctermfg=37 ctermbg=83 cterm=bold
    highlight default 240a248 ctermfg=240 ctermbg=248 cterm=bold
    highlight default 240a130 ctermfg=240 ctermbg=130 cterm=bold
    highlight default 87a83 ctermfg=87 ctermbg=83 cterm=bold

    if empty(s:lines)
        " let s:lines = readfile(expand($HOME . "/.vim/ftplugin/vim/vimplus_logo_light.txt"))
        let s:lines = readfile(expand($HOME . "/.vim/ftplugin/vim/vimplus_logo_black.txt"))
    endif

    for line in s:lines
        let ret = split(line, "-")
        call matchaddpos(ret[2], [[ret[0], ret[1] + 2]], 10, -1)
    endfor
endfunction
