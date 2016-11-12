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

" Show an elipsis for breaking lines
set showbreak=…

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

" Customise invisible characters
set listchars=tab:▸\ ,eol:¬

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

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

" Change focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" --
" Tabs, Spaces & Identation
" --

" Enable file type detection and do language-dependent indenting
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

" Map identation to Cmd-[ and Cmd-]
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
