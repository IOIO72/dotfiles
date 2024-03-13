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

if [ -f "upgrade_brew.sh" ]; then
  echo "\nHomebrew upgrade\n"
  ./upgrade_brew.sh
fi

if [ -f "upgrade_greedy.sh" ]; then
  echo "\nHomebrew upgrade greedy\n"
  ./upgrade_greedy.sh
fi

if [ -f "upgrade.local.sh" ]; then
  echo "\nLocal upgrades\n"
  ./upgrade.local.sh
fi
