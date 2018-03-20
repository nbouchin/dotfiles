#!/bin/sh

git submodule update --recursive
echo "Update submodules done"
rm -rf $HOME/.old-emacs ;
mkdir $HOME/.old-emacs ;
mv $HOME/.emacs.d $HOME/.old-emacs/emacs.d ;
mv $HOME/.emacs $HOME/.old-emacs/emacs ;
echo "Save old config to $HOME/.old-emacs directory"
cp -rf ./emacs.d $HOME/.emacs.d ;
cp -rf ./emacs $HOME/.emacs ;
echo "Installation done"
