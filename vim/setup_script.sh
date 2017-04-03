#!/bin/sh

# Fetches all plugins and extras for my vim
# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Ruby on Rails related Plugins
# Install Vim goodies for Bundler
git clone git://github.com/tpope/vim-bundler.git ~/.vim/bundle/vim-bundler

# Rake.vim is a plugin leveraging projectionist.vim to enable you to use all those parts of rails.vim that you wish you could use on your other Ruby projects, including :A, :Elib and friends, and of course :Rake. It's great when paired with gem open and bundle open and complemented nicely by bundler.vim.

git clone git://github.com/tpope/vim-rake.git ~/.vim/bundle/vim-rake
git clone git://github.com/tpope/vim-projectionist.git ~/.vim/bundle/vim-projectionist
