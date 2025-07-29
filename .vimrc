set encoding=utf-8
set scrolloff=11
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set backspace=start
set nobackup
set nowritebackup
set linebreak

"Plugins
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'k4yt3x/ayu-vim-darker'

    " IA Writer Plugins
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'subnut/vim-iawriter'
    Plug 'preservim/vim-pencil'
    Plug 'preservim/vim-lexical'
    Plug 'kana/vim-textobj-user'
    Plug 'preservim/vim-textobj-quote'
    Plug 'preservim/vim-textobj-sentence'
    Plug 'preservim/vim-litecorrect'

    "Vim org
    Plug 'jceb/vim-orgmode'
    Plug 'mattn/calendar-vim'
    Plug 'yegappan/taglist'
    Plug 'vim-scripts/utl.vim'
    Plug 'preservim/tagbar'
    Plug 'universal-ctags/ctags'
    Plug 'tpope/vim-speeddating'
call plug#end()

set termguicolors
let ayucolor="darker"
colorscheme ayu
let mapleader = " "

"Remaps

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>\ :Iawriter<CR>:set background=dark<CR>
nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>

let g:pickachu_default_date_format = "%Y-%m-%d %a %H:%M"

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,text call pencil#init()
                            \ | call lexical#init()
                            \ | call textobj#quote#init()
                            \ | call textobj#sentence#init()
                            \ | call litecorrect#init()
augroup END
