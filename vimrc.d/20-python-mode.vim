" ==================================================
" Disable python-mode rope completion (using Jedi)
" Disable folding
" Don't trim whitespace on save
" ==================================================
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_lint = 0 

" ==================================================
" jedi-vim use splits instead of tabs
" ==================================================
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
