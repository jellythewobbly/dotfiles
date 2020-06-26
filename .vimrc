call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" Theme

" Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
" Plug 'dracula/vim', { 'as': 'dracula' }

" Language
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets',
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Autoclosing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'valloric/matchtagalways'

" Commenting
Plug 'tomtom/tcomment_vim'
" Plug 'suy/vim-context-commentstring'

" file Navigation
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" CSS
Plug 'ap/vim-css-color'

" JS/TS Syntax highlight
Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['typescript', 'javascript', 'typescript.tsx', 'javascript.jsx']}
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Git
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-merginal'

" Search/replace
Plug 'tpope/vim-abolish'

" Session
Plug 'tpope/vim-obsession'

" Icons (last)
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader=" "

" colorscheme onedark
colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'soft'
" colorscheme dracula

syntax on
set exrc
set secure
set encoding=UTF-8
" set textwidth=100
set fo-=l
set number relativenumber
set signcolumn=yes
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
set wrap
set linebreak
set autoread
set guifont=FuraCodeNerdFontComplete-Medium:h14
set t_Co=256
set updatetime=100
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set noshowmode
set lazyredraw
set visualbell
set directory=$HOME/.vim/swp//
set termguicolors


" Vim plug
noremap <silent> <leader>PI :PlugInstall<CR>
noremap <silent> <leader>PU :PlugUpdate<CR>

" Movement for wrapped lines (j/k will move virtual lines)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" File type
autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx

" Cursor line
" highlight LineNr ctermfg=DarkGrey guibg=DarkGrey
highlight CursorLineNR cterm=bold gui=bold

" Comment
" Next line no autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType json syntax match Comment +\/\/.\+$+
vnoremap <silent> ++ :TComment<CR>
nnoremap <silent> ++ :TComment<CR>

" nnoremap <silent> <leader>/ :call ToggleComment()<CR>

" Save/update
nnoremap :w<CR> :up<CR>

" Session
nnoremap <leader>ms :Obsess<CR>
nnoremap <leader>os<CR> :call OpenSession()<CR>


" matchtagalways
" Opening/closing tags
nnoremap <silent> <leader>% :MtaJumpToOtherTag<CR>
let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'typescript': 1, 'javascript': 1, 'typescript.tsx': 1, 'javascript.jsx': 1, }
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
" highlight MatchTag cterm=bold,standout gui=bold,standout
highlight MatchTag cterm=bold,standout

" Center search
nnoremap * *zz
nnoremap # #zz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" Split
nnoremap <silent> <leader>v :vs<CR>
nnoremap <silent> <leader>sp :sp<CR>
nnoremap <silent> <leader>sx <C-w>x
nnoremap <silent> <leader>s= <C-w>=
nnoremap <silent> <leader>h <C-w>h
nnoremap <silent> <leader>j <C-w>j
nnoremap <silent> <leader>k <C-w>k
nnoremap <silent> <leader>l <C-w>l

" Buffer
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bN :bprev<CR>
nnoremap <silent> <leader>bd :bdelete<CR>
command! BufOnly execute '%bdelete|edit #|normal `"'
nnoremap <silent> <leader>bD :BufOnly<CR>

" Git
nnoremap <silent> <leader>gs :vertical :Gstatus<CR>
nnoremap <silent> <leader>gd :Gvdiffsplit<CR>
nnoremap <silent> <leader>gD :Gvdiffsplit!<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gA :Git add .<CR><CR>
nnoremap <leader>gf :Gfetch
nnoremap <leader>gP :Git pull origin 
nnoremap <leader>gp :Git push --set-upstream origin HEAD
nnoremap <leader>gco<space> :Git checkout 
nnoremap <leader>gcob :Git checkout -b 
nnoremap <silent><leader>br :Merginal<CR>
nnoremap <silent><leader>bl :Gblame<CR>
nnoremap <silent><leader>gl :Glog<CR>
nnoremap <leader>gcm :Git commit -m 
nnoremap <leader>grs :Git reset --soft HEAD~1

" for horizontal split
let g:merginal_splitType = '' 

" Copy filename
nnoremap <silent> <leader>gc :let @*=expand("%")<CR>

" Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '~_'
let g:gitgutter_override_sign_column_highlight = 1

" highlight DiffAdd ctermfg=White ctermbg=DarkGreen guifg=White guibg=DarkGreen
" highlight DiffText ctermfg=White guifg=White

" Prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#exec_cmd_async = 1
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" Airline
let g:airline#extensions#default#layout = [  [ 'a', 'b', 'c' ],  [ 'x', 'z', 'warning', 'error' ]  ]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#format = 2
let airline#extensions#coc#error_symbol = '❌:'
let airline#extensions#coc#warning_symbol = '⚠️ :'
" let g:airline_skip_empty_sections = 1
 

" coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" :  <SID>check_back_space() ? "\<TAB>" :  coc#refresh()
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter to confirm selection
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
let g:coc_snippet_next = '<tab>'

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <C-w>v<Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> gl gd
nnoremap <silent> gF <C-w>vgf
nnoremap <silent> <leader>gt <C-w>gf
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)

" To navigate diagnostics
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show documentation in preview
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Scroll popup
" nnoremap <expr> <c-d> misc#popup#scroll_cursor_popup(1) ? '<esc>' : '<c-d>'
" nnoremap <expr> <c-u> misc#popup#scroll_cursor_popup(0) ? '<esc>' : '<c-u>'


" NERDTree/fzf
nnoremap <silent> <leader>f :call HandleFZFInNerd()<CR>
nnoremap <silent> <leader>a :Ag<CR>
nnoremap <silent> <C-n> :call SmartNERDTree()<CR>
let g:fzf_action = { 'ctrl-s': 'split', 'ctrl-v': 'vsplit', 'ctrl-t': 'tab split' }
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_COMMAND = 'ag --hidden -p .gitignore --ignore .git -g ""'
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMapOpenSplit='s'
let NERDTreeMapOpenVSplit='v'
let NERDTreeHighlightCursorline = 0
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeSyntaxEnabledExtensions = [
     \ 'css',
     \ 'html',
     \ 'js',
     \ 'json',
     \ 'jsx',
     \ 'md',
     \ 'rb',
     \ 'scss',
     \ 'sql',
     \ 'ts',
     \ 'tsx',
     \]

function! SmartNERDTree()                   
  if @% == ""
    NERDTreeToggle                      
    :execute "normal \<C-w>="
  elseif g:NERDTree.IsOpen()
    NERDTreeClose
  else
    try
      NERDTreeFind
    catch
      NERDTree
    endtry
    :execute "normal zz\<C-w>="
  endif                                   
endfun 

function! HandleFZFInNerd()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  endif
  FZF
endfun

function! OpenSession()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  endif
  source Session.vim
endfun

" function! StartUpCmd() 
"   if !empty(glob("Session.vim")) && argc() == 0
"     source Session.vim
"   elseif argc() == 0 && !exists("s:std_in")
"     NERDTree
"   endif
" endfun

" Open NERDTree on start up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * call StartUpCmd()

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-css',
  \ 'coc-highlight', 
  \ 'coc-html', 
  \ 'coc-java', 
  \ 'coc-emmet', 
  \ 'coc-markdownlint', 
  \ ]

" :CocCommand snippets.editSnippets
" Experimental
set shortmess+=c
