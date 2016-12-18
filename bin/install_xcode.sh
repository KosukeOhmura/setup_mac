#!/bin/bash

if type xcodebuild > /dev/null 2>&1
then
  echo "command line tools already exists"
else
  echo "Start installing command line tools"
  xcode-select --install
fi
