call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Install ctrlp plugin
Plug 'kien/ctrlp.vim'
" Install vim surround
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
" Gruvbox
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
" Grammar checking tool
Plug 'rhysd/vim-grammarous'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()
