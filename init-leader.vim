" Leader Mappings

let mapleader="\<Space>"

nnoremap <Leader>q :bd<CR>

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
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt

" Splitting

nnoremap <Leader>v :vnew<CR> " Vertical split


