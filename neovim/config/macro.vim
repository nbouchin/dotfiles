"Esc remaping.
inoremap kj <esc>
"nmap gd :ALEGoToDefinitionInTab<CR>
map <C-C> :nohlsearch<CR>
" easymotion double char trigger
nmap <leader>s <Plug>(easymotion-overwin-f2)
" Vim Toggle Nerdtree
nmap <leader>t :NERDTreeToggle<CR>
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
