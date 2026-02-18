#!/usr/bin/env bash

set -Eeuo pipefail

if [ "${DOTFILES_DEBUG:-}" ]; then
    set -x
fi

readonly packages=(
    fuse
    gcc
    git
    zsh
)

function update_os_packages() {
    sudo apt-get update
    sudo apt-get upgrade -y
}

function install_apt_packages() {
    sudo apt-get install -y "${packages[@]}"
}

function main() {
    update_os_packages
    install_apt_packages
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
