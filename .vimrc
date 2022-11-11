" Remaps 'jj' to teh escape key for exiting insert mode
inoremap jj <Esc>

" Set compatibility to Vim only.
set nocompatible

" Syntax highlighting
syntax on

" Automatically wrap text that extends beyond the screen length
set wrap

" Display 5 lines above/below when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Highlight matching pars of brackets
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

"Highlight matching search patterns
set hlsearch
