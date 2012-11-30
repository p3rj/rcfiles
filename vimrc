set langmenu=en_US.UTF-8
"language messages en

set encoding=utf-8

set nocompatible
filetype plugin on
syntax on

"colorscheme desert
" blackboard scheme from http://www.vim.org/scripts/script.php?script_id=2280
colorscheme blackboard
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
set listchars=tab:►\ ,eol:¬,extends:…,precedes:…
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set backspace=indent,eol,start

set wildmenu

set hlsearch
set incsearch
set ignorecase

set fileformats=unix,dos
set backup
set backupdir=~/.backup

set history=50
set smartcase

set number
set numberwidth=5
set showmatch

set ruler
set laststatus=2
set statusline=%<%n\ %F\ %y%h%m%r%=0x%B\ %b\ \ %l,%c%V\ %P

set whichwrap+=<,>,h,l,[,]

if has("autocmd")
  filetype on
  " indentation of 2 spaces for Ruby
  autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

  " load changes to .[g]vimrc automatically
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost .gvimrc source $MYGVIMRC

  autocmd BufRead *_spec.rb syn keyword rubyRSpec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
  highlight def link rubyRSpec Function
endif

"highlight Comment ctermfg=LightCyan

