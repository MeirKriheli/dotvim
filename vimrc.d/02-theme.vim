" ==================================================
" Color scheme and fonts
" ==================================================
let g:rehash256 = 1
set background=dark
colorscheme molokai

if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 9
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
    let g:solarized_termtrans=1
endif

let g:solarized_contrast="high"
let g:solarized_visibility="high"

let base16colorspace=256
