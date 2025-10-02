# environment configurations

# xdg
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"

# dotfiles
export DOTFILES_DIR="${HOME}/dotfiles"

# bash
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export BASH_COMPLETION_USER_FILE="${XDG_CONFIG_HOME}/bash-completion/bash_completion"

# homebrew
# NOTE: we do not use "${XDG_CONFIG_HOME}/homebrew/Brewfile"
# as each system will have different package requirements
export HOMEBREW_BUNDLE_FILE="${HOME}/.local/config/homebrew/Brewfile"

# starhip
export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship/config.toml"
export STARSHIP_CACHE="${XDG_CACHE_HOME}/starship"

# less
export LESSHISTFILE=-

# npm
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# editor
export VISUAL=nvim
export EDITOR="${VISUAL}"

# rust
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

# go
export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
