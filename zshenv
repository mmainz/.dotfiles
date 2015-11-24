export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='emacsclient -n'
fi

export GIT_EDITOR "emacsclient"

export PATH="/usr/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

export GOPATH="$HOME/Development/go"
export PATH="$GOPATH/bin:$PATH"

export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

export NVM_DIR="$HOME/.nvm"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

export PATH="$HOME/.exenv/bin:$PATH"

alias ec="emacsclient -n"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

clone-ivx() {
    git clone https://github.com/ivx/"$1".git
}

# load local config if available
[[ -f ~/.local-env ]] && source ~/.local-env
