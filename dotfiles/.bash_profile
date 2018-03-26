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

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# nodebrew
export PATH="$PATH:$HOME/.nodebrew/current/bin"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# .bashrc読み込み
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi

# java
export JAVA_HOME=`/usr/libexec/java_home -v 9`

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ohmurakosuke/google-cloud-sdk/path.bash.inc' ]; then source '/Users/ohmurakosuke/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ohmurakosuke/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/ohmurakosuke/google-cloud-sdk/completion.bash.inc'; fi
