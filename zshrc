# Theme
# Note that you should define any customizations at the top of your .zshrc
# (i.e. setting the POWERLEVEL9K_* variables) in your .zshrc.
source ~/.zsh/zshrc.d/theme/powerlevel9k.zsh

# Plugin manager
source ~/.zsh/zshrc.d/plugin_manager/zplug.zsh

# Plugins
for zshrc in ~/.zsh/zshrc.d/plugin/*.zsh; do
    source $zshrc
done

# Zsh itself
for zshrc in ~/.zsh/zshrc.d/zsh/*.zsh; do
    source $zshrc
done
