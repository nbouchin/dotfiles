set shiftwidth=2 tabstop=2 softtabstop=2

augroup padding
	autocmd FileType c,cpp,tpp,hpp,asm,s,as,php,html setlocal shiftwidth=8 tabstop=8 softtabstop=8
augroup END

augroup snippet
	autocmd FileType cpp,hpp,tpp UltiSnipsAddFiletypes cpp-personal
augroup END

" General config.
colorscheme rdark-terminal2
syn on
set wrap
set smartindent
set expandtab
set noerrorbells vb t_vb=
set guioptions-=aegimrLtT
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
set background=dark
" Swapdir and undo dir creation
set directory=$HOME/.config/nvim/swapdir
set undofile
set undodir=$HOME/.config/nvim/undodir
set undolevels=1000
set undoreload=10000
let mapleader=';'
let localleader="\\"
hi SpecialKey ctermfg=235
set listchars=tab:\\.,trail:.,eol:$,space:.
set list

" Pmenu dropdown completion colors
hi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=250 guibg=#1c1c1c guifg=#bcbcbc

" Vim airline config
let g:airline#extensions#tabline#enabled = 2
