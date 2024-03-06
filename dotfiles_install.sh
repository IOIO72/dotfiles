#!/bin/zsh
cd

if [ ! -d ".oh-my-zsh" ]; then
  echo "\nZSH install"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "\nStow install"
brew install stow

if [ ! -d "dotfiles" ]; then
  echo "\nDotfiles install"
  git clone git@github.com:IOIO72/dotfiles.git
  cd ~/dotfiles
  stow .
  cd
  source ~/.zshrc
fi

echo "\nHomebrew install"
brew bundle install

echo "\nGIT config"
git config --global core.excludesfile ~/.gitignore_global

echo "\nInstall Xenselabs Driver https://www.xencelabs.com/de/support/download-drivers"
echo "Set iTerm2 'Settings/General/Preferences/Load preferences from a custom folder or URL' to '~/.iterm2_profile'"
