# dotfiles

## How to use

### On the your bare-metal or virtual machine host

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "${HOME}/.local/bin" -d init --apply curledupfox
```

### On the your docker container

[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/curledupfox/dotfiles)

### On the Github codespaces

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/curledupfox/dotfiles)

## CI

[![test_dotfiles_deployment](https://github.com/curledupfox/dotfiles/actions/workflows/test_dotfiles_deployment.yaml/badge.svg)](https://github.com/curledupfox/dotfiles/actions/workflows/test_dotfiles_deployment.yaml)
