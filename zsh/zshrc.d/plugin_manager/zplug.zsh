export ZPLUG_HOME=${HOME}/.zplug
source ${ZPLUG_HOME}/init.zsh

# Theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Cd
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/cd-gitroot"

# Completion
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "docker/cli", use:"contrib/completion/zsh/_docker", lazy:true

# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# History
zplug "larkery/zsh-histdb", use:sqlite-history.zsh
# zplug "m42e/zsh-histdb", use:sqlite-history.zsh, at:update_outcome
zplug "b4b4r07/zsh-history", use:init.zsh, hook-build:"make && sudo make install"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf 'Install? [y/N]: '
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
