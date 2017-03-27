#!/bin/bash

pyenv install --list

flag=true;
while $flag; do
  echo "choose python version to install: "
  read python_ver
  for version in `pyenv install --list`
  do
    if [ $python_ver = $version ]; then
        flag=false;
        break;
    fi;
  done
done

pyenv install $python_ver
pyenv global $python_ver
pyenv rehash

python --version

PIPS=(
  awscli
)

for pip in "${ PIPS[@] }"
do
  pip install $pip
done
