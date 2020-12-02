if(exists("g:loaded_better_asterisk_remap"))
    finish
endif
let g:loaded_better_asterisk_remap = 1

nnoremap * :let old=@"<CR>yiw:let @/="\\V\\C\\<".escape(@", '/\')."\\>"<CR>:set hlsearch<CR>:let @"=old<CR>:redraw!<CR>:echo "/".@/<CR>

vnoremap * :<C-U>let old=@"<CR>gvy:let @/="\\V\\C".escape(@", '/\')<CR>:set hlsearch<CR>:let @"=old<CR>:redraw!<CR>:echo "/".@/<CR>

