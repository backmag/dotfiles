# Dotfiles

This repository contains my personal configuration files (dotfiles) for various development tools and environments. These files are primarily used in a Windows environment with WSL.

The reasoning is to keep dotfiles on the Windows filesystem, and create symbolic links to ~ on WSL1 and WSL2.
The setup is in large parts based on this [blog post](https://hashnode.com/post/customize-hyper-terminal-in-windows-using-oh-my-zsh-and-powerline-fonts-ckggfmcwc00brrls1f8va9jfl).

## Structure

The repository contains the following configuration files:

- `.gitconfig` - Git configuration
- `.bashrc` - Bash shell configuration
- `.zshrc` - Zsh shell configuration
- `.profile` - Profile configuration shared between shells
- `.config/nvim` - Configuration for neovim, using lazy

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
   ln -s /path/to/repo/.config/nvim ~/.config/nvim
   ```

3. Download/install other dependencies in the WSL home path. Here's a list that's probably not exhaustive: 
- Hyper
Install from somewhere reasonable, change `%USERPROFILE%/.hyper.js` to `shell: 'C:\\Windows\\System32\\bash.exe'`.

- Fzf

Install to `~` by:
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
/.fzf/install
```

- Zsh

```bash
sudo apt-get install zsh
```

- Oh-my-zsh

Install to `~` by: 

```bash
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash 
```

- Neovim

```bash
# Clone repo
git clone https://github.com/neovim/neovim.git
# Install dependencies needed to make make
sudo apt-get install ninja-build gettext cmake curl build-essential
# Build makefile
make CMAKE_BUILD_TYPE=RelWithDebInfo
# Install neovim
sudo make install
# Create empty config-folder
mkdir .config
# Create symlink as described under setup instructions
```
