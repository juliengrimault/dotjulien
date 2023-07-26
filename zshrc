# For sudo-ing aliases
# https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

autoload -U compinit && compinit

# this is needed to make the `common-aliases` plugin work
autoload -U is-at-least

# Use zsh-completions if it exists
if [[ -d "/usr/local/share/zsh-completions" ]]; then
    fpath=($fpath /usr/local/share/zsh-completions)
fi

# Load zsh configurations
source ~/.zsh/init.zsh

# start antibody plugin manager
source <(antibody init)
antibody bundle < ~/.zsh/plugins/zsh_plugins.txt
export PATH=$PATH:/Users/julien/.spicetify

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

