declare -a dotfiles=("config/git"
                     "gemrc"
                     "gitconfig"
                     "irbrc"
                     "zshrc")

mkdir -p ~/.config
for dotfile in "${dotfiles[@]}"
do
    eval "rm ~/.$dotfile"
    eval "ln -s ~/.dotfiles/$dotfile ~/.$dotfile"
done
