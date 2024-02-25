# STARSHIP

eval "$(starship init zsh)"


# PYTHON

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# WARP

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  ##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW


  # ITERM2
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


  ##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi


# THE FUCK

eval $(thefuck --alias)


# HOMEBREW (Contribution via GitHub)

export HOMEBREW_GITHUB_API_TOKEN='<gh token>'
