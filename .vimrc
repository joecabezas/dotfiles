set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself:
Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'junegunn/fzf.vim'

" Colorschemes
Plugin 'sts10/vim-pink-moon'
Plugin 'lmintmate/blue-mood-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin on
syntax on " Syntax highlighting

" Custom includes
let s:include_path = fnamemodify(resolve(expand('<sfile>:p')), ':h').'/includes/vim'
execute 'source '.s:include_path.'/custom.vim'
execute 'source '.s:include_path.'/resize.vim'
execute 'source '.s:include_path.'/fzf.vim'
execute 'source '.s:include_path.'/airline.vim'
