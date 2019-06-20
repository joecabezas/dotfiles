"Sets a different FZF install path depending
"if using linux (windows wsl) or mac
if substitute(system('uname'), '\n', '', '') == "Linux"
  set rtp+=~/.fzf
else
  set rtp+=/usr/local/opt/fzf
endif

nnoremap <leader>p :FZF<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>i :Lines<CR>
