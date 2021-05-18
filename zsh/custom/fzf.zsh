# Fuzzy Finder https://github.com/junegunn/fzf

# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"


export FZF_DEFAULT_OPTS='
  --reverse --border --multi
  --color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254
  --color info:254,prompt:37,spinner:108,pointer:235,marker:235
  --preview "(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200"
'

export FZF_COMPLETION_TRIGGER='`'

# autocomplete option:
# --no-extended => only search for 1 term in autocomplete
#
export FZF_COMPLETION_OPTS='+c -x'


# CTRL + T => triggers fzf  and pste the selected files and directories onto the command line
# try to display using highlight, fallback to `cat`, then `tree` for folders and finally `head` as last resort
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

# CTRL+R => show history of commands
# use --exact match (not fuzzy), I find it to works better when searching through commands history
# position the preview at the bottom and have it wrap so that it display the entire command - toggle visible/not visible with '?'
export FZF_CTRL_R_OPTS=" --exact --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"


# ALT+C => cd into selected directory
# preview using tree
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}


# complete git co
_fzf_complete_git() {
    ARGS="$@"
    local branches
    branches=$(git branch -vv --all)
    if [[ $ARGS == 'git co'* ]]; then
        _fzf_complete "--reverse --multi" "$@" < <(
            echo $branches
        )
    else
        eval "zle ${fzf_default_completion:-expand-or-complete}"
    fi
}

_fzf_complete_git_post() {
    awk '{print $1}'
}
