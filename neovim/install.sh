#!/bin/bash

UNAME=$(uname)

mkdir -pv ~/.config/nvim/undodir
mkdir -pv ~/.config/nvim/plugged
ln -sfv $PWD/init.vim ~/.config/nvim/init.vim
pip3 install --user neovim
pip3 install jedi --user
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sfv $PWD/clang-format ~/.clang-format
ln -sfv $PWD/c-libft.snippets ~/.config/nvim/plugged/vim-snippets/UltiSnips/c-libft.snippets
ln -sfv $PWD/cpp-personal.snippets ~/.config/nvim/plugged/vim-snippets/UltiSnips/cpp-personal.snippets
nvim +PlugInstall +qall

if [[ $UNAME == "Darwin" ]]; then
    curl -O https://releases.llvm.org/7.0.0/clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
    tar -vxf clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
    mkdir ~/bin && mv clang+llvm-7.0.0-x86_64-apple-darwin/bin/clangd ~/bin
    rm -rfv clang+llvm-7.0.0-x86_64-apple-darwin
    rm -rfv clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
    echo 'export PATH=~/bin:$PATH' >> ~/.zshrc
elif [[ $UNAME == "Archlinux" ]]; then
    pacman -Syu clang
fi
