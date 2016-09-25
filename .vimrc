set nocompatible
filetype off

" -----------------------------------------------------------------------------
"  General Settings
" -----------------------------------------------------------------------------
set number
set ruler
set shiftwidth=2
set showcmd
set tabstop=2

" -----------------------------------------------------------------------------
"  Use Vundle
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
"  Appearance
" -----------------------------------------------------------------------------
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" -----------------------------------------------------------------------------
"  Syntax Specific
" -----------------------------------------------------------------------------
" use javascript for json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_custom_ignore = 'tmp.*'


