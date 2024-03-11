# Dotfiles

My personal Dotfiles (and scripts).

Using:

* _Stow_ to alias dotfiles to home directory
* _Oh My ZSH_ and plugins
* _Starship_ prompt
* _iTerm2_ and _Warp_ terminal emulation and some commands
* _Fleet_ and _VSCode_ IDEs
* _Node & Python_ enviroment management
* _Karabiner_ for keyboard modifications
* _Xencelabs_ macro keypad
* _Typora_ markdown editor

## Installation

### Install via Curl

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/IOIO72/dotfiles/main/dotfiles_install.sh)"
```

### Install via Git

```sh
cd
git clone git@github.com:IOIO72/dotfiles.git
cd ~/dotfiles
./dotfiles_install.sh
```

## Update and upgrade

```sh
cd
./dotfiles_upgrade.sh
```
