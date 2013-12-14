
_rbenv_prompt_info() {
	[[ -a .ruby-version ]] && echo "($(rbenv_prompt_info))"
}

PROMPT='$fg_bold[blue][$fg[red]%t$fg_bold[blue]]$fg_bold[blue][$fg[red]%n@%m:%~$fg_bold[blue]]$(git_prompt_info)$fg[yellow]$(_rbenv_prompt_info)$reset_color
 $ '
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green]("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="✗"
