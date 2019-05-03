#!/bin/sh

# Install command line tools
${HOME}/dotfiles/setup/mac/install_cmdlinetools.sh

# Install homebrew
${HOME}/dotfiles/setup/mac/install_homebrew.sh

# Install apps by using homebrew
${HOME}/dotfiles/setup/mac/brew.sh

# Make links from dotfiles to ${HOME}
${HOME}/dotfiles/setup/mac/make_links.sh
