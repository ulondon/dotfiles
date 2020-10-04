set nocompatible              " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'jceb/vim-orgmode'
Plugin 'vimwiki/vimwiki'
Plugin 'codcodog/simplebuffer.vim'
" colors
Plugin 'vim-scripts/obsidian2.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'
Plugin 'rakr/vim-one'
call vundle#end()

filetype plugin indent on

let g:airline_skip_empty_sections = 1

" vimwiki
let g:vimwiki_list = [{'path': '~/org/vimwiki/main.wiki', 'path_html': '~/org/vimwiki/html'}]
