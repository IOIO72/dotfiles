# Dotfiles

My personal Dotfiles (and scripts).

Using:

* _Stow_ to alias dotfiles to home directory
* _Oh My ZSH_ and plugins
* _Starship_ prompt
* _iTerm2_ and _Warp_ terminal emulation
* _Karabiner_ for keyboard modifications
* _Xencelabs_ macro keypad
* _Node & Python_ enviroment management
* _Typora_ markdown editor

## Installation

### Install via Curl:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/IOIO72/dotfiles/main/dotfiles_install.sh)"
```

### Install via Git:

```
brew install stow
```

```
cd
git clone git@github.com:IOIO72/dotfiles.git
cd ~/dotfiles
stow .
cd
source ~/.zshrc

./dotfiles_install.sh
```

### Install manually

```
brew install stow
```

Oh my ZSH

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
brew install fzf
```

```
brew install zoxide
```

Starship prompt

```
brew install starship
```

```
brew tap homebrew/cask-fonts
```

```
brew install --cask font-jetbrains-mono-nerd-font
```

Environment management Python & Node

```
brew install nvm
```

```
brew install pyenv
```

Terminal & utilities

```
brew install --cask iterm2
```

> [!NOTE]
>
> Set `Settings/General/Preferences/Load preferences from a custom folder or URL` to `~/.iterm2_profile`

```
brew install --cask warp
```

```
brew install thefuck
```

Apps

```
brew install --cask karabiner-elements
```

```
open https://www.xencelabs.com/de/support/download-drivers
```

```
brew install --cask typora
```

IDEs & Dev

```
brew install --cask fleet
```

```
git config --global core.excludesfile ~/.gitignore_global
```

Setup Dotfiles

```
cd
git clone git@github.com:IOIO72/dotfiles.git
cd ~/dotfiles
stow .
cd
source ~/.zshrc
```

## Update

```
cd
./dotfiles_upgrade.sh
```

