#!/bin/bash

if type brew > /dev/null 2>&1
then

  BREW_TAPS=(
    homebrew/bundle
    homebrew/services
    homebrew/versions
  )

  for tap in "${BREW_TAPS[@]}"
  do
    brew tap $tap
  done

  BREW_REPOS=(
    ansible
    autoconf
    bitrise
    carthage
    cloc
    curl
    direnv
    e2fsprogs
    ffmpeg
    freetype
    git
    goenv
    homebrew/fuse/ext2fuse
    hub
    imagemagick
    jmeter
    jpeg
    jq
    libdvdcss
    libevent
    libtiff
    libtool
    libyaml
    mas
    nodebrew
    openssl
    pkg-config
    postgresql
    protobuf
    pyenv
    rbenv
    readline
    ruby-build
    swiftlint
    tig
    tree
    xz
    yarn
    youtube-dl
    z
  )

  for repo in "${BREW_REPOS[@]}"
  do
    brew install $repo
  done

  # Remove outdated versions from the cellar.
  brew cleanup

  BREW_CASK_REPOS=(
    alfred
    avast-security
    bittorrent
    caffeine
    cmd-eikana
    datagrip
    docker
    eclipse-java
    firefox
    gitkraken
    google-chrome
    google-japanese-ime
    handbrake
    iterm2
    java
    kindle
    libreoffice
    license-plist
    mysqlworkbench
    night-owl
    osxfuse
    postico
    rubymine
    sequel-pro
    simple-comic
    skype
    sourcetree
    sublime-text
    the-unarchiver
    vagrant
    vagrant-manager
    virtualbox
    virtualbox-extension-pack
    visual-studio-code
    vlc
    windscribe
  )

  for cask_repo in "${BREW_CASK_REPOS[@]}"
  do
    brew cask install $cask_repo
  done

else
  echo "$0 Error: brew not found"
fi
