call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'pbondoer/vim-42header'
Plug 'cknadler/vim-anywhere'
Plug 'matze/vim-move'
call plug#end()

"Set custom tab width according to language
autocmd FileType c,cpp,asm,s,php,html set ts=4 sw=4

" General config.
set guioptions-=aegimrLtT
set nu
set mouse=a
set smarttab
set modeline
set ruler
set history=100
set nowrap
set title
set showmatch
set hlsearch
set noeb
set novb
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set timeout timeoutlen=5000 ttimeoutlen=100
"set cursor collumn and line coloration
let mapleader=";"
colorscheme antares

"copy/paste from/to clipboard
set directory=$HOME/.vim/swapdir//
" Undo file.
set undofile
set undodir=$HOME/.vim/undodir
set undolevels=1000
set undoreload=10000

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

" Rainbow-parentheses
let g:rainbow_active = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"Esc remaping.
inoremap kj <esc>

"Vimux.
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

"airline config
let g:airline#extensions#tabline#enabled = 2
let g:airline_powerline_fonts = 1

"ale settings
"ale c linter settings
let g:ale_c_gcc_options="-Wall -Wextra -Werror"
let g:ale_c_gcc_executable="clang"
let g:ale_lint_on_text_changed = 'never'
"" You can disable this option too
"" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Vim easymotion configuration.
" <Leader>f{char} to move to {char}
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"Enable deoplete
let g:deoplete#enable_at_startup = 1
