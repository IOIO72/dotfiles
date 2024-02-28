# Dotfiles

My personal Dotfiles (and scripts).

Using:

* _Stow_ to alias dotfiles to home directory
* _Oh My ZSH_ and plugins
* _Starship_ prompt
* _Karabiner_ for keyboard modifications
* _Node & Python_ enviroment management

## Requirements

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

IDEs

```
brew install --cask fleet
```

## Installation

```
git clone git@github.com:IOIO72/dotfiles.git
cd ~/dotfiles
stow .
```

## Update

```
cd ~/dotfiles
git pull
stow .
```

