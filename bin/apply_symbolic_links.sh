#!/bin/bash

DOT_FILES=( .bash_profile .gem )

for dotfile in ${DOT_FILES[@]}
do
  ln -sfv $HOME/Dropbox/config_backups/dotfiles/$dotfile $HOME/$dotfile
done

ln -sfv ~/Dropbox/config_backups/alfred\ 2/Alfred.alfredpreferences ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences
