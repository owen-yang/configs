" Enable syntax highlighting
syntax on

" Enable line numbers
" Note: may decrease performance
set number

" Enable highlighting of cursor line
set cursorline

" Set highlight color (kind of a subtle grey)
hi CursorLine cterm=NONE ctermbg=236 ctermfg=NONE

" Highlight search results
set hlsearch

" Set number of colors
set t_Co=256

" Always display the status line
set laststatus=2

" Self explanatory
set background=dark

" Disable cursor blinking
set guicursor+=a:blinkon0

" Number of columns occupied by a tab
set tabstop=4

" Width for autoindents
set shiftwidth=4

" Convert tabs to spaces
set expandtab

" Indent a new line the same amount as the line just typed
set autoindent

" Speed up scrolling
set ttyfast

" Ignore case in search patterns
set ignorecase

" Overrides ignorecase if the search pattern contains upper case characters
set smartcase

" When a bracket is inserted, briefly jump to the matching one
set showmatch

noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
noremap h hzz
noremap j jzz
noremap k kzz
noremap l lzz
noremap G Gzz
noremap n nzz
noremap N Nzz

