if(exists("g:loaded_better_asterisk_remap"))
    finish
endif
let g:loaded_better_asterisk_remap = 1

function! AsteriskNormal() abort
    let old=@"
    normal! yiw
    let @/="\\V\\C\\<".escape(@", '/\')."\\>"
    set hlsearch
    let @"=old
    redraw!
    echo "/".@/
endfunction
function! AsteriskVisual() abort
    let old=@"
    normal! gvy
    let @/="\\V\\C".escape(@", '/\')
    set hlsearch
    let @"=old
    redraw!
    echo "/".@/
endfunction
nnoremap * <cmd>call AsteriskNormal()<CR>
vnoremap * <cmd>call AsteriskVisual()<CR>