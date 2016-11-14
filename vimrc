" Type `:h setting' for more info

" Use vim settings, rather than vi's
set nocompatible

" --
" Interface
" --

" Enable syntax highlighting
syntax on

" Highlight the current line
set cursorline

" Show line numbers with defined width
set number numberwidth=5

" Show the top bar
set showtabline=2

" Show the status line above the bottom bar
set laststatus=2

" Show the cursor position on the status line
set ruler

" Show commands on the bottom bar
set showcmd

" Show visual autocomplete menu for commands
set wildmenu

" Highlight matching braces
set showmatch

" Show the preferred line length used for wrapping text
set textwidth=80 colorcolumn=+1

" Open new split panes to the right and bottom
set splitbelow splitright

" Show custom  invisible characters
set listchars=tab:▸\ ,trail:·,eol:¬ showbreak=↪\

" Show visual autocomplete menu for commands
set wildmenu

" --
" Navigation
" --

" Use h, j, k, l rather than arrow keys
nnoremap <Left> :echoe "Hey, use h instead"<CR>
nnoremap <Right> :echoe "Hey, use l instead"<CR>
nnoremap <Up> :echoe "Hey, use k instead"<CR>
nnoremap <Down> :echoe "Hey, use j instead"<CR>

" Navigate window splits quicker
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" --
" Tabs, Spaces, and Indentation
" --

" Enable file type detection and do language-based indenting
filetype plugin indent on

" Enable smart tabs
set smarttab

" Specify the width of a tab
set tabstop=4

" Use spaces instead of tabs
set expandtab

" Set the number of spaces per tab
set softtabstop=4

" Set the amount of spaces when indenting
set shiftwidth=4

" Auto-indent new lines
set autoindent

" Enable smart indentantion
set smartindent

" Indent using  Cmd-[ and Cmd-]
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" --
" Search
" --

" Highlight all search results
set hlsearch

" Enable smart-case search
set smartcase

" Enable case-insensitive search
set ignorecase

" Enable incremental search
set incsearch

" --
" Other
" --

" Configure backspace so it acts as it should
set backspace=eol,start,indent

" Save file  before running commands
set autowrite

" Use vertical diffs only
set diffopt+=vertical

" Avoid keeping backup files
set nobackup nowritebackup
