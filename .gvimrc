if has("gui_macvim")
  " colorscheme dracula
  " colorscheme onedark
  colorscheme gruvbox

  " set fu

  macmenu File.Print key=<nop>
  macmenu File.Save key=<nop>
  macmenu File.Save\ All key=<nop>
  macmenu File.Save\ As\.\.\. key=<nop>
  macmenu File.Close key=<nop>
  noremap <D-r> <nop>

  nnoremap <silent> <D-p> :call HandleFZFInNerd()<CR>

  vnoremap <silent> <D-/> :TComment<CR>
  nnoremap <silent> <D-/> :TComment<CR>

  nnoremap <silent> <D-a> ggvG
  nnoremap <silent> <D-s> :up<CR>
  nnoremap <silent> <D-w> :q<CR>

  let g:mta_use_matchparen_group = 0
  let g:mta_set_default_matchtag_color = 0

  " highlight MatchTag guifg=white guibg=green
  highlight MatchTag gui=bold,reverse
endif
