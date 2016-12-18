#!/bin/bash

rbenv install 2.3.3
rbenv global 2.3.3

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

ruby -v

GEMS=(
  cocoapods
  pry
)

for gem in "${ GEMS[@] }"
do
  gem install $gem
done