" fzf
nnoremap <leader>h :History<CR>
nnoremap <leader>i :Ag<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>p :FZF<CR>
nnoremap <leader>s :Scratch<CR>
nnoremap <leader>u :Commands<CR>

" resize
nnoremap <leader>7 :res +2<CR> " increase pane by 2
nnoremap <leader>8 :res -2<CR> " decrease pane by 2
nnoremap <leader>9 :vertical res +2<CR> " vertical increase pane by 2
nnoremap <leader>0 :vertical res -2<CR> " vertical decrease pane by 2

" ale
" nmap <leader>f <Plug>(ale_fix)

" RSpec.vim mappings
map <Leader>e :call RunCurrentSpecFile()<CR>
map <Leader>r :wa<CR>:call RunNearestSpec()<CR>
map <Leader>t :wa<CR>:call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>
