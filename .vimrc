" Sets how many lines of history VIM has to remember
set history=700

" Fast saving
nmap <leader>w :w!<cr>

" Fast scorlling
set lazyredraw
set ttyfast


"User Interface
" show line numbers
set number
" show cursorline
set cursorline

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

" Colors and Fonts
" Enable syntax highlighting
syntax enable
colorscheme monokai
set encoding=utf8
set colorcolumn=80

" Text, tab and indent related
" 1 tab == 6 spaces
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
