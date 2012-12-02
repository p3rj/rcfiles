set guioptions-=t
set guioptions-=T
set guioptions+=e
set guioptions+=b
set guioptions+=h

set showtabline=2
set cursorline
set nocursorcolumn

nnoremap <esc> :noh<return><esc>

if &lines < 40
  set lines=40
endif
if &columns < 104
  set columns=104
endif

"set guifont=Envy\ Code\ R\ 10
"set guifont=Droid\ Sans\ Mono\ Slashed\ 10

"set guifont=Source\ Code\ Pro:h15
"set guifont=Anonymous:h15
"set guifont=Envy\ Code\ R:h15
"set guifont=Liberation\ Mono:h15
"set guifont=Monaco:h12
"set guifont=Menlo\ for\ Powerline:h15
set guifont=Ubuntu\ Mono\ for\ Powerline:h18

