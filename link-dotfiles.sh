declare -a dotfiles=("bundle"
                     "config/git"
                     "exenv"
                     "gemrc"
                     "gitconfig"
                     "irbrc"
                     "lein"
                     "nvm"
                     "rbenv"
                     "ruby-build"
                     "spacemacs")

mkdir -p ~/.config
for dotfile in "${dotfiles[@]}"
do
    eval "rm ~/.$dotfile"
    eval "ln -s ~/.dotfiles/$dotfile ~/.$dotfile"
done

declare -a preztofiles=("zlogin"
                        "zlogout"
                        "zpreztorc"
                        "zprofile"
                        "zshenv"
                        "zshrc")

for file in "${preztofiles[@]}"
do
    eval "rm ~/.$file"
    eval "ln -s ~/.dotfiles/zprezto/runcoms/$file ~/.$file"
done
