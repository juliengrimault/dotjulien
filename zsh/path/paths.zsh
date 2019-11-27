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

# Prefix ~/.local/bin for Haskell
export PATH=$PATH:~/.local/bin

#  MacPorts
export PATH=$PATH:/opt/local/bin

# Add XCLink
export PATH=$PATH:~/.xclink/bin

