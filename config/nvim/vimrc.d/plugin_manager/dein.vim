"
" Installation
"
if &compatible
  set nocompatible
endif

" Set dirs for installing plugins and dein.vim itself
let s:dein_root_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_root_dir . '/repos/github.com/Shougo/dein.vim'

" Add dein.vim to runtimepath
if &runtimepath !~# '/dein.vim'
  " Install dein.vim if not installed
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif

  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

"
" Settings
"
if dein#load_state(s:dein_root_dir)
  call dein#begin(s:dein_root_dir, '~/.config/nvim/vimrc.d/plugin_manager/dein.vim')

  " Load a plugins list
  call dein#load_toml('~/.config/nvim/vimrc.d/plugin_manager/dein.toml')

  call dein#end()
  call dein#save_state()
endif

" Install plugins if not installed
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
