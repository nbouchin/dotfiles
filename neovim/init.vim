call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'luochen1990/rainbow'
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'euclio/vim-markdown-composer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'easymotion/vim-easymotion'
Plug 'pbondoer/vim-42header'
call plug#end()

"Set custom tab width according to language
autocmd FileType c,cpp,asm,s,php,html set ts=4 sw=4
autocmd FileType php LanguageClientStart

" General config.
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
set incsearch
set ignorecase
set smartcase
"set cursor collumn and line coloration
let mapleader=";"
colorscheme antares

"copy/paste from/to clipboard
set clipboard=unnamedplus

" Undo file.
set undofile
set undodir=$HOME/.config/nvim/undodir
set undolevels=1000
set undoreload=10000

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

" Airline config.
let g:airline_theme='luna'

" Rainbow-parentheses
let g:rainbow_active = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Tmux navigation
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 2
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr> nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>
"Esc remaping.
inoremap kj <esc>

"Vimux.
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

"airline config
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

"ale settings
"ale c linter settings
let g:ale_c_gcc_options="-Wall -Wextra -Werror"
let g:ale_c_gcc_executable="clang"

nnoremap <M-H> :TmuxResizeLeft<return>
nnoremap <M-J> :TmuxResizeDown<return>
nnoremap <M-K> :TmuxResizeUp<return>
nnoremap <M-L> :TmuxResizeRight<return>

" <Leader>f{char} to move to {char}
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"Enable deoplete
let g:deoplete#enable_at_startup = 1
