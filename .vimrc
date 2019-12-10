call plug#begin('~/.vim/plugged')

" Theme
Plug 'joshdick/onedark.vim'

" Language
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Autoclosing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Commenting
Plug 'tomtom/tcomment_vim'

" file Navigation
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" JS/TS Syntax highlight
Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" Git
Plug 'tpope/vim-fugitive'

" Text Object
Plug 'machakann/vim-sandwich'

" Icons (last)
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader=" "
let g:NERDTreeWinPos = "left"

colorscheme onedark

set encoding=UTF-8
set number relativenumber
set ruler
set laststatus=2
set rulerformat+=line:%l\ col:%c
set title
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set ignorecase
set smartcase
set backspace=indent,eol,start
set nocompatible
set nowrap

syntax on

nnoremap <leader>f :FZF<CR>
nnoremap <C-l> :vs<CR>
map <C-n> :NERDTreeToggle<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gb :Gblame<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

autocmd FileType json syntax match Comment +\/\/.\+$+

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
