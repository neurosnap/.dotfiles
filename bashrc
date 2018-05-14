export EDITOR="vim"
export TERM=xterm-256color
export PS1='[\u \w]\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
GIT_PROMPT_ONLY_IN_REPO=1

alias ducks="du -cks * | sort -rn | head"
alias gu="git remote update --prune"
alias tmux="tmux -u"
alias mux="tmuxinator"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

[ -f "/usr/local/etc/bash_completion" ] && source "/usr/local/etc/bash_completion"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
