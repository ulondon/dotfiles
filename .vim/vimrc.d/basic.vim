" Basic Settings

filetype plugin indent on
syntax on
" let mapleader = "<Spcae>"
set shell=/usr/bin/zsh
set guifont=Menlo:h14
set nocompatible
"set modelines=0
"set tabstop=4
set autochdir
autocmd BufRead,BufNewFile *.m set ff=dos

set expandtab
set shiftwidth=2
set softtabstop=2
autocmd FileType matlab setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

"set encoding=utf-8
"set scrolloff=3
"set autoindent
"set showmode
"set showcmd
"set hidden
"set wildmenu
"set wildmode=list:longest
"set visualbell
"set ttyfast
"set ruler
set backspace=indent,eol,start
set laststatus=2
set number
"set relativenumber
set noundofile
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set wildignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set linebreak
set nolist
set formatoptions=qrn1
"set spell spelllang=en_us
setlocal nospell
"set colorcolumn=80
