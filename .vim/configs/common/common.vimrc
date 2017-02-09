" Search
set ignorecase " ignore register for search
set incsearch " momental search
set hls " highlight searsh

" tab size
set ts=4
set expandtab
set shiftwidth=4
set cindent

" View settings
set rnu                      " Relative numbers
set nu                       " Show numbers
set ai                       " auto indent
set cursorline               " Highlight current line
set showcmd
set linebreak
set autoread
set synmaxcol=300            " Don't try to highlight long lines"
syntax enable
colorscheme xoria256
set term=screen-256color
set colorcolumn=80     " Set Color Column
set list listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:× " WS highlighting
" Transparent background
hi Normal ctermbg=none
hi LineNr ctermbg=none
hi SignColumn ctermbg=none
hi VertSplit ctermbg=none
hi NonText ctermbg=none

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Mouse options
set mouse=a

" filetype detection
filetype plugin indent on
filetype plugin on

" Find another vimrc
set exrc
set secure

" Backup and temporary files
set nobackup                            " Don't create files with backup copy (filename.txt~)
silent !mkdir ~/.vim/swapfiles > /dev/null 2>&1
set dir=~/.vim/swapfiles                " Directory for saving swp files

" Command line
set path+=**                            " Provides tab-completion for all file-related tasks
set wildmenu                            " cmd autocomplition
set wildmode=longest:list,full          " autocomplition like in bash

set updatetime=100
