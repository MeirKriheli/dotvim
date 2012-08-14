============================================================
.vim directory
============================================================

Usage
============

The following commands will clone the repo, symlink `~/.vimrc` and update the
bundles::

    git clone https://github.com/MeirKriheli/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update


Plugins
============

* `pathogen.vim`_
* Solarized_ color scheme
* MiniBufExplorer_
* fugitive.vim_

.. _pathogen.vim: https://github.com/tpope/vim-pathogen
.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim
.. _fugitive.vim: https://github.com/tpope/vim-fugitive

Settings
============

* `vimrc` handling
* Incremental and smart case search.
* Trailing whitespace highlightling and cleaning shortcut.


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
``<F4>``
    Toggle search highlighting on/off, and show current value
``<Leader>S``
    Remove trailing whitespace
