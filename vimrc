" https://github.com/MeirKriheli/dotvim
"
" ==================================================
" Shortcuts Documented
" ==================================================
" jj - act as Esc in insert and command modes
" <CTRL> + [hjkl] and Control + Arrow Keys -  window movement commands
" <C-TAB> and <C-TAB> - Next or previous buffer
" <leader>v - loads .vimrc
" <leader>V - reloads .vimrec -- activating changes (needs save)
" <leader>S - Remove trailing whitespace
" <F4> - Toggle search highlight
" - and + - Resize horizontal splits
" <M>< and <M>< - Resize vertical splits
" <F2> - Close current split (window)
" <F3> - Toggle NERD tree
" <F4> - Toggle search highlight
" <F5> - Toggle Tagbar
" <F9> - Toggle logical (RTL, e.g: Hebrew) editing
" <F8> - Toggle visual (RTL, e.g: Hebrew) editing

set nocompatible

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
Plugin 'argent-smith/JSON.vim'
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
Plugin 'bling/vim-airline'
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

call vundle#end()            " required

" ==================================================
" Color scheme and fonts
" ==================================================
colorscheme solarized
set background=dark

if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 9
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
    "let g:solarized_termcolors=256
    let g:solarized_termtrans=1
endif

let g:solarized_contrast="high"
let g:solarized_visibility="high"


" ==================================================
" Basic Settings
" ==================================================
let mapleader=","       " change the leader to be a comma vs slash
set textwidth=80        " Try this out to see how textwidth helps
set ch=2                " Make command line two lines high
set ls=2                " allways show status line
set scrolloff=3         " keep 3 lines when scrolling
set cursorline          " have a line indicate the cursor location
set cindent             " cindent
set autoindent          " always set autoindenting on
set showcmd             " display incomplete commands
set ruler               " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set visualbell
set nobackup            " do not keep a backup file
set number              " show line numbers
set title               " show title in console title bar
set ttyfast             " smoother changes
set modeline            " last lines in document sets vim mode
set modelines=3         " number lines checked for modelines
set shortmess=atI       " Abbreviate messages
set nostartofline       " don't jump to first character when paging
set backspace=indent,eol,start
set matchpairs+=<:>     " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set sm                  " show matching braces, somewhat annoying...
set mouse=a
set ttymouse=xterm2
set history=500         " larger history
set noshowmode          " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeout ttimeoutlen=50


set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

set wildmenu                             " show list instead of just completing
set wildmode=list:longest,full           " command <Tab> completion, list matches, then longest common part, then all.
set completeopt=menu                     " Just show the menu upon completion (faster)

" Columns and lines, only from vim >= 7.3
if version >= 703
    set colorcolumn=80
endif

if has("gui_running")
    set lines=75
    set columns=180
endif

" Tab expanded to 4 spaces
set tabstop=4           " numbers of spaces of tab character
set shiftwidth=4        " numbers of spaces to (auto)indent
set expandtab		    " Tab to spaces by default
set softtabstop=4

" Keep swap files out of the working dir
" Adjust if needed in another dir
set directory=~/tmp

syntax on
filetype plugin on
filetype indent plugin on


" ==================================================
" Basic Mappings
" ==================================================

" Maps for jj to act as Esc in insert and command modes
ino jj <esc>
cno jj <c-c>

" One can map ctrl-c to something else if needed
map <c-c> <Nop>
imap <c-c> <Nop>

" ==================================================
" vimrc handling
" ==================================================

" ,v loads .vimrc
" ,V reloads .vimrc -- activating changes (needs save)
map <leader>v :sp ~/.vimrc<CR><C-W>_
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" ==================================================
" Search settings
" ==================================================

set hlsearch    " highlight searches
set incsearch   " do incremental searching
set ignorecase  " ignore case when searching
set smartcase   " if searching and search contains upper case, make case sensitive search

" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>


" ==================================================
" Trailing whitespace handling
" ==================================================

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" Clean all end of line extra whitespace with ,S
:nnoremap <silent><leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" ==================================================
" MiniBufExplorer settings
" ==================================================

"let g:miniBufExplUseSingleClick = 1     " Single click on tabs to goto the selected buffer
let g:miniBufExplModSelTarget = 1       " If using other explorers like TagList

" ==================================================
" Window navigation
" ==================================================

" control + vim direction key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" control + arrow key to navigate windows
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

" <C-TAB> and <C-S-TAB> to switch buffers " in the current window
noremap <C-TAB> :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>
"
" Or, in MRU fashion
"
"noremap <C-TAB> :MBEbf<CR>
"noremap <C-S-TAB> :MBEbb<CR>


" ==================================================
" Splits handling
" ==================================================

" Make these all work in insert mode
imap <C-W> <C-O><C-W>

" - and + to resize horizontal splits
map - <C-W>-
map + <C-W>+

