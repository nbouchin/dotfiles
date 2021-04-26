colorscheme rdark-terminal2

syn on
set wrap
set smartindent
set expandtab
set noerrorbells vb t_vb=
set number
set mouse=a
set smarttab
set modeline
set ruler
set history=100
set nowrap
set title
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set noexpandtab
set backspace=indent,eol,start
set timeout timeoutlen=5000 ttimeoutlen=100
" Swapdir and undo dir creation
set directory=$HOME/.config/nvim/swapdir
set undofile
set undodir=$HOME/.config/nvim/undodir
set undolevels=1000
set undoreload=10000
let mapleader=';'
let localleader="\\"
set listchars=tab:»\ ,trail:.,eol:$,space:.
set list
set textwidth=100
let g:loaded_matchparen=1
set shiftwidth=4 tabstop=4 softtabstop=4
imap kj <Esc>

" Pmenu dropdown completion colors
hi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=250 guibg=#1c1c1c guifg=#bcbcbc
hi SpecialKey ctermfg=235 guifg=#262626

map <C-C> :nohlsearch<CR>
