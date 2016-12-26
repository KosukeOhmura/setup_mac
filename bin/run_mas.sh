#!/bin/bash

APP_ID_ARRAY=(
  # Night Owl
  428834068
  # BetterSnapTool
  417375580
  # AutoKeyboard
  908553210
  # Xcode
  497799835
  # Pocket
  568494494
  # LINE
  539883307
  # FreeMan
  510934532
  # Slack
  803453959
  # Table Tool
  1122008420
)

if type mas > /dev/null 2>&1
then
  for app_id in "${APP_ID_ARRAY[@]}"
  do
    mas install $app_id
  done
  mas upgrade
else
  echo "$0 Error: mas not found"
fi
