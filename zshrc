export LC_ALL=en_US.UTF-8

alias ec="emacsclient -n"
alias dc="docker compose"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias drilldoggo="open \"https://www.youtube.com/watch?v=6X-zKy70I1Y\""

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

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="./bin:$PATH"

export GOPATH="$HOME/code/golang"
export PATH="$GOPATH/bin:$PATH"

. $HOME/.asdf/asdf.sh

clone-ivx() {
  git clone git@github.com:ivx/"$1".git
}

file-ts() {
  date +"%Y%m%d%H%M%S"
}

maintain-ruby() {
  yarn upgrade-interactive --latest
  yarn format
  bundle update
  bundle exec rspec
  bundle exec rubocop
  bundle outdated --strict
}

maintain-elixir() {
  mix deps.update --all
  mix format
  mix test
  mix credo --strict
  mix hex.outdated
}

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac
