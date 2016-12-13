" Enables 256 colour vim
set t_Co=256

" Turns on colours
syntax on
colorscheme dracula

filetype plugin indent on

set shiftround "Rounds indent to multiple of shiftwidth
set smartindent 
set autoindent

set tabstop=4 "number of visual spaces per TAB

set shiftwidth=4 

set expandtab

set softtabstop=4 "number of spaces in TAB when editing

set cursorline "highlights current line

set wildmenu "visual autocomplete for command menu

set number "shows line numbers

set hlsearch "highlights search matches
set incsearch "search as characters are entered

"highlights last inserted text
nnoremap gV '[v'] 

set history=1000 "changes history record value

set showmatch "shows matching parenthesis

"Making Search look nice"
set ruler
set ignorecase
set smartcase
set showmatch
set mat=2

"Keeps cursor in middle of page"
set scrolloff=999

"Clears search highlighting
map ho :let @/=''<cr> " clear search


"Underlines current line"
highlight cursorline  ctermbg=233
set cursorline

autocmd BufRead,BufNewFile *.tex,*.md let @b=':wa:!build_pdf %'
  \ | let @p=':wa:!ssh_print bb136-10 %:r.pdf'
  \ | let @o=':!evince %:r.pdf &> /dev/null &'

"Use < > to move between tabs "
nnoremap > gt
nnoremap < gT
