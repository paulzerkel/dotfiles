shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000000

# aliases
alias ls="ls -GFlash"

if [[ $(uname) == "Darwin" ]]; then
  # git bash
  if [[ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
  fi
fi

