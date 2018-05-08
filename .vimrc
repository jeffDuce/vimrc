" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~ Vim Run Commands ~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


"Author: Jeffrey Duce (jmduce@edu.uwaterloo.ca)
"Description: Vim runtime configuration file.


" Vundle ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " General Plugins
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'scrooloose/nerdcommenter'

    " Language Specific Plugins
    Plugin 'wlangstroth/vim-racket'
    Plugin 'tpope/vim-surround'
    Plugin 'zzeroo/vim-vala'
    Plugin 'rgrinberg/vim-ocaml'

    call vundle#end()
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just
    " :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Vim Environment ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    colorscheme koehler

    set nocompatible
    set wildmenu
    set ignorecase
    set smartcase

    syntax enable
    filetype plugin on
    filetype indent on

    " hi ColorColumn ctermbg=red
    " call matchadd('ColorColumn', '\%81v', 100)

" Spacing ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    set tabstop=4
    set shiftwidth=4
    set expandtab

" Fuzzy File Search ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    set path+=**

" Splitting ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    set splitbelow
    set splitright

" Airline ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    set laststatus=2

" Whitespace ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    command SW StripWhitespace

" Utility ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    command W  w
    command Q  q
    command Wq wq
    command WQ wq

" Nerd Commenter ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:NERDSpaceDelims = 1
    let g:NERDCompactSexyComs = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCommentEmptyLines = 1
    let g:NERDTrimTrailingWhitespace = 1

" OCaml ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
    execute "set rtp+=" . g:opamshare . "/merlin/vim"

" Netrw ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:netrw_banner=0
    let g:netrw_liststyle=3

" Makefile ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    autocmd FileType make setlocal noexpandtab

" Folding ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " set foldlevel=0
    " set foldmethod=indent

" text files ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    autocmd BufRead,BufNewFile   *.txt setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile   *.txt setlocal nofoldenable
    autocmd BufRead,BufNewFile   *.txt setlocal noexpandtab
    autocmd FileType help setlocal nospell

    hi clear SpellLocal
    hi clear SpellRare
    hi clear SpellCap
    hi clear SpellBad
    hi SpellCap ctermfg=blue cterm=bold,underline
    hi SpellBad ctermfg=red cterm=bold,underline

" Read for More Ideas
" https://github.com/aaronbieber/dotvim/blob/master/config/00_settings.vim
" http://forum.ubuntu.org.cn/viewtopic.php?f=86&t=309772
