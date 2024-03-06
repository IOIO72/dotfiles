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

echo "\nHomebrew upgrade"
brew update
brew upgrade

if [ -f "upgrade_casks.sh" ]; then
  echo "\nHomebrew casks greedy upgrade\n"
  ./upgrade_casks.sh
fi
