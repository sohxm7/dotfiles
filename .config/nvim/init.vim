set number
set nohlsearch
set mouse=a
set clipboard+=unnamedplus
set relativenumber
set formatoptions-=cro
let g:rainbow_active = 1
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Color Line
    Plug 'itchyny/lightline.vim'
    " Rainbow Brackets
    Plug 'frazrepo/vim-rainbow'
    " COC
    Plug 'neoclide/coc.nvim'
    " Goyo
    Plug 'junegunn/goyo.vim'
call plug#end()


syntax on

autocmd BufEnter *asm setfiletype nasm
