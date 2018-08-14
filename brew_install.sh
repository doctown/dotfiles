# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
# brew install awscli # commandline tools for Amazon web services --pdated. Nice to have brew take care of it
# brew install bash-completion # smarter autocomplete for bash
brew install calc # my go-to calculator
# brew install ccrypt # strong file crypt tool
brew install dos2unix # convert CRLF <--> CR
brew install geoip # find where an IP address comes from
brew install git-flow
brew install hh # shell history browser / searcher
brew install htop # best top replacement
# brew install irssi # my favorite commandline irc client
brew install jq # 'like sed for JSON data'
brew install lftp # nice commandline ftp
brew install links # best text mode web browser
# brew install lynx # second best text mode web browser
# brew install ncdu # ncursessage browser
brew install nmap # never know when you will need to port scan something
brew install node # install node and npm
brew install tig # curses git repo browser
brew install tmux # terminal multiplexer # a better 'screen'
brew install tmuxinator # terminal multiplexer # a better 'screen'
brew install tree # view directorynder CWD
brew install unrarnarchive # .rar files
brew install wget # grab remote files with a URL
brew install vimpagerse # vim colorization rules for paging through any file - you may want to replace 'less' with this --STRUCTUREDISKFREQUENTLY
brew install imagemagick
# brew install macvim --override-system-vim  # install macvim as the default vim mode
brew install tap Goles/battery
brew install battery                          # adds a battery symbol that can be used in tmux status
brew install tmux-mem-cpu-load                # adds mem, cpu load in tmux status
brew install fzf                              # fuzzy finder in the terminal
brew install zsh zsh-completions
brew install cask

# homebrew-cask
brew tap caskroom/cask
brew tap caskroom/versions

# browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install firefox-beta
brew cask install safari-technology-preview

# coding
brew cask install kaleidoscope
brew cask install iterm
brew cask install mou
brew cask install postman         # api tool
brew cask install paw             # api tool
brew cask install sourcetree
brew cask install sublime-text

# productivity
brew cask install 1password
brew cask install alfred
brew cask install licecap

# entertainment
brew cask install spotify
brew cask install vlc

# misc
brew cask install screenflow
brew cask install slack
brew cask install the-unarchiver
