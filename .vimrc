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

"Plugins
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'k4yt3x/ayu-vim-darker'
    Plug 'JafarDakhan/vim-gml'
    Plug 'natebosch/vim-lsc'
    Plug 'vim-scripts/VimCompletesMe'

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

"Remaps

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <leader>\ :Iawriter<CR>:set background=dark<CR>
nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>

"LSC Config

let g:lsc_server_commands = {
 \  'lua': {
 \    'command': 'lua-language-server',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  },
 \  'python': {
 \    'command': 'pylsp',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  }
 \}
let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'FindCodeActions': 'ga',
 \  'Completion': 'omnifunc',
 \}
let g:lsc_enable_autocomplete  = v:true
let g:lsc_enable_diagnostics   = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_trace_level          = 'off'
