alias reload!='. ~/.zshrc'

[[ `uname` == "Linux" ]] && alias ls="ls -sh --color=auto" || alias ls="ls -GF"

alias ll="ls -lFhp"
alias la='ll -lAh'
alias grep='grep --color=auto'
alias df="df -h"
alias newpass="LANG=C tr -cd '[:alnum:]' < /dev/random | head -c 20"
alias vi="vim"
[[ -x /opt/local/bin/vim ]] && alias vim="/opt/local/bin/vim"
alias dots="puppet apply -v ~/dotfiles/initialize.rb" 
alias gam="~/GAM3/gam.py"
alias plistbuddy="/usr/libexec/PlistBuddy"
alias ftpon='sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist'
alias ftpoff='sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
