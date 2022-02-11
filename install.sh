#!/bin/zsh

DOTFILES=".gitconfig .vimrc .zshrc"
#DOTFILES=".bashrc .gitconfig .tmux.conf .vimrc"

for dotfile in $DOTFILES; do
    ln -s `pwd`/$dotfile $HOME/$dotfile
done
