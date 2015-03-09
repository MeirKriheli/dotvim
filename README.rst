============================================================
My vim setup
============================================================

My vim IDE setup for python, html, css, javascript, gettext and more


Features
============

* `vimrc` handling
* Incremental and smart case search.
* Sublime Text style multiple selections 
* Trailing whitespace highlightling and cleaning shortcut.
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default
* Remap ```<Leader>`` to ``,`` and ``jj` to ``<ESC>``
* Highlight current row and color column 80
* Extra syntax highlighting (css3, less, json, jinja, jquery etc)
* Syntax checking
* Snippets
* Python completion, refactoring, navigation and docs
* Javacript support (highlighting, libraries syntax highligting)
* Go support
* Quotes, parens etc pair, surround
* Extended pair matching with %
* ASCII drawing
* Fuzzy file, buffer, mru, tag, etc finder
* Task list
* VCS plugins (Fugitive, Lawrencium)
* Tab completion
* Commenting

Usage
============


The following commands will clone the repo, symlink `~/.vimrc` and update the
bundles::

    git clone https://github.com/MeirKriheli/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Install plugins from the command line::

    vim +PluginInstall +qall

To add or override settings, place them in ``~/.vim/vimrc.local``.

To update submodules in the future, when you have vim running, source vimrc to
make sure plugins list is updated (or restart vim)::

    :PluginUpdate

For more info::

    :h Vundle

Go tags
----------

For CtrlPBufTag search in go lang files, make sure you have an updated version
of catgs (>=5.8) and put in your `~/.ctags`::

    --langdef=Go
    --langmap=Go:.go
    --regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
    --regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
    --regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/

Plugins
============

* Solarized_ - color scheme
* MiniBufExplorer_ - Elegant buffer explorer
* vim-distpach_ - asynchronous build and test dispatcher
* Fugitive_ - a Git wrapper so awesome, it should be illegal
* Lawrencium_ - Mercurial wrapper for Vim, inspired by Tim Pope's Fugitive
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
* vim-json_ - A better JSON for Vim
* TaskList_ - Eclipse like task list
* MatchIt_ - Extended % matching for HTML, LaTeX, and many other languages
* MatchTag_ - Highlight matching HTML tags
* vim-airline_ - Light weight statusline utility
* tabular_ - text filtering and alignment
* vim-plugin-viewdoc_ - Flexible viewer for any documentation
* tcomment_vim_ - An extensible & universal comment vim-plugin that also
  handles embedded filetypesludovicchabant/vim-lawrencium
* vim-javascript_ - Vastly improved Javascript indentation and syntax support in
  Vim.
* vim-javascript-syntax_ - Enhanced javascript syntax file for Vim
* javascript-libraries-syntax.vim_  - Syntax for JavaScript libraries
* vim-unimpaired_ - pairs of handy bracket mappings
* vim-multiple-cursors_ - True Sublime Text style multiple selections for Vim
* splitjoin.vim_ - A vim plugin that simplifies the transition between multiline
  and single-line code
* vim-go_ - Go development plugin for Vim 
* vim-repeat_ - enable repeating supported plugin maps with "."


.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim
.. _Fugitive: https://github.com/tpope/vim-fugitive
.. _Lawrencium: https://github.com/ludovicchabant/vim-lawrencium
.. _vim-distpach: https://github.com/tpope/vim-dispatch
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
.. _vim-json: https://github.com/elzr/vim-json
.. _TaskList: http://juan.axisym3.net/vim-plugins/#tasklist
.. _MatchIt: http://www.vim.org/scripts/script.php?script_id=39
.. _SuperTab: https://github.com/ervandew/supertab
.. _vim-airline: https://github.com/bling/vim-airline
.. _tabular: https://github.com/godlygeek/tabular
.. _vim-plugin-viewdoc: https://github.com/powerman/vim-plugin-viewdoc
.. _tcomment_vim: https://github.com/tomtom/tcomment_vim
.. _javascript-libraries-syntax.vim: https://github.com/othree/javascript-libraries-syntax.vim
.. _vim-unimpaired: https://github.com/tpope/vim-unimpaired 
.. _vim-javascript: https://github.com/pangloss/vim-javascript
.. _vim-javascript-syntax: https://github.com/jelera/vim-javascript-syntax
.. _vim-multiple-cursors: https://github.com/terryma/vim-multiple-cursors
.. _splitjoin.vim: https://github.com/AndrewRadev/splitjoin.vim
.. _vim-go: https://github.com/fatih/vim-go
.. _vim-repeat: https://github.com/tpope/vim-repeat
.. _MatchTag: https://github.com/gregsexton/MatchTag


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
``<Leader>d``           Delete buffer, keep the split
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
----------------------  -----------------------------------------------------------------
``g/``                  :Ack<Space>
----------------------  -----------------------------------------------------------------
``g*``                  :Ack -w current_word
----------------------  -----------------------------------------------------------------
``ga``                  :AckAdd! (add results to the current search)
----------------------  -----------------------------------------------------------------
``gr``                  :CtrlPBufTag (fuzzy tag search in current file)
======================  =================================================================
