# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"


# Add all . files as ln in ~

npm packages
npm install -g eslint-config-airbnb \
  babel-eslint \
  eslint-plugin-react

# NeoVim
sudo pip2 install --upgrade neovim            # add python 2 integration
sudo pip3 install --upgrade neovim            # add python 2 integration
sudo gem install neovim                       # Add ruby integration
npm install -g neovim                        # add javascript integration

pip3 install neovim-remote            # fixes for terminal neovim

# Vim setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

