#
# Functions
#

# Automatically run ls when cd-ing into a directory
cd() {
    builtin cd $* && ls;
}

#Get IP
ip-addr() {
    wget -qO- http://ipecho.net/plain
    echo
}

# Time ZSH startup
zsh-time() {
    time zsh -i -c exit
}

# Rename a file and keep it in the same location
rename() {
    if [ "$#" -ne 2 ]; then
        echo "usage: $0 path/to/file/old_name new_name"
        return
    fi

    mv $1 `dirname $1`/$2
}

# Duplicate a file to a new name in the same location
dup() {
    if [ "$#" -ne 2 ]; then
        echo "usage: $0 path/to/file/file copied_file"
        return
    fi

    cp $1 `dirname $1`/$2
}
