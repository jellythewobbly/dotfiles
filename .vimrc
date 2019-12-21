call plug#begin('~/.vim/plugged')

" Theme
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
" Plug 'dracula/vim', { 'as': 'dracula' }

" Language
Plug 'sheerun/vim-polyglot'
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
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'

" Text Object
Plug 'machakann/vim-sandwich'

" Session
Plug 'tpope/vim-obsession'

" Icons (last)
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader=" "

colorscheme onedark
" colorscheme dracula

syntax on
set encoding=UTF-8
set number relativenumber
set cursorline
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
set t_Co=256
set updatetime=250
set hidden

" Save/update
nnoremap :w<CR> :up<CR>

" Session
nnoremap <leader>ms :Obsess<CR>
nnoremap <leader>os<CR> :source Session.vim<CR>

" matchtagalways
" Opening/closing tags
nnoremap <silent> <leader>% :MtaJumpToOtherTag<CR>
let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'typescript': 1, 'javascript': 1, 'typescriptreact': 1, 'javascriptreact': 1, }
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag cterm=bold,standout gui=bold,standout

" Center search
nnoremap * *zz
nnoremap # #zz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" Split
nnoremap <silent> <leader>v :vs<CR>
nnoremap <silent> <leader>s :sp<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Buffer
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bN :bprev<CR>
nnoremap <silent> <leader>bd :bdelete<CR>

" Git
nnoremap <silent> <leader>gs :vertical :Gstatus<CR>
nnoremap <silent> <leader>gd :Gvdiffsplit<CR>
nnoremap <silent> <leader>gD :Gvdiffsplit!<CR>
nnoremap <silent> <leader>ga :Gwrite<CR>
nnoremap <silent> <leader>gA :Git add .<CR><CR>
nnoremap <silent> <leader>gP :Git pull origin 
nnoremap <silent> <leader>gp :Git push --set-upstream origin HEAD
nnoremap <silent> <leader>gco<space> :Git checkout 
nnoremap <silent> <leader>gcob :Git checkout -b 
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gcm :Git commit -m 

" " Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg

highlight DiffAdd ctermfg=White ctermbg=DarkGreen guifg=White
highlight DiffText ctermfg=White guifg=White

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

autocmd FileType json syntax match Comment +\/\/.\+$+


" Airline
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'z', 'warning', 'error' ]
    \ ]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#hunks#enabled = 0
let g:airline_skip_empty_sections = 1
 

" coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" To navigate diagnostics
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" let g:coc_status_error_sign = '❌'
" let g:coc_status_warning_sign = '⚠️'


" NERDTree/fzf
nnoremap <silent> <leader>f :call HandleFZFInNerd()<CR>
nnoremap <silent> <C-n> :call SmartNERDTree()<CR>
let g:fzf_action = { 'ctrl-s': 'split', 'ctrl-v': 'vsplit', 'ctrl-t': 'tab split' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeMapOpenSplit='s'
let NERDTreeMapOpenVSplit='v'


function! SmartNERDTree()                   
  if @% == ""
    NERDTreeToggle                      
    :execute "normal \<C-w>="
  elseif g:NERDTree.IsOpen()
    NERDTreeClose
  else
    NERDTreeFind
    :execute "normal \<C-w>="
  endif                                   
endfun 

function! HandleFZFInNerd()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  endif
  FZF
endfun

" Open NERDTree on start up
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
utocmd VimEnter * call StartUp()
