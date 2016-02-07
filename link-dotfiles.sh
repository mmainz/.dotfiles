declare -a dotfiles=("bundle"
                     "config/git"
                     "exenv"
                     "gemrc"
                     "gitconfig"
                     "irbrc"
                     "lein"
                     "nvm"
                     "oh-my-zsh"
                     "rbenv"
                     "ruby-build"
                     "spacemacs"
                     "zshrc")

mkdir -p ~/.config
for dotfile in "${dotfiles[@]}"
do
    eval "rm ~/.$dotfile"
    eval "ln -s ~/.dotfiles/$dotfile ~/.$dotfile"
done
