call plug#begin('~/.config/nvim/plugged')
" Install nightly build, replace ./install.sh with install.cmd on windows
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
" Or install latest release tag
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" Or build from source code
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Install ctrlp plugin
Plug 'kien/ctrlp.vim'
" Install vim surround
Plug 'tpope/vim-surround'
" Install UltiSnips
Plug 'SirVer/ultisnips'
" Install snippets
Plug 'honza/vim-snippets'
" Neoinclude
Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Gruvbox
Plug 'morhetz/gruvbox'
Plug 'kshenoy/vim-signature'
call plug#end()
