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
    " Fly through code with vim easymotion
    call dein#add('easymotion/vim-easymotion')
    " Gutter for git, svn etc.
    call dein#add('mhinz/vim-signify')
    " Extra syntax highlighting
    call dein#add('justinmk/vim-syntax-extra')
    " Nerd{Tree,Commenter} to get graphical file access and easy comments
    " trigger.
    call dein#add('scrooloose/nerdtree')
    call dein#add('scrooloose/nerdcommenter')
    " Git integration with Nerdtree
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    " 42 header everywhere.
    call dein#add('pbondoer/vim-42header')
    " Multi plugin completion manager
    call dein#add('Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'})
    " Required: by deoplete
    call dein#add('Shougo/neco-vim')
    " Neo snippet, managed by deoplete.
    call dein#add('Shougo/neosnippet.vim')
    " Neosnippet snippet list
    call dein#add('Shougo/neosnippet-snippets')
    " Include completion
    call dein#add('Shougo/neoinclude.vim')
    " Fuzzy finder for everything
    call dein#add('Shougo/denite.nvim')
    " Clang completion with deoplete
    call dein#add('zchee/deoplete-clang')
    " Ale linter, lint pretty everything
    call dein#add('w0rp/ale')
    " Deoplete integration with jedi for python
    call dein#add('zchee/deoplete-jedi')
    " Multiple coloschemes collection
    call dein#add('rafi/awesome-vim-colorschemes')
    " Clang format nvim integration
    call dein#add('rhysd/vim-clang-format')
    " Pretty airline and tabbar
    call dein#add('vim-airline/vim-airline')
    " Show marks in the file
    call dein#add('kshenoy/vim-signature')
    " Git integration for nvim
    call dein#add('tpope/vim-fugitive')
    " lldb-nvim
    call dein#add('dbgx/lldb.nvim', {'do': ':UpdateRemotePlugins'})
    " nvim-checkhealth
    call dein#add('tweekmonster/nvim-checkhealth')
    " vim autopair
    call dein#add('jiangmiao/auto-pairs')
    " vim LSP
    call dein#add('autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ })
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
set clipboard=unnamedplus
colorscheme gruvbox 

" Swapdir and undo dir creation
set directory=$HOME/.config/nvim/swapdir
set undofile
set undodir=$HOME/.config/nvim/undodir
set undolevels=1000
set undoreload=10000

"================================================== Plugin configuration ==========================================

" Vim airline config
let g:airline#extensions#tabline#enabled = 2
let g:airline_theme="gruvbox"

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
call deoplete#custom#option('max_list', 10)
call deoplete#custom#option('smart_case', v:true)
"remove deoplete preview popup
set completeopt-=preview

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

"================================================== Plugin configuration ends ==========================================

"========================================== From here, configuration of macro redefinition ==========================================
let mapleader=";"
let localleader="\\"

"Esc remaping.
inoremap kj <esc>

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

" Vim clang format binding
nmap <leader>F :ClangFormat<CR>

" Vim easymotion configuration.
" Easy motion simple char trigger
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
" easymotion double char trigger
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Vim Toggle Nerdtree
nmap <leader>e :NERDTreeToggle<CR>

" Buffer manipulation redefinition
" Buffer delete
nmap <leader>d :bd<CR>
" Buffer next
nmap <leader>n :bn<CR>
" Buffer prev nmap <leader>p :bp<CR>
nmap <leader>p :bp<CR>

" Trigger tabedit
" Note: create a new workspace tab
nmap <leader>T :tabedit

" Denite fuzzy file trigger
" Note: Trigger denite fuzzy finder for file from actual directory
nmap <leader>D :Denite file/rec<CR>

" Vim termsplit
nmap <leader>t :vsp term://zsh<CR>

" neosnippet expand config
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" terminal mode enter in normal mode
tmap <localleader>n <c-\><c-n>

let g:LanguageClient_serverCommands = {
	    \    'cpp': ['clangd'],
	    \    'c': ['clangd'],
	    \}
