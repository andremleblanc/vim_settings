set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number

" use javascript for json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

map <C-n> :NERDTreeToggle<CR>
