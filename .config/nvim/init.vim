" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set guifont=DroidSansMono\ Nerd\ Font\ 11

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Syntax
filetype plugin indent on
syntax on

" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_cursor=0
let g:netrw_browse_split=0
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'

" Keybinds
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap jj <Esc>

" Plugins
call plug#begin()
    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'

    " Completion / linters / formatters
    Plug 'plasticboy/vim-markdown'

    " Git
"    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim'

    " Appearance
    Plug 'vim-airline/vim-airline'
    " Plug 'ryanoasis/vim-devicons'

    " Colorscheme
    Plug 'sainnhe/gruvbox-material'

call plug#end()

" Plugin options: auto-pairs, jiangmiao
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", ' do':'end//s', '<div>':'</div>'}

" Plugin options: vim-airline, vim-airline
"let g:airline_powerline_fonts = 1

" Colorscheme
colorscheme gruvbox-material
