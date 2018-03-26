#!/bin/bash

DOTFILES_DIR=$(dirname $0)/../dotfiles
DOT_FILES=(
  .bash_profile
  .bashrc
  .gitignore_global
)

cd $DOTFILES_DIR
for dotfile in ${DOT_FILES[@]}
do
  ln -sfv $PWD/$dotfile $HOME/$dotfile
done
source .bash_profile .bashrc
cd -


# todo: alfred, sublimeあたりの設定ファイル
