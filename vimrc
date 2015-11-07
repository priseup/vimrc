"=========================bundle start================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround' not work
Plugin 'mbbill/fencview'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
"Plugin 'kien/rainbow_parentheses.vim' colors so mess with parenthese
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltorg/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'sukima/xmledit'
"Plugin 'sjl/gundo.vim' no need
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/neocomplcache'
Plugin 'msanders/snipmate.vim'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
"Plugin 'SirVer/ultisnips'  need vim7.4

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'c.vim'
"Plugin 'ShowPairs' no need
Plugin 'ack.vim'
Plugin 'L9'
Plugin 'a.vim'
Plugin 'CSApprox'
Plugin 'OmniCppComplete'
"Plugin 'Markdown' very very slow when open markdown file
Plugin 'Markdown-syntax'
"Plugin 'taglist.vim'  the similar plugin tagbar.vim
Plugin 'xml.vim'
Plugin 'matchit.zip'
Plugin 'css_color.vim'
Plugin 'YankRing.vim'
Plugin 'vim-cpp-enhanced-highlight'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"=========================bundle end================================

syntax on

set background=dark
color evening

set ruler
set number
set showcmd
set showmode
set showmatch
set autoread
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
set tags=./tags,../tags
set tags+=~/.qt5
set backspace=indent,eol,start

set nobackup
set noswapfile

let mapleader=","
let g:mapleader=","

" when vim is in GUI evironment, such as gvim
"set guifont=YaHei\ Consolas\ Hybrid:h12

"nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'	
let g:tagbar_width=30		
map <F3> :Tagbar<CR>

" nerdtree
let NERDTreeWinPos='left'
let NERDTreeWinSize=15
map <F2> :NERDTreeToggle<CR>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1   "neocomplcache starts when vim is launched
"let g:neocomplcache_enable_auto_select = 1   "neocomplcache select the first candidate as you want 

" rainbow_parentheses
"let g:rbpt_colorpairs = [
    "\ ['brown',       'RoyalBlue3'],
    "\ ['Darkblue',    'SeaGreen3'],
    "\ ['darkgray',    'DarkOrchid3'],
    "\ ['darkgreen',   'firebrick3'],
    "\ ['darkcyan',    'RoyalBlue3'],
    "\ ['darkred',     'SeaGreen3'],
    "\ ['darkmagenta', 'DarkOrchid3'],
    "\ ['brown',       'firebrick3'],
    "\ ['gray',        'RoyalBlue3'],
    "\ ['black',       'SeaGreen3'],
    "\ ['darkmagenta', 'DarkOrchid3'],
    "\ ['Darkblue',    'firebrick3'],
    "\ ['darkgreen',   'RoyalBlue3'],
    "\ ['darkcyan',    'SeaGreen3'],
    "\ ['darkred',     'DarkOrchid3'],
    "\ ['red',         'firebrick3'],
    "\ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" vim-cpp-enhanced-highlight
"Highlighting of class scope if disabled by default. To enable set
let g:cpp_class_scope_highlight = 1
"Highlighting of template functions is enabled by setting
let g:cpp_experimental_template_highlight = 1

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 	

" remember the last position when exits, so next open locates it
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" remove ^M caused in win32
nmap mm :%s/\r//g<cr>
