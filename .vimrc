set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself:
Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-rhubarb.git'
Plugin 'dense-analysis/ale'

" Colorschemes
Plugin 'sts10/vim-pink-moon'
Plugin 'lmintmate/blue-mood-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin on
syntax on " Syntax highlighting

" Custom includes
let s:k014_include_path = fnamemodify(resolve(expand('<sfile>:p')), ':h').'/.vim'
execute 'set rtp+='.s:k014_include_path
runtime! plugin/**/*.vim
