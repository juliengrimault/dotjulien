# Editor
export EDITOR="subl -w"
export LANG="en_US.UTF-8"

#Git
export GIT_DIFF_OPTS=-U999999

#Homebrew
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

#Wine
export WINEARCH=win32

# Paths
export PATH="./bin:$HOME/.bin:/usr/local/sbin:/usr/local/bin:$PATH:$HOME/.dotjulien/git"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export JAVA_HOME="`/usr/libexec/java_home -v 1.7`"

# Timer
REPORTTIME=10 # print elapsed time when more than 10 seconds

# Quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Shortcuts
code=/Users/julien/code
library=/Users/julien/Library

# Misc options
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
