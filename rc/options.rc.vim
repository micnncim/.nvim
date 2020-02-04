" --------------------------------------------------------------------------------
" Search

set ignorecase
set smartcase

set incsearch
set nohlsearch
set wrapscan

" --------------------------------------------------------------------------------
" View

set number

set laststatus=2
set cmdheight=2

set title

" Hide tildes in blank lines (actually this is space)
set fcs=eob:\ 

" Hide vertical split separator (actually this is space)
set fillchars+=vert:\ 

" Support true color
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set translucent
set pumblend=40

" --------------------------------------------------------------------------------
" Edit

set smarttab
set expandtab

set tabstop=4
set shiftwidth=4
set shiftround

set autoindent smartindent

set hidden

" --------------------------------------------------------------------------------
" Misc

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" Disable bell.
set t_vb=
set novisualbell
set belloff=all
