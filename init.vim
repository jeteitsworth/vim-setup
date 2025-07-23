set encoding=utf-8
set scrolloff=11
set belloff=all
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set backspace=start
set nobackup
set nowritebackup
set linebreak

"Plugins
call plug#begin('~/.vim/plugged')
    " Theme
    Plug 'k4yt3x/ayu-vim-darker'

    " IA Writer Pluginks
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'subnut/vim-iawriter'

    " Org plugins
    Plug 'nvim-orgmode/orgmode'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors
let ayucolor="darker"
colorscheme ayu
let mapleader = " "

"Remaps

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>\ :Iawriter<CR>:set background=dark<CR>
nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>

" Org setup
lua << EOF
require('orgmode').setup({
org_agenda_files = '~/Dropbox/org/**/*',
org_default_notes_file = '~/Dropbox/org/refile.org',
})
EOF
