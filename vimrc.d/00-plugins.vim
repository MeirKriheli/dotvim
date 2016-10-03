" ==================================================
" vim-plug  setup
" ==================================================
call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'klen/python-mode'
Plug 'vim-scripts/DrawIt'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/Shebang'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/css3-mod'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/TaskList.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/po.vim--Jelenak'
Plug 'honza/vim-snippets'
Plug 'nono/vim-handlebars'
Plug 'powerman/vim-plugin-viewdoc'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'tomtom/tcomment_vim'
Plug 'davidhalter/jedi-vim'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'jelera/vim-javascript-syntax'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-repeat'
Plug 'gregsexton/MatchTag'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go'

" Over 70 language packs
Plug 'sheerun/vim-polyglot'

let g:dotvim_ycm_build_command = get(g:, 'dotvim_ycm_build_command', './install.py')

Plug 'Valloric/YouCompleteMe', { 'do': dotvim_ycm_build_command}

call plug#end()
