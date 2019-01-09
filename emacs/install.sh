#!/bin/bash

mkdir -pv ~/.emacs.d/my-lisp/
cp -v ~/.emacs ~/oldemacs
ln -fsv $PWD/emacs ~/.emacs
ln -fsv $PWD/my-tabbar.el ~/.emacs.d/my-lisp/my-tabbar.el
