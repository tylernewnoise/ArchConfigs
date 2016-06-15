set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

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

" Sets how many lines of history VIM has to remember
set history=700

" Fast saving
nmap <leader>w :w!<cr>

" Fast scorlling
set lazyredraw
set ttyfast

" Colors and Fonts
" Enable syntax highlighting
syntax enable
colorscheme monokai
set encoding=utf8

" User Interface
" Show line numbers
set number
" Show cursorline and column
set cursorline
set colorcolumn=81
hi CursorLine ctermbg=235 term=bold cterm=bold
" Show indentlines. There has to be a whitespace after the second \
set list lcs=tab:\┆\ 

" Height of the command bar
set cmdheight=1

" Always show current position
set ruler

" Highlight search results
set hlsearch
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Text, tab and indent related
" 1 tab == 8 spaces
set shiftwidth=8
set tabstop=8

filetype indent on
set autoindent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Status line
" Always show the status line
set laststatus=2

" Setup for airline (still testing)
let g:airline_powerline_fonts=1
let g:airline_section_a = airline#section#create(['mode',' ','branch','%{strftime("%c")}'])
