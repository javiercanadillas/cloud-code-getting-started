# shellcheck shell=bash
###################################################################
# Bash_profile .dotfile - DO NOT make customizations in this file,#
# use .bash_profile_local instead.                                #
###################################################################
DOTFILES_LOC="${HOME}/.dotfiles"
EXTRA_BASH_PROFILE_LOC="${HOME}/.bash_profile_local"
FZF_DIR="$HOME/.config/fzf"

## Source the existing bashrc file, make no distiction between
## interactive and non-interactive shells
if [ -f "${HOME}/.bashrc" ]; then
  # shellcheck source=/dev/null
  source "${HOME}/.bashrc"
fi

## Enable rich color in the terminal
export TERM=xterm-256color

## Make Minikube truly _stylish_
export MINIKUBE_IN_STYLE=false

## Enable customized prompt (Bash powerline)
# shellcheck source=/dev/null
source "${DOTFILES_LOC}/prompt"

## Substitute the VSCode command by cloud shell editor
function code {
  cloudshell edit "${@}"
}

## Include local bin dir in PATH
export PATH="${PATH}:${HOME}/bin"

## Source extra user-defined configuration file
# shellcheck source=/dev/null
source "$EXTRA_BASH_PROFILE_LOC"