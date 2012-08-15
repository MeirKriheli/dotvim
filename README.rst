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

* `pathogen.vim`_ - manage your runtimepath
* Solarized_ - color scheme
* MiniBufExplorer_ - Elegant buffer explorer
  fugitiv.evim_ - a Git wrapper so awesome, it should be illegal
* vcscommand_ - CVS/SVN/SVK/git/hg/bzr integration plugin
* ctrlp.vim_ - Fuzzy file, buffer, mru, tag, etc finder.
* Syntastic_ - Syntax checking hacks for vim.
* snipMate_ - implements some of TextMate's snippets features in Vim.
* snipmate-snippets_ - snipmate default snippets

.. _pathogen.vim: https://github.com/tpope/vim-pathogen
.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim
.. _fugitive.vim: https://github.com/tpope/vim-fugitive
.. _vcscommand: http://www.vim.org/scripts/script.php?script_id=90
.. _ctrlp.vim: https://github.com/kien/ctrlp.vim
.. _Syntastic: https://github.com/scrooloose/syntastic
.. _snipMate: Implements some of TextMate's snippets features in Vim
.. _snipmate-snippets : https://github.com/honza/snipmate-snippets

Settings
============

* `vimrc` handling
* Incremental and smart case search.
* Trailing whitespace highlightling and cleaning shortcut.
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default


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
``-``, ``+``
    Resize horizontal splits
``<ALT><`` ``<ALT>>``
    Resize vertical splits
``<F9>``
    Toggle logical (RTL, e.g: Hebrew) editing
``<F8>``
    Toggle visual (RTL, e.g: Hebrew) editing
