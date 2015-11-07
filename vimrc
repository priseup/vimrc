"=========================bundle start================================
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
Plugin 'tpope/vim-surround' "not work
Plugin 'tpope/vim-repeat'
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
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'SirVer/ultisnips'  need vim7.4

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'c.vim'  "so many features.....difficult to take full advantage of it
"Plugin 'ShowPairs' no need
Plugin 'ack.vim'
Plugin 'L9'
Plugin 'a.vim'
Plugin 'CSApprox'
Plugin 'OmniCppComplete'
Plugin 'Markdown' "very very slow when open markdown file
Plugin 'Markdown-syntax'
"Plugin 'taglist.vim'  the similar plugin tagbar.vim
Plugin 'xml.vim'
Plugin 'matchit.zip'
Plugin 'css_color.vim'
Plugin 'YankRing.vim'
Plugin 'vim-cpp-enhanced-highlight'
Plugin 'cpp.vim'
Plugin 'taglist.vim'
Plugin 'calendar.vim'
Plugin 'DirDiff.vim'
Plugin 'slimv.vim'

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
"=========================bundle end================================

"*************************vim option start*******************************
"*************************vim option start*******************************
syntax on

set background=dark
color evening

set ruler
set number
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
set tags+=../tags,~/.qt5
set backspace=indent,eol,start

set nobackup
set noswapfile

"let mapleader=","
"let g:mapleader=","

" when vim is in GUI evironment, such as gvim
if has('gui_running')
    "set guifont=YaHei\ Consolas\ Hybrid:h12
    set guioptions-=M
    set guioptions-=T
    "color molokai
endif


" remember the last position when exits, so next open locates it
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" remove ^M caused in win32
nmap mm :%s/\r//g<cr>

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 	

"just works on .c .cpp .h file
"autocmd FileType c,cpp set shiftwidth=4 | set expandtab
"*************************vim option end*******************************
"*************************vim option end*******************************

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~plugin option start~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~plugin option start~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

" snipmate
let g:snips_author = 'pp'

" yankring
let g:yankring_enabled = 0  "disable the yanking, <c-p> conflicts with ctrlp.vim

" ctrlp.vim
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" OmniCppComplete
"set completeopt=menu,menuone " 关掉智能补全时的预览窗口
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
"let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess=1
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~plugin option end~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~plugin option end~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
