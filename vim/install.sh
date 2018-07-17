#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old vim config to ~/oldvim"${NC}
cp ~/.vimrc ~/oldvim
echo -e "${YELLOW}Create${NC} vim undo dir located at ${RED}~/.vim/undodir/${NC}."
mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/swapdir
echo -e "${BLUE}Copy${NC} vimrc located at ${RED}~/.vimrc${NC}."
ln -fs $PWD/vimrc ~/.vimrc
ln -fs $PWD/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
ln -fs $PWD/gvimrc ~/.gvimrc
~/.vim/plugged/YouCompleteMe/./install.py --clang-complete
echo -e "${PURPLE}Download${NC} vim-plug installation plugin located at ${RED}.local/share/vim/site/autoload/plug.vim${NC}."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -e "${PURPLE}Download${NC} and Install vim plugins."
vim +PlugInstall +q +q
echo -e "${GREEN}Installation${NC} done."
