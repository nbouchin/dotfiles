#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old config config to ~/oldvim"${NC}
cp ~/.config ~/oldconfig
echo -e "${BLUE}Copy${NC} config located at ${RED}~/.config${NC}."
ln -fs $PWD/config ~/.config
echo -e "${GREEN}Installation${NC} done."