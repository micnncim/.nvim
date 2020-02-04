" --------------------------------------------------------------------------------
" dein.vim

let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim/rc/dein'
let s:dein_cache_dir = $XDG_CACHE_HOME . '/nvim/rc/dein'

if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  call dein#load_toml(s:dein_config_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/plugins_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
