#!/bin/bash

DOTFILES_DIR=$(dirname $0)/../dotfiles
DOT_FILES=(
  .bash_profile
  .bashrc
)

for dotfile in ${DOT_FILES[@]}
do
  ln -sfv $DOTFILES_DIR/dotfiles/$dotfile $HOME/$dotfile
done

# todo: alfred, sublimeあたりの設定ファイル