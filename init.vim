scriptencoding utf-8

" Tabs etc
set nowrap
set tabstop=4 softtabstop=4
set expandtab " Tab to spaces
set shiftwidth=4

set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile

set relativenumber " Relative line numbers
set wrap " Word wrapping
set incsearch " Incremental seraching

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
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree' " File tree
Plug 'justinmk/vim-sneak' " Search with 2 chars
Plug 'VundleVim/Vundle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'udalov/kotlin-vim'
" Plugin 'ctrlpvim/ctrlp.vim' <-- can make like Cmd+Shift+R for file search in
" IntelliJ --> apparently fzf is faster
" Plugin scrooloose/nerdcommenter <-- can select multi line to comment
" Plugin 'airplace/vim-gitgutter <-- shows lines changes in git, like in
" IntelliJ
" "fcf" apparently is also a good fast file search plugin : https://github.com/junegunn/fzf/blob/master/README-VIM.md
call plug#end()

filetype plugin indent on  " allows auto-indenting depending on file type

" Vimwiki config
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'path': '~/Documents/vimwiki'}]
let g:vimwiki_url_maxsave=0

" Key remapping
nnoremap H gT
nnoremap L gt

""" NerdTree Stuff

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

"" Other Stuff

source $HOME/.config/nvim/init-coc.vim
source $HOME/.config/nvim/init-sneak.vim

autocmd BufReadPost *.kt setlocal filetype=kotlin

let g:LanguageClient_serverCommands = {
    \ 'kotlin': ["kotlin-language-server"],
    \ }


