set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
syntax on

set background=dark
colorscheme murphy
set tabstop=2
set softtabstop=2
set shiftwidth=2                    "set default indenting to 2 spaces
set expandtab
set noimdisable
set iminsert=0
set imsearch=0
set noswapfile
set relativenumber                  "set relative numberlines
set number                          "show the line number of the one i'm on
set textwidth=72
set colorcolumn=81                  "show the 80 char rule
set laststatus=2

" catch common save and quit mistakes
command WQ wq                       "meant wq
command Wq wq                       "meant wq
command W w                         "meant w
command Q q                         "meant q

" copy visualy selected text to clip board
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

:imap fd <esc>
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
let g:NERDTreeDirArrows=0
filetype plugin on
