#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old Xresources config to ~/oldXresources"${NC}
cp ~/.Xresources ~/oldXresources
echo -e "${BLUE}Copy${NC} Xresources located at ${RED}~/.Xresources${NC}."
ln -fs $PWD/Xresources ~/.Xresources
xrdb -merge ~/.Xresources
echo -e "${GREEN}Installation${NC} done."
