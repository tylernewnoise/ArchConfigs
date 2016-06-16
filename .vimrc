"""" Vundle Setup =====================
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""" UI Plugins =======================
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
 let g:airline_powerline_fonts=1
 let g:airline_skip_empty_sections=1
 let g:airline_theme='molokai'
 let g:airline#extensions#branch#enabled = 1
 set laststatus=2
 if !exists('g:airline_symbols')
	 let g:airline_symbols = {}
 endif
 let g:airline_symbols.maxlinenr = ''
 map <F12> :AirlineToggleWhitespace<CR>
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
 map <F3> :NERDTreeToggle<CR>
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""" End Vundle ========================

"""" User Interface ===================
" Colors and Fonts
" Enable syntax highlighting
syntax enable
colorscheme monokai
set encoding=utf8

set number " Show line numbers
set cursorline " Show cursorline
hi CursorLine ctermbg=235 term=bold cterm=bold
set colorcolumn=81 " Show a line

set list lcs=tab:\┆\  " Show indentlines

" Sets how many lines of history VIM has to remember
set history=700

" Fast saving
nmap <leader>w :w!<cr>

" Fast scorlling
set lazyredraw
set ttyfast
set scrolloff=5 " Start scrolling 5 lines before the border

" Height of the command bar
set cmdheight=1

" Always show current position
set ruler

" Highlight search results
set hlsearch
set incsearch
nnoremap <cr> :nohlsearch<cr> " Clear search buffer when hitting return

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

