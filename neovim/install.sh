#!/bin/bash

UNAME=$(uname)

mkdir -pv ~/.config/nvim/undodir
mkdir -pv ~/.config/nvim/plugged

#install yarn, required for coc plugin manager
curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --nightly

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


ln -isv $PWD/init.vim ~/.config/nvim/init.vim
ln -isv $PWD/coc-settings.json ~/.config/nvim/coc-settings.json
ln -isv $PWD/coc.vim ~/.config/nvim/coc.vim
ln -isv $PWD/ctrlp.vim ~/.config/nvim/ctrlp.vim
ln -isv $PWD/nvim.vim ~/.config/nvim/nvim.vim
ln -isv $PWD/plugin.vim ~/.config/nvim/plugin.vim

pip3 install neovim --user
pip3 install jedi --user

nvim -c ":PlugInstall" -c ":qa"
#nvim -c ":CocInstall coc-rls" -c ":CocInstall coc-emmet" -c ":CocInstall coc-snippets" -c ":CocInstall coc-lists" -c ":CocInstall coc-git" -c ":CocInstall coc-yank" -c ":CocInstall coc-vimlsp"
nvim -c ":CocInstall coc-rls coc-emmet coc-snippets coc-lists coc-git coc-yank coc-vimlsp"

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
