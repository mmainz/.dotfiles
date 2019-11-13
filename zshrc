export LC_ALL=en_US.UTF-8

alias ec="emacsclient -n"
alias dc="docker-compose"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias kubep="kubectl --kubeconfig='$HOME/.kube/config.prod'"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacsclient -n'
fi

export GIT_EDITOR "emacsclient"

autoload -Uz compinit
compinit

autoload -U promptinit; promptinit
prompt spaceship
export SPACESHIP_PROMPT_SEPARATE_LINE=false
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_KUBECONTEXT_SHOW=false

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="./bin:$PATH"

export GOPATH="$HOME/code/golang"
export PATH="$GOPATH/bin:$PATH"

clone-ivx() {
  git clone git@github.com:ivx/"$1".git
}

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac
