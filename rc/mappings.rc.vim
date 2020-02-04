" --------------------------------------------------------------------------------
" Key mappings

" --------------------------------------------------------------------------------
" General

let mapleader = "\<Space>"

" Swap ; and :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
cnoremap ; :
cnoremap : ;

noremap j gj
noremap k gk

" --------------------------------------------------------------------------------
" Edit

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" --------------------------------------------------------------------------------
" Window

" Disable default s behavior
nnoremap s <Nop>

" Split window
nnoremap ss :<C-u>split<CR>
nnoremap sv :<C-u>vsplit<CR>

" Move to window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" Resize window with cursor keys
nnoremap <silent><Down>  <C-w>-
nnoremap <silent><Up>    <C-w>+
nnoremap <silent><Left>  <C-w><
nnoremap <silent><Right> <C-w>>

" --------------------------------------------------------------------------------
" Buffer

nnoremap <silent><C-n> :<C-u>bnext<CR>
nnoremap <silent><C-p> :<C-u>bprevious<CR>
