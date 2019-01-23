set hidden

let g:LanguageClient_serverCommands = {
			\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
			\ 'cpp': ['~/bin/clangd'],
			\ 'c': ['~/bin/clangd'],
			\ }
