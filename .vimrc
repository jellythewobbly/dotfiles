set clipboard=unnamed
set ignorecase
set smartcase
let mapleader=" "

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

call plug#end()

colorscheme onedark
set rnu
set ruler
set rulerformat+=line:%l\ col:%c
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
syntax on


let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
