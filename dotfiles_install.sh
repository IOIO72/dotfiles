#!/bin/zsh
cd

if [[ $(command -v brew) == "" ]]; then
  echo "Homebrew install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  cd
fi

if [ ! -d ".oh-my-zsh" ]; then
  echo "\nOh-My-Zsh install"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cd
fi

echo "\nStow install"
brew list stow || brew install stow

if [ ! -d "dotfiles" ]; then
  echo "\nDotfiles install"
  git clone git@github.com:IOIO72/dotfiles.git
  cd ~/dotfiles
  stow .
  cd
fi

if [ -f "dotfiles_upgrade.sh" ]; then
  echo "\nUpgrade brew and dotfiles"
  ./dotfiles_upgrade.sh
  cd
fi

if [ -f ".gitignore_global" ]; then
  echo "\nGIT config"
  git config --global core.excludesfile ~/.gitignore_global
  git config --global core.excludesfile
fi

echo "\nInstall Xenselabs Driver https://www.xencelabs.com/de/support/download-drivers"
echo "Open '~/Library/Saved Searches' in Finder and add selected ones to finder favorites via ^⌘T"
echo "Set iTerm2 'Settings/General/Preferences/Load preferences from a custom folder or URL' to '~/.iterm2_profile'"
