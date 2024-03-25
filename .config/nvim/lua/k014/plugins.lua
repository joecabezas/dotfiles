local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug('junegunn/fzf.vim', { commit = '01f7146c' })
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug('neoclide/coc.nvim', { branch = 'release'})
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'vim-test/vim-test'
Plug 'neovim/nvim-lspconfig'

-- disabled
-- Plug 'mtth/scratch.vim'
-- Plug 'Galooshi/vim-import-js'
-- Plug 'dense-analysis/ale'
-- Plug 'junegunn/vim-peekaboo'
-- Plug 'leafgarland/typescript-vim'
-- Plug 'ludovicchabant/vim-gutentags'
-- Plug 'ntpeters/vim-better-whitespace'
-- Plug 'pangloss/vim-javascript'
-- Plug 'peitalin/vim-jsx-typescript'
-- Plug 'takac/vim-hardtime'
-- Plug 'towolf/vim-helm'
-- Plug 'tpope/vim-bundler'
-- Plug 'vim-ruby/vim-ruby'
-- Plug 'thoughtbot/vim-rspec'

-- Colorschemes
Plug 'sts10/vim-pink-moon'
Plug 'lmintmate/blue-mood-vim'
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim'
Plug 'caglartoklu/qbcolor.vim'
Plug 'sjl/badwolf'
Plug 'doums/darcula'
Plug 'folke/tokyonight.nvim'

vim.call('plug#end')
