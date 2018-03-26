# gitのブランチ名をターミナルに表示
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Xcode
alias clean-xcode='rm -r ~/Library/Developer/Xcode/iOS\ DeviceSupport/ && rm -r ~/Library/Developer/Xcode/DerivedData/ && rm -r ~/Library/Developer/Xcode/iOS\ Device\ Logs/'

# docker
alias docker-clean-images='docker rmi $(docker images -q -f dangling=true)'
alias docker-clean-ps='docker rm -v $(docker ps -aq -f status=exited)'

# brew cask
brew-cask-upgrade(){ for app in $(brew cask list); do local latest="$(brew cask info "${app}" | awk 'NR==1{print $2}')"; local versions=($(ls -1 "/usr/local/Caskroom/${app}/.metadata/")); local current=$(echo ${versions} | awk '{print $NF}'); if [[ "${latest}" = "latest" ]]; then echo "[!] ${app}: ${current} == ${latest}"; [[ "$1" = "-f" ]] && brew cask install "${app}" --force; continue; elif [[ "${current}" = "${latest}" ]]; then continue; fi; echo "[+] ${app}: ${current} -> ${latest}"; brew cask uninstall "${app}" --force; brew cask install "${app}"; done; }
alias brew-cask-clean-outdated="for c in /usr/local/Caskroom/*; do IFS=\$'\t\n' vl=(\$(ls -t \$c)) && for v in \"\${vl[@]:1}\"; do echo \"\$c/\$v\"; rm -rf \"\$c/\$v\"; done; done"

# direnv
export EDITOR=code
eval "$(direnv hook bash)"

# serverless
# TODO: node のバージョンが変わったら死にそうなので取り除きたい
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ohmurakosuke/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/ohmurakosuke/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ohmurakosuke/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/ohmurakosuke/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
