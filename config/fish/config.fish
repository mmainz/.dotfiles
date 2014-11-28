set -x EDITOR 'ec'
set -x GIT_EDITOR 'vi'

alias tpr="touch ~/.pow/restart.txt"
alias ec="emacsclient -n"

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -x PATH ./bin $PATH
set -x PATH $HOME/bin $PATH

set -x GEM_EDITOR ec

set -x GOPATH $HOME/Development/go
set -x PATH $PATH $GOPATH/bin

set -x JAVA_OPTS "-Xms128m -Xmx1024m"
