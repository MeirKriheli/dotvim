" ==================================================
" Omni Completion
" ==================================================

set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
