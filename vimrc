syntax on

" Enable line numbers
set number

" Enable highlighting of cursor line
set cursorline

" Set highlight color (kind of a subtle grey)
hi CursorLine cterm=NONE ctermbg=236 ctermfg=NONE

" Enable highlighting of search results
set hlsearch

" Set number of colors
set t_Co=256

" Always display the status line
set laststatus=2

" Self explanatory
set background=dark

" Disable cursor blinking
set guicursor+=a:blinkon0

" Show existing tabs with width of 4
set tabstop=4

" When indenting with '>', use 4 spaces
set shiftwidth=4

" Insert 4 spaces with tab
set expandtab

noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
noremap h hzz
noremap j jzz
noremap k kzz
noremap l lzz
noremap G Gzz
noremap n nzz
noremap N Nzz

