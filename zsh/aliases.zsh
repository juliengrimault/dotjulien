# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# ls
alias ls="ls -F"

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Git
alias gsu='git submodule update --init --recursive'
alias gs='git status'
compdef _git gs=git-status
alias gut='git'

# Editor
alias a='atom .'

# Mac OS X
alias o='open .'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '

# Swift Package manager
alias sgp='swift package generate-xcodeproj'
