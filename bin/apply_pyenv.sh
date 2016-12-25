#!/bin/bash

pyenv install 3.5.2
pyenv global 3.5.2
pyenv rehash

python --version

PIPS=(
  awscli
)

for pip in "${ PIPS[@] }"
do
  pip install $pip
done
