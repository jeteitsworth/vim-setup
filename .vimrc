1   set scrolloff=11
  1 set number
  2 set relativenumber
  3
  4 set tabstop=4 softtabstop=4
  5 set shiftwidth=4
  6 set expandtab
  7 set smartindent
  8
  9 call plug#begin('~/.vim/plugged')
 10     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 11     Plug 'junegunn/fzf.vim'
 12     Plug 'k4yt3x/ayu-vim-darker'
 13 call plug#end()
 14
 15 set termguicolors
 16 let ayucolor="darker"
 17 colorscheme ayu
 18
 19 let mapleader = " "
 20
 21 nnoremap <leader>pv :Vex<CR>
 22 nnoremap <leader><CR> :so ~/.vimrc<CR>
 23 nnoremap <C-p> :GFiles<CR>
 24 nnoremap <leader>pf :Files<CR>
