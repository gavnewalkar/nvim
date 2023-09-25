" Leader Mappings

" Rules:
" - Let's not mess with the Command key. Leave that to OS bindings.

let mapleader="\<Space>"

" Quick files
" TODO: \1 for init.vim
" TODO: \2 for init-leader.vim
" TODO: \r for reload all vim configs


" Exit buffer
nnoremap <silent><Leader>q :bd<CR>
" Alt-backspace to delete word
imap <A-BS> <C-W>

" Copy/paste to system clipboard
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" Yank/paste to registers

vnoremap <Leader>1y "1y
vnoremap <Leader>2y "2y
vnoremap <Leader>3y "3y

nnoremap <Leader>1p "1p
nnoremap <Leader>2p "2p
nnoremap <Leader>3p "3p

" Buffers

nnoremap <A-}> :bn<CR>
nnoremap <A-{> :bp<CR>
nnoremap <c-k> :bn<cr>
nnoremap <c-j> :bp<cr>
" New empty buffer:
map <A-P> :enew
" Switch between same 2 buffers:
map <A-O> <C-^>

" Splitting

nnoremap <Leader>v :vnew<CR> " Vertical split
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" nnoremap <Leader>h <c-w>h
" nnoremap <Leader>l <c-w>l

" Maximising: These come by default with vim-maximizer:
" nnoremap <silent><F3> :MaximizerToggle<CR>
" vnoremap <silent><F3> :MaximizerToggle<CR>gv
" inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

" Switch to left/right split
nnoremap <silent><C-h> <C-w>h
nnoremap <silent><C-l> <C-w>l

" This needs work:
" noremap <silent> <C-S-Left> :exe "vertical resize " . (winwidth(0) + 1)<CR>
" noremap <silent> <C-S-Right> :vertical resize winwidth(0) -1<CR>
" noremap <silent> <C-S-Left> :vertical resize +1<CR>
" noremap <silent> <C-S-Right> :vertical resize -1<CR>
" nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" nnoremap <Leader>+ "resize " . (winheight(0) * 3/2)<CR>

" Tabs

" nnoremap <A-)> :tabnew<CR>
" nnoremap <A-+> gt
" nnoremap <A-_> gT
" nnoremap <Leader>1t 1gt
" nnoremap <Leader>2t 2gt
" nnoremap <Leader>3t 3gt
" nnoremap <Leader>4t 4gt
" nnoremap <Leader>5t 5gt

" Commenting out

" Note: Bug with vim where / maps to _
nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary
imap <c-_> <C-o><Plug>CommentaryLine

" Find files using Telescope command-line sugar.

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader><leader> <cmd>Telescope current_buffer_fuzzy_find<cr> 
" TODO find files in current buffer's directory


