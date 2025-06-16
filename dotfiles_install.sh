#!/bin/zsh
cd

if [[ $(command -v brew) == "" ]]; then
  date "+%n———— %H:%M:%S · Homebrew install —————————————————————————%n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  cd
fi

if [ ! -d ".oh-my-zsh" ]; then
  date "+%n———— %H:%M:%S · Oh-My-Zsh install ————————————————————————%n"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cd
fi

date "+%n———— %H:%M:%S · Stow install —————————————————————————————%n"
brew list stow || brew install stow

if [ ! -d "dotfiles" ]; then
  date "+%n———— %H:%M:%S · Dotfiles install —————————————————————————%n"
  git clone git@github.com:IOIO72/dotfiles.git
  cd ~/dotfiles
  stow .
  cd
fi

if [ -f "dotfiles_upgrade.sh" ]; then
  date "+%n———— %H:%M:%S · Upgrade brew and dotfiles ————————————————%n"
  ./dotfiles_upgrade.sh
  cd
fi

if [ -f ".gitignore_global" ]; then
  date "+%n———— %H:%M:%S · Git config ———————————————————————————————%n"
  git config --global core.excludesfile ~/.gitignore_global
fi

date "+%n———— %H:%M:%S · Install script finished ——————————————————"
echo "\nInstall Xenselabs Driver https://www.xencelabs.com/de/support/download-drivers"
echo "Open '~/Library/Saved Searches' in Finder and add selected ones to finder favorites via ^⌘T"
echo "Set iTerm2 'Settings/General/Preferences/Load preferences from a custom folder or URL' to '~/.iterm2_profile'"
