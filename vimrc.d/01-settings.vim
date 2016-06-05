" ==================================================
" Basic Settings
" ==================================================
let mapleader="\<Space>" " change the leader to be a space vs slash
set textwidth=80         " Try this out to see how textwidth helps
set ch=2                 " Make command line two lines high
set ls=2                 " allways show status line
set scrolloff=3          " keep 3 lines when scrolling
set cursorline           " have a line indicate the cursor location
set cindent              " cindent
set autoindent           " always set autoindenting on
set showcmd              " display incomplete commands
set ruler                " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set visualbell
set nobackup             " do not keep a backup file
set number               " show line numbers
set title                " show title in console title bar
set ttyfast              " smoother changes
set modeline             " last lines in document sets vim mode
set shortmess=atI        " Abbreviate messages
set nostartofline        " don't jump to first character when paging
set backspace=indent,eol,start
set matchpairs+=<:>      " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set sm                   " show matching braces, somewhat annoying...
set mouse=a
set ttymouse=xterm2
set history=500          " larger history
set noshowmode           " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeout ttimeoutlen=50

set splitright           " Splits to the right

set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set completeopt=menu            " Just show the menu upon completion (faster)

set directory=~/tmp      " Keep swap files out of the working dir, Adjust if needed in another dir

syntax on
filetype plugin on
filetype indent plugin on

if version >= 703        " Columns and lines, only from vim >= 7.3
    set colorcolumn=80
endif

if has("gui_running")
    set lines=75
    set columns=180
endif

" ==================================================
" Tab expanded to 4 spaces
" ==================================================
set tabstop=4            " numbers of spaces of tab character
set shiftwidth=4         " numbers of spaces to (auto)indent
set expandtab		     " Tab to spaces by default
set softtabstop=4

" ==================================================
" Search settings
" ==================================================
set hlsearch             " highlight searches
set incsearch            " do incremental searching
set ignorecase           " ignore case when searching
set smartcase            " if searching and search contains upper case, make case sensitive search


" ==================================================
" No modlines for security
" ==================================================
set modelines=0
set nomodeline

" ==================================================
" Trailing whitespace handling
" ==================================================

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
