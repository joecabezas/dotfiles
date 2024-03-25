-- set runtimepath^=~/.vim runtimepath+=~/.vim/after
-- let &packpath = &runtimepath
-- source ~/.vimrc

require('lazynvim')

require('custom')
require('leader-key-mappings')
--require('fzf')

-- Pending, I need a better way to load coc.vim config
-- vim.cmd "source ~/git/dotfiles/.vim/plugin/k014_custom_configs/coc.vim"
