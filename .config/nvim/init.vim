"   _         _  _            _            
"  (_)       (_)| |          (_)           
"   _  _ __   _ | |_  __   __ _  _ __ ___  
"  | || '_ \ | || __| \ \ / /| || '_ ` _ \ 
"  | || | | || || |_  _\ V / | || | | | | |
"  |_||_| |_||_| \__|(_)\_/  |_||_| |_| |_|
"
"  ~/.config/nvim/init.vim by Lachlan Shoesmith (lachlantula).
"  Last updated: 3/1/18.

set number
set noswapfile
set smartcase

" Enable GUI mouse behavior
set mouse=a

" Oni-specific settings.
if exists("g:gui_oni")
  set nocompatible              " be iMproved, required
  filetype off                  " required
  " If using Oni's externalized statusline, hide vim's native statusline.
  set noshowmode
  set noruler
  set laststatus=0
  set noshowcmd
endif

" Load ~/.vimrc.

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

