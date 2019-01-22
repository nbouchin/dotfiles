" Vim ale config
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fixers = {'c': ['clang-format']}
let g:ale_linters = {
			\   'python': ['flake8', 'mypy', 'pylint', 'pyls'],
			\   'rust': ['cargo', 'rls'],
			\		'cpp': ['clangd', 'clangtidy'],
			\		'c': ['clangd', 'clangtidy'],
			\}
