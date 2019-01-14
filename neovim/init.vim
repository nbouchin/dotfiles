" PLUGINS DELCARATION
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
" nvim language client
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
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Include completion
Plug 'Shougo/neoinclude.vim'
" Ale linter, lint pretty everything
Plug 'w0rp/ale'
" Deoplete integration with jedi for python
Plug 'zchee/deoplete-jedi'
" Multiple coloschemes collection
Plug 'rafi/awesome-vim-colorschemes'
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
" vim ctrlp fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" vim surround
Plug 'tpope/vim-surround'

call plug#end()
" GENERAL CONFIGURATION
"Set custom tab width according to language
set sw=2 ts=2 softtabstop=2
autocmd FileType c,cpp,tpp,hpp,asm,s,as,php,html set ts=8 sw=8 softtabstop=8
"autocmd FileType c UltiSnipsAddFiletypes c-libft
autocmd FileType cpp,hpp,tpp UltiSnipsAddFiletypes cpp-personal

" General config.
colorscheme rdark-terminal2
syn on
set wrap
set smartindent
set expandtab
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
let mapleader=";"
let localleader="\\"
hi SpecialKey ctermfg=235
set listchars=tab:\\.,trail:.,eol:$,space:.
set list

" Pmenu dropdown completion colors
hi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=250 guibg=#1c1c1c guifg=#bcbcbc

"PLUGIN CONFIGRATION

" Vim airline config
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
	let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-7/lib/libclang.so'
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
			\    'rust': ['rls']
			\}

let g:ale_fixers = {'c': ['clang-format']}

"MACRO DEFINITION
"Esc remaping.
inoremap kj <esc>
" Fix ALEGoToDefinitionInTab
"nmap gd :ALEGoToDefinitionInTab<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> R :call LanguageClient#textDocument_rename()<CR>
" Hide coloration of found words
map <C-C> :nohlsearch<CR>
" easymotion double char trigger
nmap <leader>s <Plug>(easymotion-overwin-f2)
" Vim Toggle Nerdtree
nmap <leader>t :NERDTreeToggle<CR>
" Buffer manipulation redefinition
" Buffer delete
nmap <leader>d :bd<CR>
" Buffer next
nmap <leader>n :bn<CR>
" Buffer prev nmap <leader>p :bp<CR>
nmap <leader>p :bp<CR>
" Vim fugitive git integration
nmap <leader>g :Gstatus<CR>
" Vim termsplit
nmap <localleader>t :vsp term://zsh<CR>
" terminal mode enter in normal mode
tmap <localleader>' <c-\><c-n>

" Ctrlp fuzzy finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" LSP autogeneration snippet fix, just use tab to expand anything
let g:ulti_expand_res = 0 "default value, just set once
function! CompleteSnippet()
	if empty(v:completed_item)
		return
	endif

	call UltiSnips#ExpandSnippet()
	if g:ulti_expand_res > 0
		return
	endif

	let l:complete = type(v:completed_item) == v:t_dict ? v:completed_item.word : v:completed_item
	let l:comp_len = len(l:complete)

	let l:cur_col = mode() == 'i' ? col('.') - 2 : col('.') - 1
	let l:cur_line = getline('.')

	let l:start = l:comp_len <= l:cur_col ? l:cur_line[:l:cur_col - l:comp_len] : ''
	let l:end = l:cur_col < len(l:cur_line) ? l:cur_line[l:cur_col + 1 :] : ''

	call setline('.', l:start . l:end)
	call cursor('.', l:cur_col - l:comp_len + 2)

	call UltiSnips#Anon(l:complete)
endfunction

autocmd CompleteDone * call CompleteSnippet()

imap <silent><expr> <c-space> pumvisible() ? "\<c-y>" : "\<c-space>"

let g:UltiSnipsExpandTrigger="<NUL>"
ret g:UltiSnipsListSnippets="<NUL>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
