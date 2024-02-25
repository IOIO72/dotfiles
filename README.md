# Dotfiles

My personal Dotfiles (and scripts).

Using:

* _Stow_ to alias dotfiles to home directory
* _Oh My ZSH_ and plugins
* _Starship_ prompt
* _Karabiner_ for keyboard modifications

## Requirements

```
brew install stow
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install fzf
brew install zoxide
brew install starship
brew install --cask iterm2
brew install --cask karabiner-elements
brew install --cask font-jetbrains-mono-nerd-font
```

## Installation

```
$ git clone git@github.com/IOIO72/dotfiles.git
$ cd dotfiles
$ stow .
```
