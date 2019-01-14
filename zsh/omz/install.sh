#!/bin/bash

cp -v ~/.zshrc ~/zshrc.bak
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf $PWD/zshrc ~./.zshrc
