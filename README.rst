============================================================
My vim setup
============================================================

My vim IDE setup for Python, Go, Rust, html, css, javascript, typescript,
gettext and more.


Features
============

* ``vimrc`` handling
* Incremental and smart case search.
* Sublime Text style multiple selections
* Trailing whitespace highlightling and cleaning shortcut
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default
* Remap ```<Leader>`` to ``<SPACE>`` and ``jj` to ``<ESC>``
* Highlight current row and color column 80
* 70+ language packs support
* Syntax checking
* Snippets
* Quotes, parens etc pair, surround
* Extended pair matching with %
* ASCII drawing
* Fuzzy file, buffer, mru, tag, etc finder
* Task list
* VCS plugins (Fugitive, Lawrencium)
* Tab completion
* Commenting

Prerequisites
=============

Vim with Python support.

Usage
============

The following commands will clone the repo, symlink ``~/.vimrc`` and update the
bundles::

    git clone https://github.com/MeirKriheli/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Install plugins from the command line::

    vim +PlugUpdate +qa

To add or override settings, place them in ``~/.vim/vimrc.local``.

To update submodules in the future, when you have vim running, source vimrc to
make sure plugins list is updated (or restart vim)::

    :PlugUpdate


completor.vim
-------------

For setting up completor.vim_ per specific supported language, please see:
https://github.com/maralla/completor.vim#completers


Upgrading
----------

In case you're updating from previous ``Vundle`` based to ``vim-plug``, remove
the ``bundle`` directory as it's not needed anymore, get ``vim-plug`` and
install the plugins::

    cd ~/.vim
    rm -rf bundle
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugUpdate +qa

Go tags
----------

For CtrlPBufTag search in go lang files, make sure you have an updated version
of ``ctags`` (>=5.8) and put in your ``~/.ctags``::

    --langdef=Go
    --langmap=Go:.go
    --regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
    --regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
    --regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/


Overrides
----------------

* ``~/.vim/vimrc.before``, if exists, is sourced before everything allowing
  definitions of variables to act upon.
* ``~/.vim/vimrc.local``, or ``~/.vim/vimrc.after`` if exists, is sourced after all
  the files in ``~/.vim/vimrc.d`` allowing override of default settings (e.g:
  color schemes, plugin configuration, etc.).


Plugins
============

* Solarized_ - color scheme
* base16-vim_ - color scheme
* vim-molokai_ - color scheme
* vim-distpach_ - asynchronous build and test dispatcher
* Fugitive_ - a Git wrapper so awesome, it should be illegal
* Lawrencium_ - Mercurial wrapper for Vim, inspired by Tim Pope's Fugitive
* ctrlp.vim_ - Fuzzy file, buffer, mru, tag, etc finder
* SuperTab_ - Insert mode completions with Tab
* completor.vim_ - Async completion framework made ease 
* Syntastic_ - Syntax checking hacks for vim (for vim < 8)
* ale_ - Asynchronous Lint Engine (for vim >= 8)
* UltiSnips_ - The ultimate snippet solution for Vim.
* vim-snippets_ - vim-snipmate default snippets
* python-mode_ - Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
* vim-go_ - Go development plugin for Vim
* rust.vim_ -  provides Rust file detection, syntax highlighting, formatting,
  Syntastic integration, and more.
* DrawIt_ - Ascii drawing plugin: lines, ellipses, arrows, fills, and more!
* vim-surround_ - quoting/parenthesizing made simple
* Shebang_ - Make executable by setting the correct shebang and executable bit
* Tagbar_ - Displays tags in a window, ordered by class etc
* `NERD tree`_ - A tree explorer
* auto-pairs_ - Insert or delete brackets, parens, quotes in pair
* po.vim_ - Easier editing of GNU gettext PO files
* TaskList_ - Eclipse like task list
* MatchIt_ - Extended % matching for HTML, LaTeX, and many other languages
* MatchTag_ - Highlight matching HTML tags
* vim-airline_ - Light weight statusline utility
* tabular_ - text filtering and alignment
* vim-plugin-viewdoc_ - Flexible viewer for any documentation
* tcomment_vim_ - An extensible & universal comment vim-plugin that also
  handles embedded filetypesludovicchabant/vim-lawrencium
