#!/usr/bin/env bash

set -Eeuo pipefail

if [ "${DOTFILES_DEBUG:-}" ]; then
    set -x
fi

readonly packages=(
    font-monaspace-nf
    neovim
    openssl@3
    visual-studio-code
    zed
)

function update_os_packages() {
    brew update
}

function install_os_packages() {
    brew install "${packages[@]}"
}

function main() {
    update_os_packages
    install_os_packages
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
