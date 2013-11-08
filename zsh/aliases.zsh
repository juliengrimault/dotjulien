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
alias s='subl .'
alias e='subl . &'

# Rails
alias tlog='tail -f log/development.log'
alias b='bundle exec'
alias bake='bundle exec rake'
alias bm='bin/m'

# Mac OS X
alias o='open .'
alias screensaver='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '
