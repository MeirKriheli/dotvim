" Make sure this pathogen is taken into account
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Keep swap files out of the working dir
" Adjust if needed in another dir
set directory=~/tmp
