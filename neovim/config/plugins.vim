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
