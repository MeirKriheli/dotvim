============================================================
My vim setup
============================================================

My vim IDE setup for python, html, css, javascript, gettext and more

Features
============

* `vimrc` handling
* Incremental and smart case search.
* Trailing whitespace highlightling and cleaning shortcut.
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default
* Remap ```<Leader>`` to ``,`` and ``jj` to ``<ESC>``
* Highlight current row and color column 80
* Extra syntax highlighting (css3, less, json, jinja, jquery etc)
* Syntax checking
* Snippets
* Python completion, refactoring, navigation and docs
* Quotes, parens etc pair, surround
* Extended pair matching with %
* ASCII drawing
* Fuzzy file, buffer, mru, tag, etc finder
* Task list
* VCS plugins (git, hg, svn, etc)
* Tab completion

Usage
============

The following commands will clone the repo, symlink `~/.vimrc` and update the
bundles::

    git clone https://github.com/MeirKriheli/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update

To add or override settings, place them in `~/.vim/vimrc.local`.

Plugins
============

* `pathogen.vim`_ - manage your runtimepath
* Solarized_ - color scheme
* MiniBufExplorer_ - Elegant buffer explorer
* fugitiv.evim_ - a Git wrapper so awesome, it should be illegal
* vcscommand_ - CVS/SVN/SVK/git/hg/bzr integration plugin
* ctrlp.vim_ - Fuzzy file, buffer, mru, tag, etc finder.
* SuperTab_ - Insert mode completions with Tab
* Syntastic_ - Syntax checking hacks for vim.
* snipMate_ - implements some of TextMate's snippets features in Vim.
* snipmate-snippets_ - snipmate default snippets
* python-mode_ - Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
* DrawIt_ - Ascii drawing plugin: lines, ellipses, arrows, fills, and more!
* vim-less_ - less support for vim
* vim-surround_ - quoting/parenthesizing made simple
* Shebang_ - Make executable by setting the correct shebang and executable bit
* Tagbar_ - Displays tags in a window, ordered by class etc
* css3-mod_ - css syntax script to support css3
* `NERD tree`_ - A tree explorer
* ack.vim_ - Plugin for the Perl module / CLI script 'ack'
* auto-pairs_ - Insert or delete brackets, parens, quotes in pair
* po.vim_ - Easier editing of GNU gettext PO files
* json.vim_ - A syntax highlighting file for JSON
* TaskList_ - Eclipse like task list
* MatchIt_ - Extended % matching for HTML, LaTeX, and many other languages
* vim-powerline_ - The ultimate vim statusline utility
* tabular_ - text filtering and alignment

.. _pathogen.vim: https://github.com/tpope/vim-pathogen
.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim
.. _fugitive.vim: https://github.com/tpope/vim-fugitive
.. _vcscommand: http://www.vim.org/scripts/script.php?script_id=90
.. _ctrlp.vim: https://github.com/kien/ctrlp.vim
.. _Syntastic: https://github.com/scrooloose/syntastic
.. _snipMate: https://github.com/garbas/vim-snipmate
.. _snipmate-snippets : https://github.com/honza/snipmate-snippets
.. _python-mode: https://github.com/klen/python-mode
.. _DrawIt: https://github.com/vim-scripts/DrawIt
.. _vim-less: https://github.com/vim-scripts/vim-less
.. _vim-surround: https://github.com/tpope/vim-surround
.. _Shebang: https://github.com/vim-scripts/Shebang
.. _Tagbar: http://majutsushi.github.com/tagbar/
.. _css3-mod: https://github.com/vim-scripts/css3-mod
.. _NERD tree: https://github.com/scrooloose/nerdtree
.. _ack.vim: https://github.com/mileszs/ack.vim
.. _auto-pairs: https://github.com/jiangmiao/auto-pairs
.. _po.vim: http://vim.sourceforge.net/scripts/script.php?script_id=695
.. _json.vim: https://github.com/argent-smith/JSON.vim
.. _TaskList: http://juan.axisym3.net/vim-plugins/#tasklist
.. _MatchIt: http://www.vim.org/scripts/script.php?script_id=39
.. _SuperTab: https://github.com/ervandew/supertab
.. _vim-powerline: https://github.com/Lokaltog/vim-powerline
.. _tabular: https://github.com/godlygeek/tabular

Shortcuts and re-Mappings
============================

======================  =================================================================
Key                     Command
======================  =================================================================
``jj``                  ``<Esc>`` in insert and command modes
----------------------  -----------------------------------------------------------------
``,``                   ``<Leader>``
----------------------  -----------------------------------------------------------------
``<Leader>v``           Load `.vimrc`
----------------------  -----------------------------------------------------------------
``<Leader>V``           Activate changes to `.vimrc` (Make sure to save it before)
----------------------  -----------------------------------------------------------------
``<F2>``                Close current split (window)
----------------------  -----------------------------------------------------------------
``<F3>``                Toggle NERD tree
----------------------  -----------------------------------------------------------------
``<F4>``                Toggle search highlight
----------------------  -----------------------------------------------------------------
``<F5>``                Toggle Tagbar
----------------------  -----------------------------------------------------------------
``<Leader>S``           Remove trailing whitespace
----------------------  -----------------------------------------------------------------
``<CTRL>hjkl``          Window movement commands (mapped via MiniBufExplorer settings)
----------------------  -----------------------------------------------------------------
``<CTRL>arrow``         Window movement commands (mapped via MiniBufExplorer settings)
----------------------  -----------------------------------------------------------------
``<CTRL-TAB>``          Next buffer in current window (via MiniBufExplorer settings)
----------------------  -----------------------------------------------------------------
``<CTRL-SHIFT-TAB>``    Previous buffer in current window (via MiniBufExplorer settings)
----------------------  -----------------------------------------------------------------
``-``, ``+``            Resize horizontal splits
----------------------  -----------------------------------------------------------------
``<ALT><`` ``<ALT>>``   Resize vertical splits
----------------------  -----------------------------------------------------------------
``<F9>``                 Toggle logical (RTL, e.g: Hebrew) editing
----------------------  -----------------------------------------------------------------
``<F8>``                Toggle visual (RTL, e.g: Hebrew) editing
======================  =================================================================
