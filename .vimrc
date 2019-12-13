call plug#begin('~/.vim/plugged')

" Theme
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

" Language
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Autoclosing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'valloric/matchtagalways'

" Commenting
Plug 'tomtom/tcomment_vim'

" file Navigation
Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" JS/TS Syntax highlight
Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'

" Git
Plug 'tpope/vim-fugitive'

" Text Object
Plug 'machakann/vim-sandwich'

" Icons (last)
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader=" "

nnoremap <silent> <C-n> :call SmartNERDTree()<CR>
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeMapOpenSplit='s'
let NERDTreeMapOpenVSplit='v'

colorscheme onedark
" colorscheme dracula

syntax on
set encoding=UTF-8
set number relativenumber
set title
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set incsearch
set clipboard=unnamed
set ignorecase
set smartcase
set backspace=indent,eol,start
set splitright
set splitbelow
set nocompatible
set nowrap
set autoread
set guifont=FuraCodeNerdFontComplete-Medium:h14

" Save/update
nmap :w<CR> :up<CR>

nnoremap <leader>f :call HandleFZFInNerd()<CR>
let g:fzf_action = { 'ctrl-s': 'split', 'ctrl-v': 'vsplit', 'ctrl-t': 'tab split' }

" Opening/closing tags
nnoremap <silent> <leader>% :MtaJumpToOtherTag<CR>
let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'typescript': 1, 'javascript': 1, 'typescriptreact': 1, 'javascriptreact': 1, }
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
" highlight MatchTag ctermfg=black ctermbg=yellow guifg=black guibg=yellow
highlight MatchTag ctermbg=yellow guibg=yellow

" Center search
nmap * *zz
nmap # #zz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Split
nnoremap <leader>v :vs<CR>
nnoremap <leader>s :sp<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Git
nnoremap <leader>gs :vertical :Gstatus<CR>
nnoremap <leader>gd :vertical :Gdiff<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gA :Git add .<CR><CR>
nnoremap <leader>gP :Git pull origin 
nnoremap <leader>gp :Git push --set-upstream origin HEAD
nnoremap <leader>gco<space> :Git checkout 
nnoremap <leader>gcob :Git checkout -b 
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gB :Gbranch<CR>
nnoremap <leader>gcm :Git commit -m 

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

function! SmartNERDTree()                   
  if @% == ""
    NERDTreeToggle                      
  elseif g:NERDTree.IsOpen()
    NERDTreeClose
  else
    NERDTreeFind
  endif                                   
endfun 

function! HandleFZFInNerd()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  endif
  FZF
endfun
