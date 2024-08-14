set number
syntax on
set incsearch
set hlsearch
set smartindent
set autoindent
set ignorecase
set smartcase
set laststatus=2
set wildmenu
filetype plugin indent on
set showcmd
set background=dark
set ruler
set showmatch

"set noexpand tab
let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif
