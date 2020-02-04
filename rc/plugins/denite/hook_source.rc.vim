" --------------------------------------------------------------------------------
" Shougo/denite.nvim

" --------------------------------------------------------------------------------
" Config

call denite#custom#option('default', {
      \ 'highlight_filter_background': 'CursorLine',
      \ 'source_names': 'short',
      \ 'split': 'floating',
      \ 'filter_split_direction': 'floating',
      \ })

call denite#custom#option('search', {
      \ 'highlight_filter_background': 'CursorLine',
      \ 'source_names': 'short',
      \ 'filter_split_direction': 'floating',
      \ })

autocmd FileType denite call s:denite_settings()

function! s:denite_settings() abort
  nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d    denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p    denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q    denite#do_map('quit')
  nnoremap <silent><buffer><expr> i    denite#do_map('open_filter_buffer')
endfunction

let s:denite_file_rec_command = ['fd', '.',
      \ '--threads=16',
      \ '--follow', 
      \ '--hidden', 
      \ '--no-ignore', 
      \ '--full-path',
      \ '--type', 'f',
      \ '-E', '.git/',
      \ '-E', 'vendor/',
      \ '-E', 'node_modules/',
      \ '-E', '.gitignore',
      \ '-E', '.*.*',
      \ '-E', 'target/',
      \ '-E', '.idea/',
      \ ]

call denite#custom#var('file/rec', 'command', s:denite_file_rec_command)

call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--no-config', '--threads=12', '--hidden', '--smart-case', '--vimgrep', '--no-ignore-vcs', '--heading', '--glob=!.git', '--glob=!node_modules'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

let g:webdevicons_enable_denite = 1
