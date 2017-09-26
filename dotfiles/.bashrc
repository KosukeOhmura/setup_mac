# gitのブランチ名をターミナルに表示
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Xcode
alias clean_xcode='rm -r ~/Library/Developer/Xcode/iOS\ DeviceSupport/ && rm -r ~/Library/Developer/Xcode/DerivedData/ && rm -r ~/Library/Developer/Xcode/iOS\ Device\ Logs/'

# docker
alias docker_clean_images='docker rmi $(docker images -q -f dangling=true)'
alias docker_clean_ps='docker rm -v $(docker ps -aq -f status=exited)'
