export PS1='[\u \w]\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
GIT_PROMPT_ONLY_IN_REPO=1
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias ducks="du -cks * | sort -rn | head"
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
