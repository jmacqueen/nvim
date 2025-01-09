" Enable line numbers and relative line numbers
set number
set relativenumber

" Set tab width and use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Enable syntax highlighting
syntax on

" Enable search highlighting and incremental search
set hlsearch
set incsearch

" Set clipboard to use the system clipboard
set clipboard=unnamedplus

" Enable mouse support
set mouse=a

" Set a better status line
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%{&fileencoding}]\ [%{&fileformat}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]
