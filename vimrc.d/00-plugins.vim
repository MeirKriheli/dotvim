" ==================================================
" Vundle setup
" ==================================================
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/DrawIt'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/Shebang'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/css3-mod'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'vim-scripts/Jinja'
Plugin 'vim-scripts/jQuery'
Plugin 'vim-scripts/matchit.zip'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/po.vim--Jelenak'
Plugin 'honza/vim-snippets'
Plugin 'nono/vim-handlebars'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-unimpaired'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-repeat'
Plugin 'gregsexton/MatchTag'
Plugin 'elzr/vim-json'
Plugin 'marijnh/tern_for_vim'
Plugin 'chriskempson/base16-vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
