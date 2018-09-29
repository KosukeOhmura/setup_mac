# Swift
if test -d $HOME/.swift/bin
  set -x PATH $HOME/.swift/bin $PATH
end

# rbenv
# set -x PATH $HOME/.rbenv/bin $PATH
if test -d $HOME/.rbenv/bin
  set -x fish_user_paths $HOME/.rbenv/bin $fish_user_paths
end
rbenv init - | source

# pyenv
if test -d $HOME/.pyenv/bin
  set -x fish_user_paths $HOME/.pyenv/bin $fish_user_paths
end
pyenv init - | source

# goenv
if test -d $HOME/.goenv/bin
  set -x fish_user_paths $HOME/.goenv/bin $fish_user_paths
end
goenv init - | source

# go
set -x GOPATH $HOME/go
if test -d $GOPATH/bin
  set -x fish_user_paths $GOPATH/bin $fish_user_paths
end

# nodebrew
set -x fish_user_paths $HOME/.nodebrew/current/bin $fish_user_paths

# yarn
if test -d $HOME/.yarn/bin
  set -x fish_user_paths $HOME/.yarn/bin $fish_user_paths
end

# rust
set -x fish_user_paths $HOME/.cargo/bin $fish_user_paths

# java
set -x JAVA_HOME /usr/libexec/java_home

# fzf
set -x FZF_LEGACY_KEYBINDINGS 1

set -x  EDITOR code
