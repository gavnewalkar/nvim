scriptencoding utf-8

set nowrap
set tabstop=4 softtabstop=4
set expandtab " Tab to spaces
set shiftwidth=4
set cmdheight=1 " Only 1 line at bottom
set noswapfile
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set updatetime=1000 " Save changes every 1000 millis
set number relativenumber " Current line number + relative line numbers.
set wrap " Word wrapping
set incsearch " Incremental seraching
set hidden " Enable hidden files
set ignorecase
set smartcase " switches to case-sensitive if upper case char
set splitbelow " hsplit default behaviour
set splitright " vsplit default behaviour
set noshowmode " Don't show INSERT/VISUAL/etc since lightline plugin shows it.
set laststatus=2
set colorcolumn=100
set termguicolors
syntax on

" Fix colour issues with lightline
if !has('gui_running')
  set t_Co=256
endif

" Vundle plugin stuff

" filetype off " No need. plug#end will auto run: filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

Plug 'ThePrimeagen/vim-be-good'
Plug 'lifepillar/vim-gruvbox8' " Gruvbox Colour scheme - but faster
Plug 'sainnhe/gruvbox-material' " Gruvbox material colour theme
Plug 'savq/melange' " Melange colour theme
Plug 'justinmk/vim-sneak' " Search with 2 chars
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'udalov/kotlin-vim'
Plug 'ctrlpvim/ctrlp.vim' " Ctrl+P to fuzzy search files in dir
Plug 'itchyny/lightline.vim' " Git status bar
Plug 'itchyny/vim-gitbranch' " Uses lightline to show current branch
Plug 'szw/vim-maximizer' " Split maximize and revert quickly
Plug 'tpope/vim-commentary' " Easily comment lines
Plug 'nvim-lua/popup.nvim' " Need for telescope
Plug 'nvim-lua/plenary.nvim' " Need for telescope
Plug 'nvim-telescope/telescope.nvim' " File finder
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/goyo.vim' " Zen mode

call plug#end()

" Gruvbox colorschemd
" Using autocmd/etc to ensure it runs _after_ all plugins
" autocmd vimenter * ++nested colorscheme gruvbox8
" autocmd vimenter * ++nested colorscheme melange
autocmd vimenter * ++nested colorscheme gruvbox-material
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1


source $HOME/.config/nvim/init-sneak.vim
source $HOME/.config/nvim/init-leader.vim
source $HOME/.config/nvim/init-vimwiki.vim

filetype plugin indent on  " allows auto-indenting depending on file type

"" Kotlin

autocmd BufReadPost *.kt setlocal filetype=kotlin

" Lightline (the status bar for git)

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
let g:lightline.colorscheme = 'gruvbox_material' " Override to this theme.

" Other

lua require('namespace1')

