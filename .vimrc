set nocompatible
filetype off

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" -----------------------------------------------------------------------------
"  General Settings
" -----------------------------------------------------------------------------
set number
set ruler
set shiftwidth=2
set showcmd
set tabstop=2
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backups/

" -----------------------------------------------------------------------------
"  Use Vundle
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
"  Appearance
" -----------------------------------------------------------------------------
syntax on
" set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

" -----------------------------------------------------------------------------
"  Syntax Specific
" -----------------------------------------------------------------------------
" use javascript for json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_custom_ignore = 'tmp.*'


