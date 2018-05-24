#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Create${NC} vim dir located at ${RED}~/.vim/undodir/${NC}."
mkdir -p ~/.vim
echo -e "${BLUE}Copy${NC} vimrc located at ${RED}~/.vimrc${NC}."
cp vimrc ~/.vimrc
echo -e "${GREEN}Install${NC} jedi with pip3."
pip3 install jedi
echo -e "${PURPLE}Download${NC} vim-plug installation plugin located at ${RED}.local/share/vim/site/autoload/plug.vim${NC}."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -e "${PURPLE}Download${NC} and Install vim plugins."
vim +PlugInstall +q +q
echo -e "${BLUE}Copy${NC} deus.vim theme to awesome-vim-colorschemes vim plugin located at ${RED}~/.config/vim/plugged/awesomw-vim-colorschemes/colors/${NC}."
cp deus.vim ~/.vim/plugged/awesome-vim-colorschemes/colors/
echo -e "${GREEN}Installation${NC} done."
