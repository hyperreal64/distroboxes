[private]
default:
    @just --list



# Setup hyperreal configs
[group('Setup')]
hyperreal-setup-cli:
    #!/usr/bin/env bash
    set -euo pipefail

    DOTFILES_DIR="${HOME}/repos/gitlab.hyperreal.coffee/hyperreal/dotfiles"
    if [ ! -d "$DOTFILES_DIR" ]; then
      echo "${DOTFILES_DIR} not found."
      exit 1
    fi

    find "${DOTFILES_DIR}/config" -maxdepth 1 -mindepth 1 -exec ln -sf {} "${HOME}/.config" \;
    find "${DOTFILES_DIR}/zsh" -maxdepth 1 -mindepth 1 -exec ln -sf {} "${HOME}" \;
