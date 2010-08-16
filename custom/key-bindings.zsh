# make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# "Fix" delete
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "^?" backward-delete-char