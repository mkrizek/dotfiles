#!/bin/bash

DOTFILES=".bashrc .gitconfig .tmux.conf .vimrc start-tmux.sh"

for dotfile in $DOTFILES; do
    ln -s `pwd`/$dotfile $HOME/$dotfile
done
