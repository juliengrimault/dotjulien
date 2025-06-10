## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
# These lines ensure that:
# •	less is used as the default pager.
# •	When used, it preserves color output in the terminal.
export PAGER="less"
export LESS="-R"

export LC_CTYPE=$LANG
