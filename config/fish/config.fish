set -x EDITOR 'vi'
set -x GIT_EDITOR 'vi'

alias tpr="touch ~/.pow/restart.txt"
alias ec="emacsclient -n"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias udate="date +\"%Y%d%m%H%m%s\""

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

source ~/.config/fish/nvm-wrapper/nvm.fish

set -x PATH ./bin $PATH
set -x PATH $HOME/bin $PATH

set -x GEM_EDITOR ec

set -x GOPATH $HOME/Development/go
set -x PATH $PATH $GOPATH/bin

set -x JAVA_OPTS "-Xms128m -Xmx1024m"
