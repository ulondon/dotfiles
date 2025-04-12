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
" Plugin 'jceb/vim-orgmode'
Plugin 'vimwiki/vimwiki'
" Plugin 'gabrielelana/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'codcodog/simplebuffer.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" webdev
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'

" colors  https://vimcolorschemes.com/
Plugin 'rafi/awesome-vim-colorschemes'
call vundle#end()

filetype plugin indent on

let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" vimwiki
" let g:vimwiki_list = [{'path': '~/org/vimwiki/main.wiki', 'path_html': '~/org/vimwiki/html'}]

" fzf
command! -bang Proj call fzf#vim#files('~/projects', <bang>0)
