scriptencoding utf-8

set nowrap
set tabstop=4 softtabstop=4
set expandtab " Tab to spaces
set shiftwidth=4
set cmdheight=1 " Only 1 line at bottom
set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile
set updatetime=1000 " Save changes every 1000 millis
set relativenumber " Relative line numbers
set wrap " Word wrapping
set incsearch " Incremental seraching

set ignorecase
set smartcase " switches to case-sensitive if upper case char

" Split settings
set splitbelow
set splitright

" Settings for vimwiki
set nocompatible
syntax on

" colorscheme solarized
autocmd vimenter * colorscheme gruvbox
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set t_Co=256

" Vundle plugin stuff

filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion
Plug 'ThePrimeagen/vim-be-good'
Plug 'morhetz/gruvbox' " Colour scheme
Plug 'preservim/nerdtree' " File tree
Plug 'justinmk/vim-sneak' " Search with 2 chars
Plug 'VundleVim/Vundle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'udalov/kotlin-vim'
Plug 'ctrlpvim/ctrlp.vim' " Ctrl+P to fuzzy search files in dir
" Plugin scrooloose/nerdcommenter <-- can select multi line to comment
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
call plug#end()

source $HOME/.config/nvim/init-coc.vim
source $HOME/.config/nvim/init-sneak.vim
source $HOME/.config/nvim/init-coc-explorer.vim
source $HOME/.config/nvim/init-leader.vim

filetype plugin indent on  " allows auto-indenting depending on file type

" Vimwiki config
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'path': '~/Documents/vimwiki'}]
let g:vimwiki_url_maxsave=0

" Key remapping
nnoremap H gT
nnoremap L gt
imap <A-BS> <C-W>

""" NerdTree Stuff

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

"" Other Stuff

autocmd BufReadPost *.kt setlocal filetype=kotlin

" Not needed if using coc. Check here: https://github.com/fwcd/kotlin-language-server/blob/master/EDITORS.md
" let g:LanguageClient_serverCommands = { 'kotlin': ["kotlin-language-server"], }


