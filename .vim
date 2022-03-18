set nocompatible
set noundofile
set nobackup

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set backspace=indent,eol,start

filetype plugin indent on
syntax on

set number
set cursorline
highlight cursorline cterm=none
highlight cursorlinenr ctermfg=blue

" generate tags on file save
autocmd BufWritePost *.cpp,*.hpp silent! !ctags <afile> &
