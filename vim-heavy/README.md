# /!\ WARNING /!\

### INSTALLATION :

You need your TERM to be xterm-256color.
If you don't please add it to your ~/.bashrc : export TERM=xterm-256color.

> git clone --recursive -j8 https://github.com/nbouchin/vim-config.git && cd vim-config && ./install.sh

# USED PACKAGES

`ctrlp.vim`	> https://github.com/kien/ctrlp.vim.git

`dragvisuals.vim` > https://github.com/shinokada/dragvisuals.vim.git

`nerdcommenter` > https://github.com/scrooloose/nerdcommenter.git

`nerdtree` > https://github.com/scrooloose/nerdtree.git

`nerdtree-git-plugin` > https://github.com/scrooloose/nerdtree-git-plugin.git

`nginx-vim-syntax` > https://github.com/evanmiller/nginx-vim-syntax.git

`syntastic` > https://github.com/vim-syntastic/syntastic.git

`tagbar` > https://github.com/majutsushi/tagbar.git

`tlib_vim` > https://github.com/tomtom/tlib_vim.git

`vim-addon-mw-utils` > https://github.com/MarcWeber/vim-addon-mw-utils.git

`vim-airline` > https://github.com/vim-airline/vim-airline.git

`vim-bufferline` > https://github.com/bling/vim-bufferline.git

`vim-fugitive` > https://github.com/tpope/vim-fugitive.git

`vim-gitgutter` > https://github.com/airblade/vim-gitgutter.git

`vim-multiple-cursors` > https://github.com/terryma/vim-multiple-cursors.git 

`vim-snipmate` > https://github.com/garbas/vim-snipmate.git

`vim-snippets` > https://github.com/honza/vim-snippets.git

`vim-syntax-extra` > https://github.com/justinmk/vim-syntax-extra.git

# MACRO

###	NERDTREE MACRO
+ `Ctrl+n  Ctrl+o`				Open NerdTree
+ `Ctrl+n  Ctrl+k`				Close NerdTree

### 42 COMMENTS
+ `/*<tab>`						Print 42 normed comments
+ `Ctrl+l`						42 normed comments new line

### NOHLSEARCH
+	`Ctrl+c`					Remove search highlight

### WINDOW CREATION
+	`Ctrl+w  Ctrl+v`			Vertical split window  
+	`Ctrl+w  Ctrl+h`			Horizontal split window
+	`Ctrl+w  Ctrl+k`			Kill / Hide current window

### WINDOW NAVIGATION
+	`Ctrl+h`					Move cursor to left window
+	`Ctrl+j`					Move cursor to down window
+	`Ctrl+k`					Move cursor to up window
+	`Ctrl+l`					Move cursor to right window

### LINE EDITION
+	`Shift+<up>`				Move line/lines up
+	`Shift+<down>`				Move line/lines down
+	`Shift+v`					Select multi lines
+	`Ctrl+n`					Auto completion

+	`Shift+n`					Multi cursor next
+	`Shift+p`					Multi cursor prev
+	`Shift+s`					Multi cursor skip
+	`Shift+k`					Multi cursor quit

###	FOLDING COMMAND
+	`zf#j`						Creates a fold from the cursor down # lines.
+	`zf/`						String creates a fold from the cursor to string .
+	`zj`						Moves the cursor to the next fold.
+	`zk`						Moves the cursor to the previous fold.
+	`za`						Toggle a fold at the cursor.
+	`zo`						Opens a fold at the cursor.
+	`zO`						Opens all folds at the cursor.
+	`zc`						Closes a fold under cursor. 
+	`zm`						Increases the foldlevel by one.
+	`zM`						Closes all open folds.
+	`zr`						Decreases the foldlevel by one.
+	`zR`						Decreases the foldlevel to zero -- all folds will be open.
+	`zd`						Deletes the fold at the cursor.
+	`zE`						Deletes all folds.
+	`[z`						Move to start of open fold.
+	`]z`						Move to end of open fold.
