#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -isfv "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
ln -isfv $PWD/zpreztorc ~/.zpreztorc
ln -isfv $PWD/zshrc ~/.zshrc
ln -isfv $PWD/inputrc ~/.inputrc
ln -isfv $PWD/prompt_nbouchin_setup ~/.zprezto/modules/prompt/functions/prompt_nbouchin_setup
