#!/bin/bash

project_root=$(dirname $0)
bin_dir=$project_root/bin
chmod 755 $bin_dir/*.sh
$bin_dir/apply_symbolic_links.sh

# command line tools
xcode-select --install

# package managers
$bin_dir/brew.sh
$bin_dir/mas.sh

# languages
$bin_dir/rbenv.sh
$bin_dir/pyenv.sh
$bin_dir/goenv.sh
$bin_dir/node.sh
curl https://sh.rustup.rs -sSf | sh # rust

$bin_dir/defaults.sh

# hyperkitのドライバ
curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
  && chmod +x docker-machine-driver-hyperkit \
  && sudo mv docker-machine-driver-hyperkit /usr/local/bin/ \
  && sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit \
  && sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit

# dotfiles
dotfiles_dir=$project_root/dotfiles
for dotfile in .config .bash_profile .gitignore_global; do
  ln -sfv $dotfiles_dir/$dotfile $HOME/$dotfile
done
source $HOME/.bash_profile

# configs
config_dir=$project_root/config

# vscode
rm -rf $HOME/Library/Application\ Support/Code/User
ln -sfv $config_dir/vscode/User $HOME/Library/Application\ Support/Code/User
for line in `cat $config_dir/vscode/extension_list`; do
  code --install-extension $line
done
