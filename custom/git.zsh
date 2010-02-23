# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git rev-parse --is-inside-work-tree 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX%{$fg[yellow]%}$(parse_git_stash_count)"
}

# Get the no of stashes
parse_git_stash_count () {
  echo $(git stash list 2> /dev/null | wc -l | sed -Ee 's/^.*([0-9]+).*$/[\1]/' -e 's/\[0\]//') || return
}

parse_git_dirty () {
  if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || (echo "no branch" && return)
  echo ${ref#refs/heads/}
}
