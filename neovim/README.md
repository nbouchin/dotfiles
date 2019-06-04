<<<<<<< HEAD
## Neovim configuration

The aim of this configuration is to bring [`lsp`](https://microsoft.github.io/language-server-protocol/) for a nice lint and code completion
If you want lsp full compatibilty on C/CPP prodjects, you must generate a compile_command.json with [`bear`](https://github.com/rizsotto/Bear) for example.
Also you may install ccls for better C/CPP lsp integration
Full plugin list is available into the `$HOME/.config/neovim/config/plugins.vim` file
Every plugin configurations are writen in a separate file named the same

`<leader>` means the leaderkey, it is Normal binded to `;`

[`easymotion`](https://github.com/easymotion/vim-easymotion)
-
Fly in your code *[vimperator](http://vimperator.org/vimperator.html) hint mode* like.
- `<leader> + s` Triggers hints

[`vim-signify`](https://github.com/mhinz/vim-signify)
-
Show files changes in the sign column.

[`vim-syntax-extra`](https://github.com/justinmk/vim-syntax-extra)
-
Heavyer syntax highlighting

[`nerdtree`](https://github.com/scrooloose/nerdtree)
-
Side file system explorer.
- `<leader> + nt` toggles NerdTree

[`nerdcommenter`](https://github.com/scrooloose/nerdcommenter)
-
Easy comment your code, uses default plugin bindings.

[`nerdtree-git-plugin`](https://github.com/Xuyuanp/nerdtree-git-plugin)
-
Git integration to NerdTree (shows modified files).

[`vim-42header`](https://github.com/pbondoer/vim-42header)
-
42 File headers support.

[`deoplete.nvim`](https://github.com/Shougo/deoplete.nvim)
-
Extensible and asynchronous completion framework.

[`ultisnips`](https://github.com/SirVer/ultisnips)
-
Auto-complete some code using snippets.
- `<TAB>` triggers autocompletion

[`ale`](https://github.com/w0rp/ale)
-
Asynchronous liniting and lsp integration for various languages.
- `<leader>ag` goes to to symbol definition in a vsplit
- `<leader>at` toggles ALE
- `<leader>af` magic code fix (if your lsp support it)
- `<leader>ah` shows infos for under cursor symbol

[`deoplete-jedi`](https://github.com/zchee/deoplete-jedi)
-
Better completion for python using jedi.

[`awesome-vim-colorschemes`](https://github.com/rafi/awesome-vim-colorschemes)
-
Colorscheme pack

[`vim-airline`](https://github.com/vim-airline/vim-airline)
-
Bottom info line

[`vim-signature`](https://github.com/kshenoy/vim-signature)
-
Show marks on the side bar

[`vim-fugitive`](https://github.com/tpope/vim-fugitive)
-
Git wraper for vim
`<leader>fg` calls git status

[`ctrlp.vim`](https://github.com/ctrlpvim/ctrlp.vim)
-
Full path fuzzy file, buffer, mru, tag... finder (jump everywhere in 2 words).

`Ctrl+p` runs the fuzzy finder.

[`vim-surround`](https://github.com/tpope/vim-surround)
-
Vim language like word surrounding.

[`tagbar`](https://github.com/majutsushi/tagbar)
-
Easy tags browse
- `<leader>tt` toggles tagbar
- `<leader>tj` jump to the following symbol

[`vim-racer`](https://github.com/racer-rust/vim-racer)
-
Rust completion and navigation
