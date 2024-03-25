" fzf
nnoremap <leader>h :History<CR>
nnoremap <leader>i :Rg<CR>
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

" vim-test mappings
nmap <silent> <leader>e :wa<CR> :TestFile<CR>
nmap <silent> <leader>r :wa<CR> :TestNearest<CR>
nmap <silent> <leader>t :wa<CR> :TestLast<CR>
nmap <silent> <leader>a :wa<CR> :TestSuite<CR>
nmap <silent> <leader>g :wa<CR> :TestVisit<CR>
" let test#strategy = "dispatch"
let test#ruby#rspec#options = '--fail-fast'
let test#ruby#use_spring_binstub = 1
