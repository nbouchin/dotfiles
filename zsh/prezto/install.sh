#!/bin/zsh

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old zpreztorc config to ~/oldvim"${NC}
cp ~/.zpreztorc ~/oldzpreztorc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo -e "${BLUE}Copy${NC} zpreztorc located at ${RED}~/.zpreztorc${NC}."
ln -sf $PWD/zpreztorc ~/.zpreztorc
ln -sf $PWD/zshrc ~/.zshrc
ln -sf $PWD/inputrc ~/.inputrc
ln -sf $PWD/prompt_nbouchin_setup ~/.zprezto/modules/prompt/functions/prompt_nbouchin_setup
echo -e "${GREEN}Installation${NC} done."
