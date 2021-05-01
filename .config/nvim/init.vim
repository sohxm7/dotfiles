set number
set mouse=a
nnoremap <esc><esc> :silent! nohls<cr>

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
    " Goyo
    Plug 'junegunn/goyo.vim'
    " Tokyo
    Plug 'ghifarit53/tokyonight-vim'
    " Rainbow Brackets
    Plug 'frazrepo/vim-rainbow'
    " Nerdtree icons
    Plug 'ryanoasis/vim-devicons'
call plug#end()


"autocmd VimEnter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <C-f> :NERDTreeToggle<CR>


syntax on 
autocmd BufEnter *asm setfiletype nasm

set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight


"autocmd VimEnter * NERDTree
"autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

:nnoremap <Leader>w <C-w>
