# Dotfiles

This repository contains my personal configuration files (dotfiles) for various development tools and environments. These files are primarily used in a Windows environment with WSL.

The reasoning is to keep dotfiles on the Windows filesystem, and create symbolic links to ~ on WSL1 and WSL2.

## Structure

The repository contains the following configuration files:

- `.gitconfig` - Git configuration
- `.bashrc` - Bash shell configuration
- `.zshrc` - Zsh shell configuration
- `.profile` - Profile configuration shared between shells

## Setup Instructions

To use these dotfiles on a new system:

1. Clone this repository:
   ```bash
   git clone https://github.com/backmag/dotfiles.git
   ```

2. Either copy the files to your home directory or create symbolic links:
   ```bash
   # Example of creating symbolic links
   ln -s /path/to/repo/.zshrc ~/.zshrc
   ln -s /path/to/repo/.bashrc ~/.bashrc
   ln -s /path/to/repo/.gitconfig ~/.gitconfig
   ln -s /path/to/repo/.profile ~/.profile
   ```

