#!/bin/bash

# dotfiles

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


SETTINGS_DIR=$(dirname $0)/../settings
cd $SETTINGS_DIR

# vscode

rm -rf $HOME/Library/Application\ Support/Code/User
ln -sfv $PWD/vscode/User $HOME/Library/Application\ Support/Code/User

for line in `cat vscode/extension_list`
do
code --install-extension $line
done


# karabiner-elements

rm -rf $HOME/.config/karabiner
ln -sfv $PWD/karabiner $HOME/.config/karabiner

cd -
