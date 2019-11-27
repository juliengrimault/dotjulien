# Some cd aliases
alias back='cd -'

# ......
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# derp derp
alias mkdirp='mkdir -p'

alias afind='ack-grep -il'

# Alias Git, moved most other aliases to ~/.gitconfig
# For some reason, Git doesn't like capitalized aliases. Some must remain.
alias g='git'

# Hidden files
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'


# Open from command line
alias finder='open -a Finder '