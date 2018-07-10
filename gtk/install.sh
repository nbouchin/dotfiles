#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old gtkrc-2.0 config to ~/oldgtkrc-2.0"${NC}
cp ~/.gtkrc-2.0 ~/oldgtkrc-2.0
echo -e "${BLUE}Copy${NC} gtkrc-2.0 located at ${RED}~/.gtkrc-2.0${NC}."
ln -fs $PWD/gtkrc-2.0 ~/.gtkrc-2.0
echo -e "${GREEN}Installation${NC} done."
