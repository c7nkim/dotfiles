# dotfiles

This repository contains my personal configuration files (**dotfiles**) and instructions for settings up a new machine.

## Setup

### Requirements

Before using this repo, make sure you have the following tools installed:

- [**Homebrew**](https://brew.sh/) - to install packages
- [**Git**](https://git-scm.com/) - to clone the repository  
- [**GNU Stow**](https://www.gnu.org/software/stow/) - for managing symlinks

### Bootstrap

This repository leverages README.md files in empty directories to bootstrap the directory structure on a new system.
For example, on a new system, `~/.local/share` might not exist, but will be created when initialized via stow as the README.md is linked.

## Usage

### Installation

After installing homebrew, install git

```bash
brew install git
```

Clone this git repo in the home directory of the user applying these dotfiles.

```bash
git clone https://github.com/c7nkim/dotfiles.git ~/dotfiles
```

Install packages (this will install stow)

```bash
brew bundle install --file ~/dotfiles/.config/homebrew/Brewfile
```

Run stow from within the dotfiles directory

```bash
stow -v --no-folding -d ~/dotfiles -t ~ .
```

Restart your terminal
