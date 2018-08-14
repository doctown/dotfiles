# set username and email
git config --global user.name "David Ogor"
git config --global user.email "doctown@yahoo.com"

# set git ignore file
ln -s ~/Documents/code/dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
