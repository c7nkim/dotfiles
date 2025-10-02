# alias configurations

if command -v eza > /dev/null 2>&1; then
  alias ls='eza'
  alias tree="eza --tree"
fi

if command -v nvim > /dev/null 2>&1; then
  alias vi='nvim'
fi