* vim-unimpaired_ - pairs of handy bracket mappings
* vim-multiple-cursors_ - True Sublime Text style multiple selections for Vim
* splitjoin.vim_ - A vim plugin that simplifies the transition between multiline
  and single-line code
* vim-repeat_ - enable repeating supported plugin maps with "."
* tsuquyomi_ - A Vim plugin for TypeScript
* vim-highlightedyank_ - Make the yanked region apparent!

.. _Solarized: https://github.com/altercation/vim-colors-solarized
.. _base16-vim: https://github.com/chriskempson/base16-vim
.. _vim-molokai: https://github.com/tomasr/molokai
.. _Fugitive: https://github.com/tpope/vim-fugitive
.. _Lawrencium: https://github.com/ludovicchabant/vim-lawrencium
.. _vim-distpach: https://github.com/tpope/vim-dispatch
.. _vcscommand: http://www.vim.org/scripts/script.php?script_id=90
.. _ctrlp.vim: https://github.com/ctrlpvim/ctrlp.vim
.. _Syntastic: https://github.com/scrooloose/syntastic
.. _UltiSnips: https://github.com/sirver/ultisnips
.. _vim-snippets : https://github.com/honza/vim-snippets
.. _python-mode: https://github.com/klen/python-mode
.. _vim-go: https://github.com/fatih/vim-go
.. _DrawIt: https://github.com/vim-scripts/DrawIt
.. _vim-surround: https://github.com/tpope/vim-surround
.. _Shebang: https://github.com/vim-scripts/Shebang
.. _Tagbar: http://majutsushi.github.com/tagbar/
.. _NERD tree: https://github.com/scrooloose/nerdtree
.. _auto-pairs: https://github.com/jiangmiao/auto-pairs
.. _po.vim: http://vim.sourceforge.net/scripts/script.php?script_id=695
.. _TaskList: http://juan.axisym3.net/vim-plugins/#tasklist
.. _MatchIt: http://www.vim.org/scripts/script.php?script_id=39
.. _SuperTab: https://github.com/ervandew/supertab
.. _vim-airline: https://github.com/bling/vim-airline
.. _tabular: https://github.com/godlygeek/tabular
.. _vim-plugin-viewdoc: https://github.com/powerman/vim-plugin-viewdoc
.. _tcomment_vim: https://github.com/tomtom/tcomment_vim
.. _vim-unimpaired: https://github.com/tpope/vim-unimpaired
.. _vim-multiple-cursors: https://github.com/terryma/vim-multiple-cursors
.. _splitjoin.vim: https://github.com/AndrewRadev/splitjoin.vim
.. _vim-repeat: https://github.com/tpope/vim-repeat
.. _MatchTag: https://github.com/gregsexton/MatchTag
.. _rust.vim: https://github.com/rust-lang/rust.vim
.. _tsuquyomi: https://github.com/Quramy/tsuquyomi
.. _completor.vim: https://github.com/maralla/completor.vim
.. _ale: https://github.com/w0rp/ale
.. _vim-highlightedyank: https://github.com/machakann/vim-highlightedyank


Shortcuts and re-Mappings
============================

======================  =================================================================
Key                     Command
======================  =================================================================
``jj``                  ``<Esc>`` in insert and command modes
----------------------  -----------------------------------------------------------------
``<SPACE>``             ``<Leader>``
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
``<CTRL>hjkl``          Window movement commands
----------------------  -----------------------------------------------------------------
``<CTRL>arrow``         Window movement commands
----------------------  -----------------------------------------------------------------
``<Leader>d``           Delete buffer, keep the split
----------------------  -----------------------------------------------------------------
``-``, ``+``            Resize horizontal splits
----------------------  -----------------------------------------------------------------
``<ALT><`` ``<ALT>>``   Resize vertical splits
----------------------  -----------------------------------------------------------------
``<F9>``                 Toggle logical (RTL, e.g: Hebrew) editing
----------------------  -----------------------------------------------------------------
``<F8>``                Toggle visual (RTL, e.g: Hebrew) editing
----------------------  -----------------------------------------------------------------
``g/``                  :grep!<Space>
----------------------  -----------------------------------------------------------------
``g*``                  :grep! -w current_word
----------------------  -----------------------------------------------------------------
``ga``                  :grepadd! (add results to the current search)
----------------------  -----------------------------------------------------------------
``gr``                  :CtrlPBufTag (fuzzy tag search in current file)
======================  =================================================================
