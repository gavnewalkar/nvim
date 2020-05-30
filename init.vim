scriptencoding utf-8

" Tabs etc
set nowrap
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Show line numbers
set number relativenumber

" Word wrapping
set wrap

" Incremental seraching
set incsearch

" Stuff needed for vimwiki plugin
filetype plugin on
syntax on

" Split settings
set splitbelow
set splitright

" Settings for vimwiki
set nocompatible
syntax on

colorscheme solarized
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set t_Co=256

"
" START - This is for Vundle
"

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type

"
" END
"

Plugin 'airblade/vim-gitgutter'
Plugin 'vimwiki/vimwiki'
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'path': '~/Documents/vimwiki'}]

nnoremap H gT
nnoremap L gt
