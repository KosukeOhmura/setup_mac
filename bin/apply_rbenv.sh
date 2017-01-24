#!/bin/bash

rbenv install 2.4.0
rbenv global 2.4.0

ruby -v

GEMS=(
  bundler
  cocoapods
  pry
)

for gem in "${ GEMS[@] }"
do
  gem install $gem
done