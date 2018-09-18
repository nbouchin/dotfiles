call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'drmingdrmer/vim-tabbar'
Plug 'justinmk/vim-syntax-extra'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pbondoer/vim-42header'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'w0rp/ale'
Plug 'Shougo/neoinclude.vim'
Plug 'zchee/deoplete-jedi' 
Plug 'Shougo/neco-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'critiqjo/lldb.nvim'
Plug 'autozimu/LanguageClient-neovim', {
	    \ 'branch': 'next',
	    \ 'do': 'bash install.sh',
	    \ }
call plug#end()

"Set custom tab width according to language
autocmd FileType c,cpp,asm,s,php,html set ts=4 sw=4
autocmd FileType c UltiSnipsAddFiletypes c-libft

" General config.  "set guiheadroom=0
set noeb vb t_vb=
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
set incsearch
set ignorecase
set smartcase
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set timeout timeoutlen=5000 ttimeoutlen=100
"set cursor collumn and line coloration
let mapleader=";"
colorscheme jellybeans

"copy/paste from/to clipboard
set directory=$HOME/.vim/swapdir//
" Undo file.
set undofile
set undodir=$HOME/.vim/undodir
set undolevels=1000
set undoreload=10000

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"Esc remaping.
inoremap kj <esc>

" Vim clang format binding
nmap <leader>F :ClangFormat<CR>

" Vim easymotion configuration.
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Vim Toggle Nerdtree
nmap <leader>e :NERDTreeToggle<CR>

" Vim map
nmap <leader>m :Man<space>
nmap <leader>d :bd<CR>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR> 

" Vim GoToDefinition
nmap <leader>g :call LanguageClient_textDocument_definition()<CR>

" Vim termsplit
nmap <leader>t :vsp term://bash<CR>

let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#flags=[
	    \ '-Wall -Wextra -Werror'
	    \]

let g:LanguageClient_serverCommands = {                                                                                                                            
	    \ 'c': ['clangd'],
	    \ 'cpp': ['clangd'],
	    \ 'python': ['pyls'],
	    \ }
let g:LanguageClient_diagnosticsEnable=0
