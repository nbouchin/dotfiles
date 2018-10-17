"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/bundle/dein/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('~/.config/nvim/bundle/dein')
    call dein#begin('~/.config/nvim/bundle/dein')
    " Let dein manage dein
    " Required:
    call dein#add('~/.config/nvim/bundle/dein')
    call dein#add('easymotion/vim-easymotion')
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
    call dein#add('Shougo/neoinclude.vim')
    call dein#add('Shougo/denite.nvim')
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

" General config.
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
set background=dark
colorscheme gruvbox

" Swapdir and undo dir creation
set directory=$HOME/.config/nvim/swapdir
set undofile
set undodir=$HOME/.config/nvim/undodir
set undolevels=1000
set undoreload=10000

"========================================== From here, configuration of macro redefinition ========================================== 
let mapleader=";"

"Esc remaping.
inoremap kj <esc>

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

" Vim clang format binding
nmap <leader>F :ClangFormat<CR>

" Vim easymotion configuration.
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Vim Toggle Nerdtree
nmap <leader>e :NERDTreeToggle<CR>

" Buffer manipulation redefinition
nmap <leader>d :bd<CR>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>

" Trigger tabedit
nmap <leader>T :tabedit<CR>

" Denite file trigger
nmap <leader>D :Denite file/rec<CR>

" Vim termsplit
nmap <leader>t :vsp term://zsh<CR>

" Neosnippet mapping
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <TAB>     <Plug>(neosnippet_expand_or_jump)
smap <TAB>     <Plug>(neosnippet_expand_or_jump)
xmap <TAB>     <Plug>(neosnippet_expand_target)

"========================================== Macro redefinition end ========================================== 

" Vim airline config
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 2

" Vim ale config
let g:ale_lint_on_text_changed = 'never'
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

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
