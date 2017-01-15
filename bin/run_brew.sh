#!/bin/bash

if type brew > /dev/null 2>&1
then

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
    git
    tig
    carthage
    imagemagick
    libtool
    pkg-config
    cloc
    jpeg
    libyaml
    postgresql
    tree
    libdvdcss
    mas
    rbenv
    ruby-build
    pyenv
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
    alfred
    avast
    caffeine
    cmd-eikana
    docker
    google-chrome
    google-japanese-ime
    handbrake
    iterm2
    kindle
    libreoffice
    macdown
    night-owl
    postico
    skype
    sourcetree
    sublime-text
    simple-comic
    the-unarchiver
    vagrant
    vagrant-manager
    virtualbox
    vlc
  )

  for cask_repo in "${BREW_CASK_REPOS[@]}"
  do
    brew cask install $cask_repo
  done

else
  echo "$0 Error: brew not found"
fi
