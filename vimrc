
set nocompatible              " be iMproved, required
filetype on 

"need plugin: fencview.vim    a.vim
"*************************vim option start*******************************
"*************************vim option start*******************************
syntax on

set background=dark
color evening

set ruler
set number
set relativenumber
set showcmd
set showmode
set showmatch
set autoread
set autowrite
set smarttab
set expandtab
set smartindent
set autoindent
set hlsearch
set incsearch
set ignorecase

set go=
set mouse=a
set t_Co=256
set tabstop=4
set shiftwidth=4
set laststatus=1
set history=1000
set tags+=../tags ",~/.qt5
set backspace=indent,eol,start

set nobackup
set noswapfile

"let mapleader=","
"let g:mapleader=","

" when vim is in GUI evironment, such as gvim
if has('gui_running')
    "set guifont=YaHei\ Consolas\ Hybrid:h12 "windows form
    "set guifont=Monospace\ 13 "linux form
    set guioptions+=m   " menubar
    set guioptions-=T   " toolbar
    "color molokai
endif


" remember the last position when exits, so next open locates it
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" remove ^M caused in win32
nmap mm :%s/\r//g<cr>

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
