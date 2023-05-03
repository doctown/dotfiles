/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
brew install unrar # .rar files
brew install wget # grab remote files with a URL
brew install imagemagick
# brew install macvim --override-system-vim  # install macvim as the default vim mode
brew install tap Goles/battery
brew install battery                          # adds a battery symbol that can be used in tmux status
brew install tmux-mem-cpu-load                # adds mem, cpu load in tmux status
brew install fzf                              # fuzzy finder in the terminal
brew install zsh zsh-completions
brew install ack                              # a search tool designed for code
brew install python                           # python3
brew install python@2                         # python2.7
brew install ripgrep  # used in vimrc for searching Files

brew install cask


# homebrew-cask
brew tap caskroom/cask
brew tap caskroom/versions

brew install --cask java8

# browsers
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask firefox
brew install --cask firefox-beta
brew install --cask safari-technology-preview

# coding
# brew install --cask kaleidoscope
brew install --cask iterm2
brew install --cask mou
brew install --cask postman         # api tool
# brew install --cask paw             # api tool
# brew install --cask sourcetree
# brew install --cask sublime-text

# productivity
# brew install --cask 1password
# brew install --cask alfred
# brew install --cask licecap       #

# entertainment
brew install --cask spotify
brew install --cask vlc

# misc
# brew install --cask screenflow
brew install --cask slack
brew install --cask the-unarchiver
brew install --cask virtualbox
