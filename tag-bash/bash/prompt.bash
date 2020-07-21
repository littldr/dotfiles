GREEN="\033[1;32m"
BLUE="\033[1;34m"
RED="\033[1;31m"
MAGENTA="\033[0;35m"
PURPLE="\033[2;35m"
YELLOW="\033[1;33m"
NO_COLOR="\033[0m"

GIT_PROMPT_CLEAN='✓'
GIT_PROMPT_DIRTY='✗'

_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2>/dev/null) || ref=$(git rev-parse --short HEAD 2>/dev/null) || return
  ref=${ref#refs/heads/}
  if [[ ! -z ref ]]; then
    GIT_STATUS="$(git status -s 2>/dev/null | tail -n1)"
    echo -en " $MAGENTA<$ref"
    if [[ -n $GIT_STATUS ]]; then
      echo -en "$RED$GIT_PROMPT_DIRTY"
    else
      echo -en "$GREEN$GIT_PROMPT_CLEAN"
    fi
    echo -en "$MAGENTA>$NO_COLOR"
  fi
}

export PS1="╭─$GREEN\u@\h $BLUE\w\$(_git_prompt_info)$NO_COLOR
╰─𝇇 "
