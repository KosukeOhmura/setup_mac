#!/bin/bash

if type mas > /dev/null 2>&1
then
  exist_flag=0
  echo $1
  for app in `mas list`
  do
    if [ $1 = $app ]
    then
      exist_flag=1
      break
    fi
  done
  if [ $exist_flag = 0 ]
  then
    echo "$0 start installing app.  app id = $1"
    mas install $1
  else
    echo "$0 app is already exists. app id = $1"
  fi
else
  echo "$0 Error: mas not found"
fi

mas upgrade
