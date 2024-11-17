#
# Paths
#

#  Add the ~/bin/ directory for all users
export PATH=$PATH:~/bin
export PATH=$PATH:~/.bin

#
# Prefixed Paths
#

# Prefix /usr/local/bin for brew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# Prefix ~/.local/bin for Haskell
export PATH=$PATH:~/.local/bin

#  MacPorts
export PATH=$PATH:/opt/local/bin

# Add XCLink
export PATH=$PATH:~/.xclink/bin

# Add spotify tunning
export PATH=$PATH:~/.spicetify

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"