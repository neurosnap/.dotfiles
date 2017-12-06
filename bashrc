export EDITOR="vim"
export TERM=xterm-256color
export PS1='[\u \w]\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
GIT_PROMPT_ONLY_IN_REPO=1

alias ducks="du -cks * | sort -rn | head"
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
alias gu="git remote update --prune"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