" alt-< or alt-> for vertical splits
map <m-,> <C-W>>
map <m-.> <C-W><

" And for gnome terminal etc
map , <C-W>>
map . <C-W><

" F2 close current split (window)
noremap <F2> <Esc>:close<CR><Esc>


" ==================================================
" Right-to-Left (Hebrew etc) shortcuts
" ==================================================

" toggle direction mapping
" this is useful for logical-order editing
map <F9>   :set invrl<CR>
" do it when in insert mode as well (and return to insert mode)
imap <F9> <Esc>:set invrl<CR>a

" toggle reverse insertion
" this is useful for visual-order editing
map <F8>   :set invrevins<CR>
" do it when in insert mode as well (and return to insert mode)
imap <F8> <Esc>:set invrevins<CR>a


" ==================================================
" FileType and Indentation settings
" ==================================================

" define less filetype
au BufNewFile,BufRead *.less set filetype=less

" make the smarty .tpl files html files for our purposes
au BufNewFile,BufRead *.tpl set filetype=html

" json
au! BufRead,BufNewFile *.json set filetype=json

" jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype xhtml setlocal ts=2 sw=2 expandtab
autocmd Filetype xml setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype less setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" snipMate
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate


" ==================================================
" Tagbar Mapping
" ==================================================

nmap <F5> :TagbarToggle<CR>

" ==================================================
" NERDTree
" ==================================================

let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
map <F3> :NERDTreeToggle<CR>

" ==================================================
" Omni Completion
" ==================================================

set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" ==================================================
" SuperTab
" ==================================================

let g:SuperTabDefaultCompletionType = "context"


" ==================================================
" CtrlP
" ==================================================

set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo
let g:ctrlp_custom_ignore = 'node_modules\|bower_components'

" ==================================================
" Ack
" ==================================================

nmap g/ :Ack<space>
nmap g* :Ack -w <C-R><C-W><space>
nmap ga :AckAdd!<space>


" ==================================================
" Transparent editing of gpg encrypted files.
" ==================================================
"
augroup encrypted
au!
" First make sure nothing is written to ~/.viminfo while editing
" an encrypted file.
autocmd BufReadPre,FileReadPre      *.gpg set viminfo=
" We don't want a swap file, as it writes unencrypted data to disk
autocmd BufReadPre,FileReadPre      *.gpg set noswapfile
" Switch to binary mode to read the encrypted file
autocmd BufReadPre,FileReadPre      *.gpg set bin
autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
autocmd BufReadPre,FileReadPre      *.gpg let shsave=&sh
autocmd BufReadPre,FileReadPre      *.gpg let &sh='sh'
autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
autocmd BufReadPost,FileReadPost    *.gpg '[,']!gpg --decrypt --default-recipient-self 2> /dev/null
autocmd BufReadPost,FileReadPost    *.gpg let &sh=shsave
" Switch to normal mode for editing
autocmd BufReadPost,FileReadPost    *.gpg set nobin
autocmd BufReadPost,FileReadPost    *.gpg let &ch = ch_save|unlet ch_save
autocmd BufReadPost,FileReadPost    *.gpg execute ":doautocmd BufReadPost " . expand("%:r")
" Convert all text to encrypted text before writing
autocmd BufWritePre,FileWritePre    *.gpg set bin
autocmd BufWritePre,FileWritePre    *.gpg let shsave=&sh
autocmd BufWritePre,FileWritePre    *.gpg let &sh='sh'
autocmd BufWritePre,FileWritePre    *.gpg '[,']!gpg --encrypt --default-recipient-self 2>/dev/null
autocmd BufWritePre,FileWritePre    *.gpg let &sh=shsave
" Undo the encryption so we are back in the normal text, directly
" after the file has been written.
autocmd BufWritePost,FileWritePost  *.gpg silent u
autocmd BufWritePost,FileWritePost  *.gpg set nobin
augroup END

" ==================================================
" Fix meta key in terminal
" fix meta-keys which generate <Esc>a .. <Esc>z
" ==================================================
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw


" ==================================================
" airline, use powerline fonts
" ==================================================
let g:airline_powerline_fonts = 1

" ==================================================
" No modlines for security
" ==================================================
set modelines=0
set nomodeline

" ==================================================
" Disable python-mode rope completion (using Jedi)
" Disable folding
" Don't trim whitespace on save
" ==================================================
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 0

" ==================================================
" jedi-vim use splits instead of tabs
" ==================================================
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "right"

" ==================================================
" gr opens Fuzzy tags search
" ==================================================
nmap gr :CtrlPBufTag<CR>

" ==================================================
" Allow overrides via ~/.vim/vimrc.local
" ==================================================
if filereadable(expand("~/.vim/vimrc.local"))
    source ~/.vim/vimrc.local
endif
