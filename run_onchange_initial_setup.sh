#!/bin/bash

# -----------------------------------------------------------------------------
# Commands
# -----------------------------------------------------------------------------
# Aqua
aqua_installer_ver='v4.0.2'
aqua_installer_url="https://raw.githubusercontent.com/aquaproj/aqua-installer/${aqua_installer_ver}/aqua-installer"
curl -sSfL $aqua_installer_url | bash
export AQUA_GLOBAL_CONFIG=~/.config/aquaproj-aqua/aqua.yaml
~/.local/share/aquaproj-aqua/bin/aqua install --all

# -----------------------------------------------------------------------------
# Terminal
# -----------------------------------------------------------------------------
# Tmux plugin manager
if [[ ! -e ~/.tmux/plugins/tpm ]]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  [[ -e /.dockerenv ]] && export APPIMAGE_EXTRACT_AND_RUN=1
  ~/.tmux/plugins/tpm/bin/install_plugins
fi

# -----------------------------------------------------------------------------
# Shell
# -----------------------------------------------------------------------------
# Zsh
USER=$(whoami)
sudo chsh "$USER" -s /usr/bin/zsh
