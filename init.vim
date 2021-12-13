let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

"---------------------
" general settings
" ---------------------
" set the file encoding
set fenc=utf-8
" no backup files
set nobackup
" no swap files
set noswapfile
" automatically reload the file when edited
set autoread
" show the current command
set showcmd
" show the file name
set title
" enable syntax highlighting
syntax enable
" use system clipboard
set clipboard=unnamed,unnamedplus

" ---------------------
" visual settings
" ---------------------
set guifont=Consolas\ 13
" show line number
set number
" highlight the current line
set cursorline
set linebreak
" show the matched bracket
set showmatch
" show the cursor position
set ruler
set backspace=indent,eol,start
" always show the status line
set laststatus=2
" visual beep
set visualbell
" visualize whitespaces
set list
set scrolloff=8

" ---------------------
" indentation settings
" ---------------------
" inherit the indentation from the previous line
set autoindent
set smartindent
" indent with four spaces
set tabstop=4
" when shifting, insert four spaces
set shiftwidth=4
" use spaces instead of tabs
set expandtab


" ---------------------
" search settings
" ---------------------
" all lowercase: case-insensitive
set ignorecase
" contain uppercase: case-sensitive
set smartcase
" incremental search
set incsearch
" go back to the beginning of the file
set wrapscan
" highlight the matched word
set hlsearch
" cancel highlighting when Esc is pressed twice
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set background=dark


" ---------------------
" keymaps
" ---------------------
" movement by screen line instead of file line
nnoremap j gj
nnoremap k gk

" ---------------------
" Plugins
" ---------------------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
 endif
filetype plugin indent on
syntax enable
