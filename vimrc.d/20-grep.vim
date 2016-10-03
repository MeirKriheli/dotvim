" ==================================================
" Setup grep shortcuts and use ripgrep if available
" ==================================================

nmap g/ :grep!<space>
nmap g* :grep! -w <C-R><C-W><space>
nmap ga :grepadd!<space>

if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Auto open grep quickfix window
autocmd QuickFixCmdPost *grep* cwindow
