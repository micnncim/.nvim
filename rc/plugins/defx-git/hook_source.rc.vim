" --------------------------------------------------------------------------------
" kristijanhusak/defx-git

call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '+',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : 'ǂ',
  \ 'Ignored'   : '≠',
  \ 'Deleted'   : '⨯',
  \ 'Unknown'   : '?'
  \ })
