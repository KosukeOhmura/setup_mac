#!/bin/bash

rbenv install 2.3.3
rbenv global 2.3.3

ruby -v

GEMS=(
  cocoapods
  pry
)

for gem in "${ GEMS[@] }"
do
  gem install $gem
done