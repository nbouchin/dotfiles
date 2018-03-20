#!/bin/sh

git pull
git submodule update --init --recursive
echo "Update submodules done."
rm -rf $HOME/old-vim ;
mkdir $HOME/old-vim ;
mv $HOME/.vim $HOME/old-vim/vim ;
mv $HOME/.vimrc $HOME/old-vim/vimrc ;
echo "Save old config to $HOME/old-vim directory"
cp -rf ./vim $HOME/.vim ;
cp -rf ./vimrc $HOME/.vimrc ;
cp c.snippets $HOME/.vim/bundle/vim-snippets/snippets
echo "Loading custom snippets"
echo "Installation done"
