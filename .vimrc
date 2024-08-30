set encoding=utf-8
set scrolloff=11
set belloff=all
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set belloff=all
set backspace=start
set nobackup
set nowritebackup

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'k4yt3x/ayu-vim-darker'
    Plug 'JafarDakhan/vim-gml'
    Plug 'dense-analysis/ale'

    " IA Writer Plugins
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'subnut/vim-iawriter'
call plug#end()

set termguicolors
let ayucolor="darker"
colorscheme ayu
let mapleader = " "

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <leader>\ :Iawriter<CR>:set background=dark<CR>
nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>

let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

let g:ale_linters = {
\   'go': ['gopls'],
\   'lua': ['lua-language-server'],
\}
