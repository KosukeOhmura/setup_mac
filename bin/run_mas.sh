#!/bin/bash

APP_ID_ARRAY=(
  # NightOwl
  428834068
  # Kindle
  405399194
  # BetterSnapTool
  417375580
  # Evernote
  406056744
  # Pocket
  568494494
  # LINE
  539883307
  # FreeMan
  510934532
  # Slack
  803453959
  # Xcode
  497799835
)

for app_id in "${APP_ID_ARRAY[@]}"
do
  $(dirname $0)/mas_app_install.sh $app_id
done
