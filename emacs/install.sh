#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old emacs config to ~/oldvim"${NC}
mkdir -p ~/.emacs.d/my-lisp/
cp ~/.emacs ~/oldemacs
echo -e "${BLUE}Copy${NC} emacs located at ${RED}~/.emacs${NC}."
ln -fs $PWD/emacs ~/.emacs
ln -fs $PWD/my-tabbar.el ~/.emacs.d/my-lisp/my-tabbar.el
echo -e "${GREEN}Installation${NC} done."
