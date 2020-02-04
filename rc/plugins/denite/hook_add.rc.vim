" --------------------------------------------------------------------------------
" Shougo/denite.nvim

" --------------------------------------------------------------------------------
" Key mapping

nnoremap <silent> <Leader>r :<C-u>Denite file/rec<CR>
nnoremap <silent> <Leader>g :<C-u>Denite grep<CR>

" Set translucent
augroup transparent-windows
  autocmd!
  autocmd FileType denite set winblend=10
  autocmd FileType denite-filter set winblend=10
augroup END
