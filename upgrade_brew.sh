#!/bin/zsh
cd

date "+%n———— %H:%M:%S · Homebrew bundle install ——————————————————%n"
brew bundle install

if [ -f ~/.config/Brewfile.local ]; then
  date "+%n———— %H:%M:%S · Local homebrew bundle install ————————————%n"
  brew bundle install --file ~/.config/Brewfile.local
fi

date "+%n———— %H:%M:%S · Link external homebrew commands for shell completion%n"
brew completions link

date "+%n———— %H:%M:%S · Homebrew upgrade —————————————————————————%n"
brew update && brew upgrade
