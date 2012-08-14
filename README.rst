============================================================
.vim directory
============================================================

Usage
============

    git clone https://github.com/MeirKriheli/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update


Features
============

* `pathogen.vim`_
* Solarized_ color scheme
* MiniBufExplorer_

.. _pathogen.vim: https://github.com/tpope/vim-pathogen
.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim


Shortcuts
==============

``jj``
    Esc in insert and command modes
``<CTRL>`` + [``h`` ``j`` ``k`` ``l``], ``CTRL`` + Arrow Keys
    Window movement commands (mapped via MiniBufExplorer settings)
``<C-TAB>`` and ``<C-S-TAB>``
    Next or previous buffer in the current window (via MiniBufExplorer settings)
``,``
    <Leader>
``<Leader>v``
    Load `.vimrc`
``<Leader>V``
    Activate changes to `.vimrc` (Make sure to save it before)
