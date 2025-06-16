#!/bin/zsh
cd

if [ -d "dotfiles" ]; then
  date "+%n———— %H:%M:%S · Dotfiles upgrade —————————————————————————%n"
  cd ~/dotfiles
  git status
  git pull
  stow .
  cd
  source ~/.zshrc
fi

if [ -f "upgrade_brew.sh" ]; then
  date "+%n———— %H:%M:%S · Homebrew upgrade —————————————————————————%n"
  ./upgrade_brew.sh
fi

if [ -f "upgrade_greedy.sh" ]; then
  date "+%n———— %H:%M:%S · Homebrew upgrade greedy ——————————————————%n"
  ./upgrade_greedy.sh
fi

if [[ $(command -v tldr) != "" ]]; then
  date "+%n———— %H:%M:%S · TLDR update ——————————————————————————————%n"
  tldr --update
fi

if [ -f "upgrade.local.sh" ]; then
  date "+%n———— %H:%M:%S · Local upgrades ———————————————————————————%n"
  ./upgrade.local.sh
fi
