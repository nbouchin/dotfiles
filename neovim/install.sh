#!/bin/bash

UNAME=$(uname)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

mkdir -pv ~/.config/nvim/undodir
mkdir -pv ~/.config/nvim/plugged

curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -isv $PWD/init.vim ~/.config/nvim/init.vim
ln -isv $PWD/coc-settings.json ~/.config/nvim/coc-settings.json
ln -isv $PWD/coc.vim ~/.config/nvim/coc.vim
ln -isv $PWD/ctrlp.vim ~/.config/nvim/ctrlp.vim
ln -isv $PWD/nvim.vim ~/.config/nvim/nvim.vim
ln -isv $PWD/plugin.vim ~/.config/nvim/plugin.vim

pip3 install neovim --user
pip3 install jedi --user

nvim -c ':PlugInstall' -c ':qa'
nvim -c ':CocInstall coc-rls coc-emmet coc-snippets coc-lists coc-git coc-yank coc-vimlsp'
