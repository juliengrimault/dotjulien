# Editor
export EDITOR="atom -w"
export LANG="en_US.UTF-8"

#Git
export GIT_DIFF_OPTS=-U999999

# Paths
export PATH="./bin:/Applications/Postgres93.app/Contents/MacOS/bin:$HOME/.bin:$HOME/.rbenv/plugins/ruby-build/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/local/foreman/bin:/usr/local/bin:$PATH:$HOME/.pulse/bin:$HOME/.dotjulien/git:$HOME/.bin/arcanist/bin:$HOME/.cabal/bin"
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
