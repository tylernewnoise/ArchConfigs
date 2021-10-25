"""" Vundle Setup =====================
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""" UI Plugins =======================
Plugin 'morhetz/gruvbox'
let g:gruvbox_contrast_dark='hard'
Plugin 'arcticicestudio/nord-vim'
""" Airline ---------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1
let g:airline_theme='nord'
let g:airline_extensions = ['branch', 'syntastic', 'whitespace']
let g:airline#extensions#whitespace#mixed_indent_algo = 1
set laststatus=2
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif
let g:airline_symbols.maxlinenr=''

map <F12> :AirlineToggleWhitespace<CR>
"Plugin 'tpope/vim-fugitive'

"""" NERDTree -------------------------
Plugin 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>

"""" Syntastic ------------------------
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_error_symbol = '✗'
"let g:syntastic_loc_list_height=2
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
map <F5> :lopen 4 <CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""" End Vundle ========================

"""" User Interface ===================
" Colors and Fonts
" Enable syntax highlighting
syntax enable
"colorscheme gruvbox
colorscheme nord
"set bg=dark
set encoding=utf8

set number " Show line numbers
set cursorline " Show cursorline
hi CursorLine ctermbg=235 term=bold cterm=bold
set colorcolumn=81 " Show a line
set ruler " Always show current position
set list lcs=tab:\┆\  " Show indentlines
set cmdheight=1 " Height of the command bar

" Sets how many lines of history VIM has to remember
set history=700

" Fast saving
let mapleader = (' ')
" let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :qa!<cr>

" Fast scorlling
set lazyredraw
set ttyfast
set scrolloff=25 " Start scrolling 5 lines before the border

" Highlight search results
set hlsearch
set incsearch
" Clear search buffer when hitting return
nnoremap <cr> :nohlsearch<cr>

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Text, tab and indent related
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
filetype indent on
filetype plugin on
set autoindent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Remove alle trailing whitespaces
nnoremap <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

