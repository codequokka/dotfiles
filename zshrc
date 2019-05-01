# Plugins
for zshrc in ~/.zsh/zshrc.d/plugin/*.zsh; do
    source $zshrc
done

# Zsh itself
for zshrc in ~/.zsh/zshrc.d/zsh/*.zsh; do
    source $zshrc
done
