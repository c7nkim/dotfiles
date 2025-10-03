# (final) shell configurations
# this should be the last sourced config
# ensure this by making sure this filename is last when alphabetically sorted

# homebrew
if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
if [ -d "/home/linuxbrew/.linuxbrew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shelenv)"
fi

# path
PATH="${HOME}/.local/bin:${PATH}"

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# disabled
# init starship
# eval "$(starship init bash)"

# init oh-my-posh
if command -v oh-my-posh >/dev/null 2>&1; then
  eval "$(oh-my-posh init bash --config ${XDG_CONFIG_HOME}/oh-my-posh/config.yaml)"
fi
