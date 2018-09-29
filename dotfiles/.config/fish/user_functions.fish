function clean-xcode
  rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport/
  rm -rf ~/Library/Developer/Xcode/DerivedData/
  rm -rf ~/Library/Developer/Xcode/iOS\ Device\ Logs/
end

# git
function git-setuser-uv
  git config user.name "Kosuke Ohmura"
  echo "Set user.name as "(git config --get user.name)
  git config user.email "ohmura_kosuke@uniquevision.co.jp"
  echo "Set user.email as "(git config --get user.email)
end

function git-setuser-me
  git config user.name "Kosuke Ohmura"
  echo "Set user.name as "(git config --get user.name)
  git config user.email "bnpb81@gmail.com"
  echo "Set user.email as "(git config --get user.email)
end

function vscode-backup-exlist
  code --list-extensions > $HOME/Dropbox/development/setup_mac/config/vscode/extension_list
end

# .envrc 回収
function backup-envrc
  cd ~/Development
  for file in (find . -name .envrc)
    ditto $file $HOME/Dropbox/development/setup_mac/config/envrc/$file
  end
  cd -
end
