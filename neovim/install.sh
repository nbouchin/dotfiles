#!/bin/bash

UNAME=$(uname)

mkdir -pv ~/.config/nvim/undodir
mkdir -pv ~/.config/nvim/plugged

ln -isv $PWD/init.vim ~/.config/nvim/init.vim

pip3 install neovim --user
pip3 install jedi --user
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -isv $PWD/clang-format ~/.clang-format
ln -isv $PWD/c-libft.snippets ~/.config/nvim/plugged/vim-snippets/UltiSnips/c-libft.snippets
ln -isv $PWD/cpp-personal.snippets ~/.config/nvim/plugged/vim-snippets/UltiSnips/cpp-personal.snippets
ln -isFv $PWD/config ~/.config/nvim
nvim +PlugInstall +qall

if [[ $UNAME == "Darwin" && ! -f $HOME/bin/clangd ]]; then
	curl -O https://releases.llvm.org/7.0.0/clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
	tar -vxf clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
	mkdir -p ~/bin;
	mv -vi clang+llvm-7.0.0-x86_64-apple-darwin/bin/clangd ~/bin
	mv -vi clang+llvm-7.0.0-x86_64-apple-darwin/bin/clang-format ~/bin
	mv -vi clang+llvm-7.0.0-x86_64-apple-darwin/bin/clang-tidy ~/bin
	rm -rfv clang+llvm-7.0.0-x86_64-apple-darwin
	rm -rfv clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz
	if [[ ! $(grep 'PATH=~/bin:$PATH' ~/.zshrc) ]]; then
		echo 'export PATH=~/bin:$PATH' >> ~/.zshrc
	fi
fi
