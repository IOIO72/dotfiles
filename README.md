# Dotfiles

My personal Dotfiles (and scripts) for macOS.

Using:

* _[Stow](https://www.gnu.org/software/stow/)_ to alias dotfiles to home directory
* [Homebrew](https://brew.sh/) for package management on macOS
* _[Oh My Zsh](https://ohmyz.sh/)_ and plugins
* _[Starship](https://starship.rs/)_ prompt
* _[iTerm2](https://iterm2.com/)_ and _[Warp](https://www.warp.dev/)_ terminal emulation and some commands
* _[Fleet](https://www.jetbrains.com/fleet/)_ and _[VSCode](https://code.visualstudio.com/)_ code editors
* _[Node](https://nodejs.org/)_ environment management via _[nvm](https://github.com/nvm-sh/nvm)_
* _[Python](https://www.python.org/)_ environment management via _[pyenv](https://github.com/pyenv/pyenv)_
* _[Karabiner](https://karabiner-elements.pqrs.org/)_ for keyboard modifications
* _[Xencelabs Quick Keys](https://www.xencelabs.com/products/xencelabs-quick-keys-remote)_ macro keypad
* _[Typora](https://typora.io/)_ markdown editor

## Installation

**Install via Curl**

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/IOIO72/dotfiles/main/dotfiles_install.sh)"
```

**Install manually**

1. Download the file [dotfiles_install.sh](https://raw.githubusercontent.com/IOIO72/dotfiles/main/dotfiles_install.sh).

2. ```sh
   chmod +x dotfiles_install.sh
   ./dotfiles_install.sh
   ```
   
> [!WARNING]
>
> Place the script outside the root of your home directory before you start it.
>
> You may also see errors, when stow can't create a symlink. In this case, append a *backup*-Suffix to them and restart the script.

## Hooks for local configuration

| Hook                      | File                       | Description                                                  |
| ------------------------- | -------------------------- | ------------------------------------------------------------ |
| Local Homebrew Bundle     | `~/.config/Brewfile.local` | Define a homebrew bundle with formulae and casks exclusively for the current machine |
| Local zshrc Configuration | `~/.zshrc.local`           | Define ZSH configuration for exclusively for current machine |
| Local Upgrade Script      | `~/upgrade.local.sh`       | Define a script to run for upgrades exclusively on the current machine |

## Update and upgrade

Keeps scripts and homebrew formulae and casks up to date.

```sh
cd
./dotfiles_upgrade.sh
```

## Recommendations

* Use the **same home directory name** on each mashine, to avoid conflicts with some configuration files, which store the absolute path to the home directory.
* **Backup local files** in the home directory, which will get overwritten by the ones of the dotfiles repository. The file `~/.zshrc` is definitely one of those.

