#!/bin/bash

rbenv install --list

flag=true;
while $flag; do
  echo "choose ruby version to install: "
  read ruby_ver
  for version in `rbenv install --list`
  do
    if [ $ruby_ver = $version ]; then
        flag=false;
        break;
    fi;
  done
done

rbenv install $ruby_ver
rbenv global $ruby_ver
rbenv rehash

gem install cocoapods
gem install bundler
gem install pry
gem install solargraph # ide tool
