" Vim ale config
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1
let g:ale_fixers = {
			\ '*': ['remove_trailing_lines', 'trim_whitespace'],
			\ 'c': ['clang-format'], 'cpp': ['clang-format'],
			\}
let g:ale_linters = {
			\   'python': ['flake8', 'mypy', 'pylint', 'pyls'],
			\   'rust': ['cargo', 'rls'],
			\		'cpp': ['clangd', 'clang', 'clangtidy'],
			\		'c': ['clangd', 'clang', 'clangtidy'],
			\}

let g:ale_c_clang_options='-Wall -Wextra -Werror'
let g:ale_cpp_clang_options='-Wall -Wextra -Werror -std=c++14'

nmap <leader>ag :ALEGoToDefinitionInVSplit<CR>
nmap <leader>at :ALEToggle<CR>
nmap <leader>af :ALEFix<CR>
nmap <leader>ah :ALEHover<CR>
