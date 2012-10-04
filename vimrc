set langmenu=en_US.UTF-8
"language messages en

set directory=.,$TEMP

set nocompatible
filetype plugin on
syntax on

"colorscheme wombat
colorscheme desert

set autoindent
set shiftwidth=4
set nowrap

set hlsearch
set incsearch
set ignorecase

set ruler
set showmatch
set showtabline=2
set cursorline
set nocursorcolumn
set number
set numberwidth=5
set laststatus=2
set whichwrap+=<,>,h,l,[,]

set expandtab

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}, {'path': '~/localwiki'}]

