set nocompatible

set runtimepath+=~/.vim/


"---------------------
" dein.vim
"---------------------
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" if dein.vim does not exist, clone from github
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.config/nvim')

  " load on startup
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " load lazy
  " call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

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
" show the current command on the status line
set showcmd
" show the file name
set title
" enable syntax highlighting
syntax enable
" use system clipboard
set clipboard=unnamed,unnamedplus
" enable hidden buffer
set hidden

" ---------------------
" visual settings
" ---------------------
" set guifont=Consolas\ 13
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
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
" show 8 lines above and below the cursor
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
" nnoremap j gj
" nnoremap k gk