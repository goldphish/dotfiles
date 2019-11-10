set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set background=dark
colorscheme solarized

syntax on
filetype plugin indent on

set autoindent
set expandtab
set hlsearch
set ignorecase smartcase
set incsearch
set list
set listchars=tab:▸\ ,trail:▫
set nosmartindent
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2

map <buffer> <space> za
nnoremap <F4> :set hls!<CR>

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

set showtabline=2
set laststatus=2
"set noshowmode
