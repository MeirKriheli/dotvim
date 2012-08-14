" Make sure this pathogen is taken into account
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Keep swap files out of the working dir
" Adjust if needed in another dir
set directory=~/tmp

syntax on
filetype indent plugin on

if has("gui_running")
    set guifont=Liberation\ Mono\ 9" use this font
    colorscheme solarized
    set background=light
else
    colorscheme solarized
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
endif
