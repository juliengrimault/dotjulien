# Set Apple Terminal.app resume directory
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
  }

  chpwd
}

# Load functions and completion
fpath=(~/.zsh/functions $fpath)
autoload -U compinit
compinit
autoload -U ~/.zsh/functions/*(:t)

# Load files
for file (~/.zsh/*.zsh) source $file

source ~/.zsh/themes/af-magic.zsh-theme
