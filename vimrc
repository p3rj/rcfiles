set langmenu=en_US.UTF-8
"language messages en

set encoding=utf-8

let mapleader=","

" pathogen for managing plugins
call pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype plugin indent on
syntax on

"colorscheme desert
" blackboard scheme from http://www.vim.org/scripts/script.php?script_id=2280
"colorscheme blackboard
colorscheme molokai
" color tweaks (from desert)
highlight clear Search
highlight Search guibg=peru guifg=wheat

set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set nowrap

" configure display of invisible characters (colors work for blackboard
" scheme, for desert not so much; symbols used are present in Droid Sans Mono
" Slashed, may or may not work with other fonts)
set list
"set listchars=tab:›\ ,eol:¬,extends:…,precedes:…,trail:∙
set listchars=tab:›\ ,eol:¬,extends:…,precedes:…,trail:•
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set backspace=indent,eol,start

set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.class,*.jar,*.war,*.car,.git,*.pyc

set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos
set backup
set backupdir=~/.backup

set history=50

set number
set numberwidth=5
set showmatch

set ruler
set laststatus=2
set statusline=%<%n\ %F\ %y%h%m%r%=%q\ \ 0x%B\ %b\ \ %l,%c%V\ %P

set whichwrap+=<,>,[,]

set hidden

" using tags
set tags=./tags;$HOME
map <M-[> :tprev<CR>
map <M-]> :tnext<CR>

runtime macros/matchit.vim

if has("autocmd")
  filetype on
  " indentation of 2 spaces for Ruby
  autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

  " load changes to .[g]vimrc automatically
  "autocmd bufwritepost .vimrc source $MYVIMRC
  "autocmd bufwritepost .gvimrc source $MYGVIMRC
endif

" configuration for powerline
let g:Powerline_symbols='fancy'

"highlight Comment ctermfg=LightCyan
