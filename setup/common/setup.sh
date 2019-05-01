#!/bin/sh

# Make likns from dotfiles/ to ${HOME}/
${HOME}/dotfiles/setup/common/make_links.sh

# Install packages for system python3
${HOME}/dotfiles/setup/common/pip3.sh
