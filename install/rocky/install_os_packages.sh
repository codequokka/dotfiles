#!/usr/bin/env bash

set -Eeuo pipefail

if [ "${DOTFILES_DEBUG:-}" ]; then
    set -x
fi

readonly packages=(
    epel-release
    fuse
    git
    util-linux-user
    zsh
)

function update_os_packages() {
    sudo dnf check-update
    sudo dnf update -y
}

function install_os_packages() {
    sudo dnf install -y "${packages[@]}"
}

function main() {
    update_os_packages
    install_os_packages
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
