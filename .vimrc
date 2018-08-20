" Experimental Vim set up
" C.Natzke Aug 16 2018

" Pathogen set up
filetype off
execute pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
" better searching
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
" tab key to match bracket pairs
nnoremap <tab> %
nnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
" coloured column at line
set colorcolumn=85

" show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" map semicolon to colon
nnoremap ; :

" auto save when tabbing away
au FocusLost * :wa

" removes all trailing whitspace from file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" reselects last pasted line
nnoremap <leader>v V`]

" Open .vimrc in another window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" faster escaping
inoremap jj <Esc>

" create new window and change to it
nnoremap <leader>w <C-w><C-w>l

" easier movement around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Open NERDTree
map <C-o> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256 " Enables 256 colour vim


" Turns on colours
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set history=1000 "changes history record value

"Use < > to move between tabs "
nnoremap > gt
nnoremap < gT
