_rbenv_prompt_info() {
	[[ -a .ruby-version ]] && echo " %{$fg[red]%}<$(rbenv_prompt_info)>"
}

_pyenv_prompt_info() {
	[[ -a .python-version ]] && echo " %{$fg[yellow]%}<$(python_version_info)>"
}

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"
local user_host='%{$fg_bold[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg_bold[blue]%}%~%{$reset_color%}'

local git_prompt='$(git_prompt_info)%{$reset_color%}'
local ruby_prompt='$(_rbenv_prompt_info)%{$reset_color%}'
local python_prompt='$(_pyenv_prompt_info)%{$reset_color%}'

# git theming (from: https://github.com/pgolm/dotfiles/blob/master/zsh/theme.zsh)
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[magenta]<"
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg[magenta]>%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%}▴%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[cyan]%}▾%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[yellow]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"


RPROMPT="${return_code}"

PROMPT="╭─${user_host} ${current_dir}${git_prompt}${ruby_prompt}${python_prompt}
╰─𝇇 "