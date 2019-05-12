HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')
autoload -Uz add-zsh-hook
add-zsh-hook precmd histdb-update-outcome
