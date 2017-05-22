" ==================================================
" CtrlP
" ==================================================

set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|templates_c'

" ==================================================
" gr opens Fuzzy tags search
" ==================================================
nmap gr :CtrlPBufTag<CR>
let g:ctrlp_buftag_types = {
\ 'go' : '--language-force=go --golang-types=ftv',
\ 'coffee' : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown' : '--language-force=markdown --markdown-types=hik',
\ 'objc' : '--language-force=objc --objc-types=mpci',
\ 'rc' : '--language-force=rust --rust-types=fTm'
\ }

" ==================================================
" Use ripgrep for ctrlp if available
" ==================================================
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
