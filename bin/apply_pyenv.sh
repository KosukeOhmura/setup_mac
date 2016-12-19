#!/bin/bash

pyenv install 3.5.2
pyenv global 3.5.2
pyenv rehash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

python --version

PIPS=(
  awscli
)

for pip in "${ PIPS[@] }"
do
  pip install $pip
done
