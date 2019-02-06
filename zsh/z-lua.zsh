eval "$(lua ~/.bin/z.lua/z.lua --init zsh enhanced echo)"

alias j='z' # because im too used to autojump

alias js='z -c'      # restrict matches to subdirs of $PWD
alias ji='z -i'      # cd with interactive selection
alias jj='z -I'      # use fzf to select in multiple matches
alias jb='z -b'      # quickly cd to the parent directory