#!/bin/zsh
cd

echo "\nHomebrew bundle install"
brew bundle install

if [ -f ~/.config/Brewfile.local ]; then
  echo "\nLocal homebrew bundle install"
  brew bundle install --file ~/.config/Brewfile.local
fi

echo "\nLink external homebrew commands for shell completion"
brew completions link

echo "\nHomebrew upgrade"
brew update && brew upgrade
