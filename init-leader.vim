" Leader Mappings

let mapleader="\<Space>"

nnoremap <Leader>q :bd<CR>

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
"" New empty buffer:
map <A-P> :enew
"" Switch between same 2 buffers:
map <A-O> <C-^>

" Tabs

" TODO - alt ] [ maybe for moving around?
nnoremap <A-)> :tabnew<CR>
nnoremap <A-+> gt
nnoremap <A-_> gT
nnoremap <Leader>1t 1gt
nnoremap <Leader>2t 2gt
nnoremap <Leader>3t 3gt
nnoremap <Leader>4t 4gt
nnoremap <Leader>5t 5gt

" Splitting

nnoremap <Leader>v :vnew<CR> " Vertical split

" This needs work:
noremap <silent> <C-S-Left> :exe "vertical resize " . (winwidth(0) + 1)<CR>
noremap <silent> <C-S-Right> :vertical resize winwidth(0) -1<CR>
" noremap <silent> <C-S-Left> :vertical resize +1<CR>
" noremap <silent> <C-S-Right> :vertical resize -1<CR>
" nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" nnoremap <Leader>+ "resize " . (winheight(0) * 3/2)<CR>


