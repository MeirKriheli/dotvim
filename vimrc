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

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

" ==================================================
" Allow overrides via ~/.vim/vimrc.local
" ==================================================
if filereadable(expand("~/.vim/vimrc.local"))
    source ~/.vim/vimrc.local
endif
