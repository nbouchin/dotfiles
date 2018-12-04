#!/bin/bash
GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

PLUG_START_PATH="$HOME/.vim/pack/my-plugins/start"
PLUG_OPT_PATH="$HOME/.vim/pack/my-plugins/opt"

echo -e "${RED}Backup old vim config to ~/oldvim"${NC}
cp ~/.vimrc ~/oldvim
echo -e "${YELLOW}Create${NC} vim undo dir located at ${RED}~/.vim/undodir/${NC}."
mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/swapdir
mkdir -p ~/.vim/pack/my-plugins/{opt,start}
echo -e "Vim plugin generation."
git clone https://github.com/tpope/vim-surround.git --recursive $PLUG_START_PATH/vim-surround
git clone https://github.com/SirVer/ultisnips.git --recursive $PLUG_START_PATH/ultisnips
git clone https://github.com/honza/vim-snippets.git --recursive $PLUG_START_PATH/vim-snippets
git clone https://github.com/Valloric/YouCompleteMe.git --recursive $PLUG_START_PATH/YouCompleteMe
git clone https://github.com/kien/ctrlp.vim.git --recursive $PLUG_START_PATH/ctrlp.vim
git clone https://github.com/vim-airline/vim-airline.git $PLUG_START_PATH/vim-airline
git clone https://github.com/justinmk/vim-syntax-extra.git $PLUG_START_PATH/vim-syntax-extra
git clone https://github.com/rafi/awesome-vim-colorschemes.git $PLUG_START_PATH/awesome-vim-colorschemes
git clone https://github.com/vim-syntastic/syntastic.git $PLUG_START_PATH/vim-syntastic
git clone https://github.com/myint/syntastic-extras.git $PLUG_START_PATH/syntastic-extras
git clone https://github.com/tpope/vim-fugitive.git $PLUG_START_PATH/vim-fugitive
git clone https://github.com/tpope/vim-surround.git $PLUG_START_PATH/vim-surround
echo -e "${BLUE}Copy${NC} vimrc located at ${RED}~/.vimrc${NC}."
ln -fs $PWD/vimrc ~/.vimrc
ln -fs $PWD/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
ln -fs $PWD/c-libft.snippets $PLUG_START_PATH/vim-snippets/UltiSnips/c-libft.snippets
ln -fs $PWD/cpp-personal.snippets $PLUG_START_PATH/vim-snippets/UltiSnips/cpp-personal.snippets
python3 ~/.vim/pack/my-plugins/start/YouCompleteMe/install.py --clang-complete
