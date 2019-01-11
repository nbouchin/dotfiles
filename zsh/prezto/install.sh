#!/bin/zsh

cp -v ~/.zpreztorc ~/zpreztorc.bak
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -sfv "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
ln -sfv $PWD/zpreztorc ~/.zpreztorc
ln -sfv $PWD/zshrc ~/.zshrc
ln -sfv $PWD/inputrc ~/.inputrc
ln -sfv $PWD/prompt_nbouchin_setup ~/.zprezto/modules/prompt/functions/prompt_nbouchin_setup
