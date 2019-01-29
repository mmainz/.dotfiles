declare -a dotfiles=("bundle"
                     "config/git"
                     "gemrc"
                     "gitconfig"
                     "irbrc"
                     "spacemacs"
                     "zshrc")

mkdir -p ~/.config
for dotfile in "${dotfiles[@]}"
do
    eval "rm ~/.$dotfile"
    eval "ln -s ~/.dotfiles/$dotfile ~/.$dotfile"
done
