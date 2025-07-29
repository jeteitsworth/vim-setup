set encoding=utf-8
set scrolloff=11
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set nobackup
set nowritebackup
set linebreak
set autowriteall
set history=100

"Plugins
call plug#begin('~/.vim/plugged')
    " FZF
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
    "Theme
    Plug 'k4yt3x/ayu-vim-darker'

    "IA Writer Plugins
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'subnut/vim-iawriter'
	Plug 'preservim/vim-pencil'

    "Org plugins
    Plug 'nvim-orgmode/orgmode'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'akinsho/org-bullets.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
    Plug 'nvim-orgmode/telescope-orgmode.nvim'

	"Vim wiki
	Plug 'vimwiki/vimwiki'
call plug#end()

set termguicolors
let ayucolor="darker"
colorscheme ayu
let mapleader = " "

"Remaps

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>\ :Iawriter<CR>:set background=dark<CR>
nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>
nnoremap <leader>as :Telescope orgmode search_headings<CR>
nnoremap <leader>sc :set spell! spelllang=en_us<CR>

inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u
inoremap , ,<c-g>u

nnoremap <leader>z g<C-g>:<C-U>echo v:statusmsg<CR>

" Org setup
lua << EOF
require('orgmode').setup({
org_agenda_files = '~/Dropbox/org/**/*',
org_default_notes_file = '~/Dropbox/org/refile.org',
})
EOF

" Setup Org Bullets
lua << EOF
require('org-bullets').setup()
EOF

" Setup Vimwiki
let g:vimwiki_list = [{'path': '~/novel-2/wiki/', 'path_html': '~/novel-2/wiki_html/'}]

" Pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd    call pencil#init()
  autocmd FileType text            call pencil#init()
  autocmd FileType org             call pencil#init()
augroup END
