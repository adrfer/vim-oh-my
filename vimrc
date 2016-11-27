
" --
" General
" --

" Use vim settings rather than vi's
set nocompatible

" Configure backspace so it acts as it should
set backspace=eol,start,indent

" Save file before running commands
set autowrite

" Reload opened files changed elsewhere
set autoread

" Use vertical splits only for diffs 
set diffopt+=vertical

" Avoid keeping backup and swap files
set nobackup nowritebackup noswapfile

" Wait less time for commands to complete
set timeout timeoutlen=3000 ttimeoutlen=100

" Allow current buffer be put on background w/o saving
set hidden

" --
" User Interface
" --

" Show title on terminal window
set title

" Configure custom 16-color palette and scheme
let g:onedark_termcolors=16
colorscheme onedark

" Enable syntax highlighting
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

" Show incomplete commands on bottom
set showcmd

" Show visual autocomplete menu for commands
set wildmenu

" Ignore specified file patterns during autocomplete
set wildignore+=.git,.svn
set wildignore+=*.swp,.DS_Store
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar

" Highlight matching braces
set showmatch

" Show the preferred line length used for wrapping text
set textwidth=80

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
nnoremap <left> :echoe "Hey, use h instead"<cr>
nnoremap <down> :echoe "Hey, use j instead"<cr>
nnoremap <up> :echoe "Hey, use k instead"<cr>
nnoremap <right> :echoe "Hey, use l instead"<cr>

vnoremap <left> :echoe "Hey, use h instead"<cr>
vnoremap <down> :echoe "Hey, use j instead"<cr>
vnoremap <up> :echoe "Hey, use k instead"<cr>
vnoremap <right> :echoe "Hey, use l instead"<cr>

inoremap <left> <nop>
inoremap <down> <nop>
inoremap <up> <nop>
inoremap <right> <nop>

" Navigate window splits quicker
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Scroll up and down faster
nnoremap <c-e> 5<c-e>
nnoremap <c-y> 5<c-y>
vnoremap <c-e> 5<c-e>
vnoremap <c-y> 5<c-y>

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

" Trim leading and trailing white spaces from current line
map <leader>lw :%s/^\s\+//e<cr>
map <leader>tw :%s/\s\+$//e<cr>

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

" Edit, save, and quit by using more lenient bindings
command! -bang -nargs=? -complete=file E e<bang> <args>
command! -bang -nargs=? -complete=file W w<bang> <args>
command! -bang -nargs=? -complete=file Wq wq<bang> <args>
command! -bang -nargs=? -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang Qa qa<bang>
command! -bang QA qa<bang>

" --
" Text Editing
" --

" Yank from cursor to the end of line
nnoremap Y y$

" Upper and lowercase current word
map <leader>uc gUiW
map <leader>lc guiW

" --
" Other
" --

" Edit and reload ~/.vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>rv :source $MYVIMRC<cr>:echo 'Reloaded ~/.vimrc'<cr>
