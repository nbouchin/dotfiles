#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

UNAME=$(uname)

echo -e "${YELLOW}Create${NC} nvim dir located at ${RED}~/.config/nvim/undodir/${NC}."
mkdir -p ~/.config/nvim/undodir
mkdir -p ~/.config/nvim/plugged
echo -e "${BLUE}Copy${NC} init.vim located at ${RED}~/.config/nvim/${NC}."
ln -sf $PWD/init.vim ~/.config/nvim/init.vim
echo -e "${GREEN}Install${NC} neovim with pip3."
pip3 install --user neovim
echo -e "${GREEN}Install${NC} jedi with pip3."
pip3 install jedi --user
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -e "${PURPLE}Download${NC} and Install vim plugins."
ln -sf $PWD/clang-format ~/.clang-format
#ln -sf $PWD/c-libft.snippets ~/.config/nvim/bundle/dein/repos/github.com/honza/vim-snippets/UltiSnips/c-libft.snippets
#ln -sf $PWD/cpp-personal.snippets ~/.config/nvim/bundle/dein/repos/github.com/honza/vim-snippets/UltiSnips/cpp-personal.snippets
nvim +PlugInstall +qall
echo -e "${GREEN}Installation${NC} done."

echo "Do you want ton install C language client? It may take a while on Darwin systems [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
    if [[ $UNAME == "Darwin" ]]; then
	brew install --with-toolchain llvm
    elif [[ $UNAME == "Archlinux" ]]; then
	pacman -Syu clang
    fi
fi
