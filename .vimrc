let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"General
Plug 'banyan/recognize_charcode.vim'
Plug 'tpope/vim-sensible'
Plug 'tyru/caw.vim'
Plug 'vim-scripts/addexecmod.vim'
Plug 'vim-scripts/lastpos.vim'
"UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
let g:airline#extensions#tabline#enabled = 1
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"Syntax
if v:version >= 800
Plug 'fatih/vim-go'
  let g:go_version_warning = 0
  let g:go_highlight_array_whitespace_error = 1
  let g:go_highlight_chan_whitespace_error = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_space_tab_error = 1
  let g:go_highlight_trailing_whitespace_error = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_arguments = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_string_spellcheck = 1
  let g:go_highlight_format_strings = 1
  let g:go_highlight_variable_declarations = 1
  let g:go_highlight_variable_assignments = 1
endif
Plug 'ingydotnet/yaml-vim'
Plug 'leshill/vim-json'
Plug 'posva/vim-vue'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/nginx.vim'
Plug 'rhysd/vim-gfm-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'hashivim/vim-terraform'

"Formatter (fixer)
Plug 'w0rp/ale'
let g:ale_fixers = {
\ 'bash': ['shfmt'],
\ 'go': ['gofmt'],
\ 'javascript': ['prettier'],
\ 'json': ['jq'],
\ 'perl': ['perltidy'],
\ 'ruby': ['rubocop'],
\ 'sh': ['shfmt'],
\ 'python': ['black', 'isort'],
\ 'terraform': ['terraform'],
\ 'xml': ['xmllint'],
\ 'yaml': ['prettier'],
\ 'c': ['clang-format'],
\ }
"\ 'python': ['black', 'autopep8', 'isort'],
let g:ale_fix_on_save = 1
let g:ale_sh_shfmt_options = '-i 4 -ci'
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_python_flake8_options = '--max-line-length=120'
"Plug 'godlygeek/tabular'
"Plug 'jezcope/vim-align'
"Plug 'vim-scripts/SQLUtilities'
"Linter
let g:ale_linters = {
\ 'bash': ['shellcheck'],
\ 'coffee': ['coffee'],
\ 'go': ['gofmt'],
\ 'json': ['jsonlint'],
\ 'perl': ['perlcritic'],
\ 'ruby': ['rubocop'],
\ 'terraform': ['tflint'],
\ 'yaml': ['yamllint'],
\ 'xml': ['xmllint'],
\}
"yamllint
let g:ale_yaml_yamllint_options='-d "{extends: relaxed, rules: {line-length: disable}}"'

call plug#end()

"set number
"syntax on
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
