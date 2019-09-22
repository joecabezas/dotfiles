" fzf
nnoremap <leader>p :FZF<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>i :Lines<CR>

" goyo
nnoremap <leader>g :Goyo<CR>

" resize
nnoremap <leader>7 :res +2<CR> " increase pane by 2
nnoremap <leader>8 :res -2<CR> " decrease pane by 2
nnoremap <leader>9 :vertical res +2<CR> " vertical increase pane by 2
nnoremap <leader>0 :vertical res -2<CR> " vertical decrease pane by 2

" ale
nmap <leader>f <Plug>(ale_fix)
