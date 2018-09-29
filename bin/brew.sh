#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew tap homebrew/bundle
brew tap homebrew/services
brew tap homebrew/versions
brew tap caskroom/versions

brew install ansible
brew install autoconf
brew install bitrise
brew install carthage
brew install cloc
brew install curl
brew install direnv
brew install e2fsprogs
brew install ffmpeg
brew install fish
brew install freetype
brew install fzf
brew install git
brew install goenv
brew install heroku
brew install heroku-node
brew install homebrew/fuse/ext2fuse
brew install hub
brew install imagemagick
brew install jmeter
brew install jpeg
brew install jq
brew install kubernetes-cli
brew install kubernetes-helm
brew install lame
brew install libdvdcss
brew install libevent
brew install libffi
brew install libidn
brew install libmagic
brew install libpng
brew install libtiff
brew install libtool
brew install libyaml
brew install mas
brew install nodebrew
brew install ntfs-3g
brew install openjpeg
brew install openssl
brew install pkg-config
brew install poppler
brew install postgresql
brew install protobuf
brew install pyenv
brew install rbenv
brew install readline
brew install ruby-build
brew install stern
brew install swift-protobuf
brew install swiftlint
brew install tig
brew install tree
brew install x264
brew install xvid
brew install xz
brew install yarn
brew install youtube-dl

# Remove outdated versions from the cellar.
brew cleanup

brew cask install adobe-acrobat-reader
brew cask install alfred
brew cask install avast-security
brew cask install bittorrent
brew cask install caffeine
brew cask install datagrip
brew cask install docker
brew cask install docker-edge
brew cask install eclipse-java
brew cask install firefox
brew cask install fork
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install handbrake
brew cask install iterm2
brew cask install java
brew cask install karabiner-elements
brew cask install kindle
brew cask install libreoffice
brew cask install license-plist
brew cask install macdown
brew cask install microsoft-office
brew cask install minikube
brew cask install mysqlworkbench
brew cask install night-owl
brew cask install osxfuse
brew cask install postico
brew cask install rubymine
brew cask install sequel-pro
brew cask install simple-comic
brew cask install skype
brew cask install sourcetree
brew cask install spotify
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install tunnelblick
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install vlc
brew cask install windscribe
