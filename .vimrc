set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set background=dark
colorscheme solarized

syntax on
filetype plugin indent on

set incsearch
set ignorecase smartcase
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set nosmartindent
