# Swift
export PATH="$HOME/.swift/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# nodebrew
export PATH="$PATH:$HOME/.nodebrew/current/bin"

# .bashrc読み込み
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi

# java
export JAVA_HOME=`/usr/libexec/java_home -v 9`
