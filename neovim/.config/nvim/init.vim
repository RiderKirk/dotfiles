" SET OPTIONS
set clipboard=unnamedplus

" line numbers
set number
set relativenumber

" indents
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" line wrap
set nowrap

" search
set hlsearch
set incsearch

" colors
set termguicolors

" REMAPS
let mapleader = "\<Space>"
nnoremap <leader>e :Ex<CR>

" center cursor on page up and down
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" center cursor on search
nnoremap n nzz
nnoremap N Nzz

" move highlighted sections and auto indent when moving into block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" replace word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" VIMPLUG
call plug#begin()

Plug 'dense-analysis/ale'

call plug#end()

" ALE
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
