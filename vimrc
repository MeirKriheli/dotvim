" ==================================================
" Shortcuts Documented
" ==================================================
" jj - act as Esc in insert and command modes
" Control + [hjkl] and Control + Arrow Keys -  window movement commands
" <C-TAB> and <C-TAB> - Next or previous buffer
" <leader>v - loads .vimrc
" <leader>V - reloads .vimrec -- activating changes (needs save)


" Make sure this pathogen is taken into account
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Keep swap files out of the working dir
" Adjust if needed in another dir
set directory=~/tmp

syntax on
filetype indent plugin on

" Color scheme and fonts
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


" ==================================================
" Basic Settings
" ==================================================
let mapleader=","       " change the leader to be a comma vs slash
set textwidth=80        " Try this out to see how textwidth helps
set ch=2                " Make command line two lines high
set ls=2                " allways show status line
set scrolloff=3         " keep 3 lines when scrolling
set cursorline        " have a line indicate the cursor location
set cindent             " cindent
set autoindent          " always set autoindenting on
set showcmd             " display incomplete commands
set ruler               " show the cursor position all the time
set visualbell
set nobackup            " do not keep a backup file
set number              " show line numbers
set title               " show title in console title bar
set ttyfast             " smoother changes
set modeline            " last lines in document sets vim mode
set modelines=3         " number lines checked for modelines
set shortmess=atI       " Abbreviate messages
set nostartofline       " don't jump to first character when paging
set backspace=start,indent,eol
set matchpairs+=<:>     " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set sm                  " show matching braces, somewhat annoying...

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
" MiniBufExplorer settings
" ==================================================

let g:miniBufExplMapWindowNavVim = 1    " <CTRL> + [hjkl] window movement commands
let g:miniBufExplMapWindowNavArrows = 1 " <CTRL> + Arrow Keys window movement commands
let g:miniBufExplMapCTabSwitchBufs = 1  " <C-TAB> and <C-S-TAB> next or previous buffer in the current window
let g:miniBufExplUseSingleClick = 1     " Single click on tabs to goto the selected buffer
let g:miniBufExplModSelTarget = 1       " If using other explorers like TagList 
