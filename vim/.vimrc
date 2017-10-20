set nocompatible

set encoding=utf8
set ffs=unix,dos,mac

set backspace=2         " backspace in insert mode works like normal editor

syntax on               " syntax highlighting

filetype plugin on
filetype indent on      " activates indenting for files
set autoindent          " auto indenting

set number              " line numbers

colorscheme desert      " colorscheme desert

set nobackup            " get rid of anoying ~file
set nowb
set noswapfile

set cursorline
set ruler

set ignorecase
set smartcase
set hlsearch

set showmatch

" Stuff about tabs vs spaces
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4


map j gj
map k gk

inoremap jk <Esc>`^

