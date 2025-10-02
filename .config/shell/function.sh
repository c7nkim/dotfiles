# function configurations

dotfiles() {
  dotfiles_dir=${DOTFILES_DIR:-$HOME/dotfiles}

  case $1 in
  apply)
    stow -v --no-folding -d ${dotfiles_dir} -t ${HOME} .
    ;;
  bootstrap)
    echo "NOTE: This process is (should be) idempotent"
    echo "Installing packages..."
    brew bundle install --file "${dotfiles_dir}/.config/homebrew/Brewfile"
    echo "Stowing dotfiles..."
    stow --no-folding -d ${dotfiles_dir} -t ${HOME} .
    ;;
  cd)
    cd "${dotfiles_dir}" || exit
    ;;
  check)
    stow -nv --no-folding -d ${dotfiles_dir} -t ${HOME} .
    ;;
  source)
    source ~/.bash_profile
    ;;
  *)
    echo "Usage: dotfiles [apply|bootstrap|cd|check|source]"
    ;;
  esac
}
