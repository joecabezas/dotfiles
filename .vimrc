call plug#begin()

Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'jceb/vim-orgmode'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorschemes
Plug 'sts10/vim-pink-moon'
Plug 'lmintmate/blue-mood-vim'
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim'
Plug 'caglartoklu/qbcolor.vim'
Plug 'sjl/badwolf'

call plug#end()

" Custom includes
let s:k014_include_path = fnamemodify(resolve(expand('<sfile>:p')), ':h').'/.vim'
execute 'set rtp+='.s:k014_include_path
runtime! plugin/**/*.vim
