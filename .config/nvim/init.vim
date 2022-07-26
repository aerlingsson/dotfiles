" Options
set background=dark
set number relativenumber
set colorcolumn=120
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

if has('termguicolors')
    set termguicolors
endif

""" Keybinds
" No arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Exit
inoremap jj <Esc>

" FZF
noremap <C-P> :FZF<CR>

" Plugins
call plug#begin()
    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'airblade/vim-rooter'

    " Fuzzy fluffy
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " LSP
    Plug 'neovim/nvim-lspconfig'

    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'tpope/vim-dispatch'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    " Plug 'ctrlpvim/ctrlp.vim'

    " Completion / linters / formatters
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    Plug 'eslint/eslint'

    " Elixir
    Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

    " C#
    Plug 'OmniSharp/omnisharp-vim'

    " Git
    " Plug 'airblade/vim-gitgutter'

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

" Plugin options: ALE
let g:OmniSharp_selector_findusages = 'fzf'
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'cs': ['prettier', 'eslint', 'OmniSharp']
\}
let g:ale_fixers = {
\   '*': ['trim_whitespace', 'prettier', 'eslint']
\}

" Colorscheme
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
