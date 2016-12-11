#!/bin/bash

BREW_TAPS=(
  homebrew/bundle
  homebrew/services
)

for tap in "${BREW_TAPS[@]}"
do
  brew tap $tap
done

BREW_REPOS=(
  ansible
  autoconf
  curl
  hub
  libtiff
  openssl
  tig
  carthage
  imagemagick
  libtool
  pkg-config
  # tmux
  cloc
  jpeg
  libyaml
  postgresql
  tree
  libdvdcss
  # mackup
  mas
  rbenv
  xz
  freetype
  libevent
  readline
  youtube-dl
  z
)

for repo in "${BREW_REPOS[@]}"
do
  brew install $repo
done

BREW_CASK_REPOS=(
  alfred2
  avast
  cmd-eikana
  google-chrome
  handbrake
  iterm2
  libreoffice
  night-owl
  skype
  sublime-text
  simple-comic
  vagrant
  vagrant-manager
  virtualbox
  vlc
)

for cask_repo in "${BREW_CASK_REPOS[@]}"
do
  brew cask install $cask_repo
done