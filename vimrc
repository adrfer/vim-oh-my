" Type `:h setting' for more info

" --
" General
" --

" Use vim settings, rather than vi's
set nocompatible

" Configure backspace so it acts as it should
set backspace=eol,start,indent

" Save file before running commands
set autowrite

" Reload opened files changed elsewhere
set autoread

" Use vertical diffs only
set diffopt+=vertical

" Avoid keeping backup and swap files
set nobackup nowritebackup noswapfile

" --
" User Interface
" --

" Show title on terminal window 
set title

" Configure custom 16-color palette and scheme
let g:onedark_termcolors=16
colorscheme onedark

" Enable syntax highlighting
"
syntax on

" Highlight the current line
set cursorline

" Show absolute and relative line numbers with defined width 
set number relativenumber numberwidth=5

" Show the tab line on top
set showtabline=2

" Show the status line as the second last line
set laststatus=2

" Set up a simple yet more informative status line
set statusline=%<%F
set statusline+=\ %(%{&ro!=0?'[readonly]':''}%)
set statusline+=\ %(%{&modified?'[modified]':''}%)
set statusline+=%=
set statusline+=\ [l:\ %l/%L\ (%p%%)]
set statusline+=\ [c:\ %c]
set statusline+=\ [%{&fileformat}]
set statusline+=%(\ [%{&fileencoding}]%)
set statusline+=\ [%{&filetype}]

" Show commands on bottom
set showcmd

" Show visual autocomplete menu for commands
set wildmenu

" Ignore specified file patterns during autocomplete
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar
set wildignore+=*.swp,.DS_Store

" Highlight matching braces
set showmatch

" Show the preferred line length used for wrapping text
set textwidth=80 colorcolumn=+1

" Open new split panes to the right and bottom
set splitbelow splitright

" Show custom invisible characters
set listchars=tab:▸\ ,trail:·,eol:¬,space:␣ showbreak=↪

" --
" Navigation
" --

" Start scrolling a few lines before borders 
set scrolloff=5

" Use h, j, k, l rather than arrow keys
nnoremap <Left> :echoe "Hey, use h instead"<CR>
nnoremap <Right> :echoe "Hey, use l instead"<CR>
nnoremap <Up> :echoe "Hey, use k instead"<CR>
nnoremap <Down> :echoe "Hey, use j instead"<CR>

inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

vnoremap <Left> :echoe "Hey, use h instead"<CR>
vnoremap <Right> :echoe "Hey, use l instead"<CR>
vnoremap <Up> :echoe "Hey, use k instead"<CR>
vnoremap <Down> :echoe "Hey, use j instead"<CR>

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

" Scroll up and down faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
vnoremap <C-e> 5<C-e>
vnoremap <C-y> 5<C-y>

" --
" Tabs, Spaces, and Indentation
" --

" Enable file type detection and language-based indenting
filetype plugin indent on

" Enable smart tabs
set smarttab

" Specify the width of a tab
set tabstop=2

" Use spaces instead of tabs
set expandtab

" Set the number of spaces per tab
set softtabstop=2

" Set the amount of spaces when indenting
set shiftwidth=2

" Auto-indent new lines
set autoindent

" Enable smart indentantion
set smartindent

" Indent using Cmd-[ and Cmd-]
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Trim leading and trailing white spaces from current line
map <Leader>lw :%s/^\s\+//e<CR>
map <Leader>tw :%s/\s\+$//e<CR>

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
" Commands
" --

" Lenient bindings to edit, save, and quit
command! E e
command! Q q
command! Qa qa
command! QA qa
command! W w
command! Wq wq
command! WQ wq
