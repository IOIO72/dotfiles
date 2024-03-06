#!/bin/zsh
cd

echo "\nHomebrew upgrade"

brew update
brew upgrade

if [ -f "upgrade_casks.sh" ]; then
  echo "\nHomebrew casks greedy upgrade"
  ./upgrade_casks.sh
fi

if [ -d "dotfiles" ]; then
  echo "\nDotfiles upgrade"
  cd ~/dotfiles
  git status
  git pull
  stow .
  cd
  source ~/.zshrc
fi
