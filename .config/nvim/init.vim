set number
set mouse=a
nnoremap <esc><esc> :silent! nohls<cr>

nnoremap <SPACE> <Nop>
let mapleader=" "
:nnoremap <Leader>w <C-w>

set clipboard+=unnamedplus
set relativenumber
set formatoptions-=cro
let g:rainbow_active = 1
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Color Line
    Plug 'itchyny/lightline.vim'
    " Goyo
    Plug 'junegunn/goyo.vim'
    " Tokyo
    Plug 'folke/tokyonight.nvim'
    " Rainbow Brackets
    " Plug 'frazrepo/vim-rainbow'
    " Nerdtree icons
    " Plug 'ryanoasis/vim-devicons'
    " NT file highlight
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Startify
    Plug 'mhinz/vim-startify'
    " LSP
    ""Plug 'neovim/nvim-lspconfig'
    ""Plug 'hrsh7th/nvim-compe'
call plug#end()

"nmap <C-f> :NERDTreeToggle<CR>

syntax on
autocmd BufEnter *asm setfiletype nasm

"   autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"       \ quit | endif
"   let g:NERDTreeDirArrowExpandable = '▸'
"   let g:NERDTreeDirArrowCollapsible = '▾'
"   
"   let g:webdevicons_conceal_nerdtree_brackets = 1

autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ }

let g:startify_custom_header = [
        \ '                          ,,                            ',
        \ ' `7MN.   `7MF''            db                            ',
        \ '   MMN.    M                                            ',
        \ '   M YMb   M `7M''   `MF''`7MM  `7MMpMMMb.pMMMb.  MMMMMM/ ',
        \ '   M  `MN. M   VA   ,V    MM    MM    MM    MM .M       ',
        \ '   M   `MM.M    VA ,V     MM    MM    MM    MM |bMMAg.  ',
        \ '   M     YMM     VVV      MM    MM    MM    MM      `Mb ',
        \ ' .JML.    YM      W     .JMML..JMML  JMML  JMML.     jM ', 
        \ '                                              (O)   ,M9 ',
        \ '                                                6mmm9   ',
        \ ]


set undofile
set undodir=~/.nvim/undodir


set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent = 1
colorscheme tokyonight

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

