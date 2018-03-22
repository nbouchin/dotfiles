#!/bin/bash
if ! [[ "$1" == "--help" || "$1" == "-h" ]]; then
	WM=$1
	SHELL=$2
	EDITOR=$3
	TMUX=$4
else
	WM=$2
	SHELL=$3
	EDITOR=$4
	TMUX=$5
fi
if [ "$WM" == "" ]; then
	WM="kde"
fi
if [ "$SHELL" == "" ]; then
	SHELL="oh-my-zsh"
fi
if [ "$EDITOR" == "" ]; then
	EDITOR="neovim"
fi
if [ "$TMUX" == "" ]; then
	TMUX="true"
fi

dependencies() {
	mkdir ~/.config
	if [ $(uname -n) == "archlinux" ]; then
		if [ $WM == "awesome" ]; then
			sudo pacman -S redshift $SHELL bash xterm $WM $EDITOR xss-lock i3lock qutebrowser git enlighten alsa-utils
		elif [ $WM == "kde" ]; then
			sudo pacman -S redshift $SHELL bash $WM $EDITOR git
		fi
	fi
}

wm_install() {
	if [ "$WM" == "awesome" ]; then
		echo 'Installing, xorg and xterm configuration.'
		cp xorg/xinitrc ~/.xinitrc
		cp xterm/Xresources ~/.Xresources && xrdb -merge ~/.Xresources
		echo 'Xorg and xterm configuration.'
	fi
	echo "Installing $WM configuration."
	if [ "$WM" == "awesome" ]; then
		mkdir ~/.config/awesome/
		git clone --recursive https://github.com/lcpz/awesome-copycats.git
		mv -bv awesome-copycats/* ~/.config/awesome; rm -rf awesome-copycats
		cp -v qutebrowser/config.py ~/.config/qutebrowser/config.py
		cp -v awesome/rc.lua ~/.config/awesome/ ; cp -v awesome/wall.png ~/.config/awesome/themes/multicolor/wall.png
		echo "$WM configuration done."
	elif [ "$WM" == "kde" ]; then
		cp -v kde/* ~/.config/
		echo "$WM configuration done."
	else
		echo "Unknown window-manager or desktop environment: $WM."
	fi
}

zsh_install() {
	echo "Installing zsh with $SHELL configuration."
	if [ "$SHELL" == "oh-my-zsh" ]; then
		git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		echo "Zsh and $SHELL configuration done."
	elif [ "$SHELL" == "zprezto" ]; then
		git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
		ln -s ~/.zprezto/runcoms/zlogin ~/.zlogin
		ln -s ~/.zprezto/runcoms/zlogout ~/.zlogout
		ln -s ~/.zprezto/runcoms/zpreztorc ~/.zpreztorc
		ln -s ~/.zprezto/runcoms/zprofile ~/.zprofile
		ln -s ~/.zprezto/runcoms/zshenv ~/.zshenv
		ln -s ~/.zprezto/runcoms/zshrc ~/.zshrc
		cp -r zsh/zprezto ~/.zprezto && cp zsh/zpreztorc ~/.zpreztorc && cp zsh/zshrc ~/.zshrc
		echo "Zsh and $SHELL configuration done."
	elif [ "$SHELL" == "bash" ]; then
		cp -v bash/basrc ~/.bashrc
		cp -v bash/inputrc /etc/inputrc
		echo "Bash configuration done."
	else
		echo "$SHELL is not a known zsh module."
	fi
}

editor_install() {
	echo "Installing $EDITOR configuration."
	if [ $EDITOR == "neovim" || $EDITOR == "emacs"  ]; then
		git clone --recursive https://github.com/nbouchin/$EDITOR-config.git && cd $EDITOR-config && ./install.sh && cd ..
	elif [ $EDITOR == "vim" ]; then
		cp -rv vim/vimrc ~/.vimrc
		cp -rv vim/vim ~/.vim
	fi
	echo "$EDITOR configuration done."
}

tmux_install() {
	if [ "$TMUX" == "true" ]; then
		cp tmux/tmux.conf ~/.tmux.conf
	fi
}

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
	echo -e "Usage:\t ./install.sh [--global-options] [wm] [shell] [editor] [tmux]"
	echo -e "Default: ./install kde oh-my-zsh neovim true"
	echo -e "wm:\t kde, awesome"
	echo -e "shell:\t oh-my-zsh, zprezto, bash"
	echo -e "editor:\t vim, neovim, emacs"
	echo -e "tmux:\t true, false"
	echo -e "Global Options:\t--help, -h\tHelp."
else
	dependencies
	editor_install
	wm_install
	zsh_install
	tmux_install
fi
