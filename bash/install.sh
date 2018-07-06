#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old bashrc config to ~/oldvim"${NC}
cp ~/.bashrc ~/oldbashrc
echo -e "${BLUE}Copy${NC} bashrc located at ${RED}~/.bashrc${NC}."
ln -fs $PWD/bashrc ~/.bashrc
echo -e "${GREEN}Installation${NC} done."
