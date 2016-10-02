set nocompatible
filetype off

" -----------------------------------------------------------------------------
"  General Settings
" -----------------------------------------------------------------------------
au FocusLost * :wa
set autoindent
set backupdir=$HOME/.vim/backups/
set cursorline
set directory=$HOME/.vim/swapfiles//
set encoding=utf-8
set laststatus=2
set number
set ruler
set scrolloff=3
set shiftwidth=2
set showcmd
set showmode
set tabstop=2
set ttyfast
set undodir=$HOME/.vim/undos/
set undofile
set visualbell
set wildmenu
set wildmode=list:longest

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
"  NERDTree 
" -----------------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" -----------------------------------------------------------------------------
"  Color Scheme
" -----------------------------------------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_termcolors=16
colorscheme onedark
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14



" -----------------------------------------------------------------------------
"  Search
" -----------------------------------------------------------------------------
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" -----------------------------------------------------------------------------
"  Syntax
" -----------------------------------------------------------------------------
syntax on

" use javascript for json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_custom_ignore = 'tmp.*'

" -----------------------------------------------------------------------------
"  Word Wrap
" -----------------------------------------------------------------------------
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" -----------------------------------------------------------------------------
"  Sources
" -----------------------------------------------------------------------------
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
