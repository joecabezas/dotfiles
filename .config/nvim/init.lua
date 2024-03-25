-- set runtimepath^=~/.vim runtimepath+=~/.vim/after
-- let &packpath = &runtimepath
-- source ~/.vimrc

require('k014.plugins')
require('k014.custom')
require('k014.leader-key-mappings')
require('k014.fzf')

-- Pending, I need a better way to load coc.vim config
vim.cmd "source ~/git/dotfiles/.vim/plugin/k014_custom_configs/coc.vim"
