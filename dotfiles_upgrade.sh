#!/bin/zsh
cd

if [ -d "dotfiles" ]; then
  echo "\nDotfiles upgrade"
  cd ~/dotfiles
  git status
  git pull
  stow .
  cd
  source ~/.zshrc
fi

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

if [ -f "upgrade_casks.sh" ]; then
  echo "\nHomebrew casks greedy upgrade\n"
  ./upgrade_casks.sh
fi

if [ -f "upgrade.local.sh" ]; then
  echo "\nLocal upgrades\n"
  ./upgrade.local.sh
fi
