# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
# I liked my bash shell. Let's imitate it here.
PROMPT='%{$fg_bold[green]%}%m:%{$fg_bold[blue]%}%1~$(git_prompt_info) %{$reset_color%}%n%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
