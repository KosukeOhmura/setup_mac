#!/bin/bash

nodebrew ls-remote

flag=true;
while $flag; do
  echo "choose nodejs version to install: "
  read node_ver
  for version in `nodebrew ls-remote`
  do
    if [ $node_ver = $version ]; then
        flag=false;
        break;
    fi;
  done
done

# You need to manually run setup_dirs to create directories required by nodebrew:
/usr/local/opt/nodebrew/bin/nodebrew setup_dirs

nodebrew install-binary $node_ver
nodebrew use $node_ver
