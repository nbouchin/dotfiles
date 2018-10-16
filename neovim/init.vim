"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nbouchin/.config/nvim/bundle/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/nbouchin/.config/nvim/bundle/dein')
    call dein#begin('/home/nbouchin/.config/nvim/bundle/dein')
    " Let dein manage dein
    " Required:
    call dein#add('/home/nbouchin/.config/nvim/bundle/dein')
    call dein#add('Shougo/unite.vim')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('mhinz/vim-signify')
    call dein#add('justinmk/vim-syntax-extra')
    call dein#add('scrooloose/nerdtree')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    call dein#add('pbondoer/vim-42header')
    call dein#add('Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'})
    if !has('nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('zchee/deoplete-clang')
    call dein#add('w0rp/ale')
    call dein#add('zchee/deoplete-jedi')
    call dein#add('Shougo/neco-vim')
    call dein#add('rafi/awesome-vim-colorschemes')
    call dein#add('rhysd/vim-clang-format')
    call dein#add('vim-airline/vim-airline')
    call dein#add('kshenoy/vim-signature')
    call dein#add('tpope/vim-fugitive')
    call dein#add('gilligan/vim-lldb')
    call dein#end()
    call dein#save_state()
endif

"Set custom tab width according to language
autocmd FileType c,cpp,tpp,hpp,asm,s,php,html set ts=4 sw=4

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
colorscheme gruvbox
set background=dark

"copy/paste from/to clipboard
set directory=$HOME/.config/nvim/swapdir
" Undo file.
set undofile
set undodir=$HOME/.config/nvim/undodir
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
nmap <leader>T :tabedit<CR>

" Vim GoToDefinition

" Vim termsplit
nmap <leader>t :vsp term://zsh<CR>

" Vim airline config
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 2

" Vim ale config
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

"Vim deoplete config
let g:deoplete#enable_at_startup = 1
let g:uname = system("uname")
if g:uname == "Darwin\n"
    let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
elseif g:uname == "Linux\n"
    let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
endif
let g:deoplete#sources#clang#flags=[
	    \ '-Wall -Wextra -Werror -g'
	    \]

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
