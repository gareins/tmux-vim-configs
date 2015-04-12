filetype off
set nocompatible

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Generic:
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'

" SyntaxColorings:
Plugin 'plasticboy/vim-markdown'
Plugin 'jvirtanen/vim-octave'
Plugin 'klen/python-mode'

" Rust:
Plugin 'phildawes/racer'
Plugin 'wting/rust.vim'

" Tmux:
Plugin 'christoomey/vim-tmux-navigator'


" Old:
" Plugin 'bling/vim-airline'
" Bundle 'chilicuil/vim-sml-coursera'
" Plugin 'vim-scripts/scilab.vim'

call vundle#end() 

filetype plugin indent on

" folding lines
set foldmethod=indent
set foldlevel=99

" colors
syntax on
set background=dark
colorscheme desert

" Set the command window height to 2 lines, to avoid 
" many cases of having to press <Enter> to continue
set cmdheight=2

" Enable use of the mouse for all mode s
set mouse=a

" Display line numbers on the left
set number
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Better command-line completion
set wildmenu

" This shows what you are typing as a command.  I love this!
set showcmd

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
let g:clipbrdDefaultReg = 'y'

" : <-> ;
nnoremap <silent> ; :
nnoremap <silent> : ;

" @ <-> "
nnoremap <silent> " @
nnoremap <silent> @ "

"custom copy'n'paste
vmap ,y :w! ~/.vbuf<CR>
nnoremap ,y :.w! ~/.vbuf<CR>
nnoremap ,p :r ~/.vbuf<CR>
