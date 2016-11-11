" Type `:h setting' for more info

" Use vim settings, rather than vi's
set nocompatible

" Configure backspace so it acts as it should
" See also: set backspace=eol,start,indent
set backspace=2

" Enable syntax highlighting
syntax on

" Show line numbers
set number
set numberwidth=5

" Highlight matching brace
set showmatch

" Show the tab bar
set showtabline=2

" Show command on the bottom bar
set showcmd

"Display the status line
set laststatus=2

" Show the cursor position all the time
set ruler

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Open new split panes to the right and bottom
set splitbelow
set splitright

" Highlight the current line in every window
set cursorline

" --
" Navigation
" --

" Use h, j, k, l rather than arrow keys
nnoremap <Left> :echoe "Hey, use h"<CR>
nnoremap <Right> :echoe "Hey, use l"<CR>
nnoremap <Up> :echoe "Hey, use k"<CR>
nnoremap <Down> :echoe "Hey, use j"<CR>

" Navigate splits quicker
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" --
" Tabs, Spaces & Identation
" --

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Auto-indent new lines
set autoindent

" Use spaces instead of tabs
set expandtab

" Set the number of auto-indent spaces
set shiftwidth=4

" Enable smart-indent
set smartindent

" Set the number of spaces per tab
set softtabstop=4

" Enable smart-tabs
set smarttab

" --
" Search
" --

" Highlight all search results
set hlsearch

" Enable smart-case search
set smartcase

" Always case-insensitive
set ignorecase

" Search for strings incrementally
set incsearch

" --
" Other
" --

" Use vertical diffs
set diffopt+=vertical

" Perform :w before running commands
set autowrite
