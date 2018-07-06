#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old tmux.conf config to ~/old-tmux.conf"${NC}
cp ~/.tmux.conf ~/oldtmux.conf
echo -e "${BLUE}Copy${NC} tmux.conf located at ${RED}~/.tmux.conf${NC}."
ln -fs $PWD/tmux.conf ~/.tmux.conf
echo -e "${GREEN}Installation${NC} done."
