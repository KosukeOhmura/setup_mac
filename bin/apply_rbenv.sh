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

ruby -v

GEMS=(
  bundler
  cocoapods
  pry
)

for gem in "${GEMS[@]}"
do
  gem install $gem
done