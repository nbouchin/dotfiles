#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old zpreztorc config to ~/oldvim"${NC}
cp ~/.zpreztorc ~/oldzpreztorc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo -e "${BLUE}Copy${NC} zpreztorc located at ${RED}~/.zpreztorc${NC}."
ln -fs $PWD/zpreztorc ~/.zpreztorc
ln -fs $PWD/zshrc ~/.zshrc
ln -fs $PWD/inputrc ~/.inputrc
echo -e "${GREEN}Installation${NC} done."
