call plug#begin('~/.config/nvim/plugged')
" Fly through code with vim easymotion
Plug 'easymotion/vim-easymotion'
" Gutter for git, svn etc.
Plug 'mhinz/vim-signify'
" Extra syntax highlighting
Plug 'justinmk/vim-syntax-extra'
" Nerd{Tree,Commenter} to get graphical file access and easy comments
" trigger.
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Git integration with Nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" 42 header everywhere.
Plug 'pbondoer/vim-42header'
Plug 'autozimu/LanguageClient-neovim', {
	    \ 'branch': 'next',
	    \ 'do': 'bash install.sh',
	    \ }
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" Multi plugin completion manager
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Required: by deoplete
Plug 'Shougo/neco-vim'
" Neo snippet, managed by deoplete.
Plug 'Shougo/neosnippet.vim'
" Neosnippet snippet list
Plug 'Shougo/neosnippet-snippets'
" Include completion
Plug 'Shougo/neoinclude.vim'
" Fuzzy finder for everything
Plug 'Shougo/denite.nvim'
" Clang completion with deoplete
Plug 'zchee/deoplete-clang'
" Ale linter, lint pretty everything
Plug 'w0rp/ale'
" Deoplete integration with jedi for python
Plug 'zchee/deoplete-jedi'
" Multiple coloschemes collection
Plug 'rafi/awesome-vim-colorschemes'
" Clang format nvim integration
Plug 'rhysd/vim-clang-format'
" Pretty airline and tabbar
Plug 'vim-airline/vim-airline'
" Show marks in the file
Plug 'kshenoy/vim-signature'
" Git integration for nvim
Plug 'tpope/vim-fugitive'
" lldb-nvim
Plug 'dbgx/lldb.nvim', {'do': ':UpdateRemotePlugins'}
" nvim-checkhealth
Plug 'tweekmonster/nvim-checkhealth'
" vim autopair
Plug 'jiangmiao/auto-pairs'
call plug#end()

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
let mapleader=";"
let localleader="\\"

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

let g:LanguageClient_serverCommands = {
	    \    'cpp': ['clangd'],
	    \    'c': ['clangd'],
	    \}

"================================================== Plugin configuration ends ==========================================

"========================================== From here, configuration of macro redefinition ==========================================

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

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
