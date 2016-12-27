###########
# ALIASES #
###########

alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
alias ls="ls -FG"
alias cp="cp -iv"
alias df="df -h"

# Use modern regexps for sed, i.e. "(one|two)", not "\(one\|two\)"
alias sed="sed -E"

# Copy-pasting from internet "$ python script.py" works
alias \$=''

alias diff="colordiff -u"i

alias dotfiles="cd ~/.dotfiles"

# Global aliases
alias -g G="| grep -E "
alias -g ONE="| awk '( print \$1)'"

