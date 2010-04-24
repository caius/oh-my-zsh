#!/bin/zsh

# SSH stuff
alias ssht='ssh -D 8080 -f -C -q -N'

alias gvg='grep -v grep'

alias rc='nano ~/.zshrc ~/.oh-my-zsh; nano ~/.oh-my-zsh/custom/aliases.zsh'
alias so='source ~/.zshrc && echo "Sourced ~/.zshrc"'
alias sshc='nano ~/.ssh/config'
alias gitrc='nano ~/.gitconfig'

alias cur='clear && pwd && ls'

## Top Stuff
alias cpu='top -o cpu'
alias ram='top -o rsize'

## My nifty stuff for copying/pasting dir paths
alias copypath='echo `pwd` | pbcopy'
alias cdpath='cd "`pbpaste`"'

# General ones
alias df='df -Hl'
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
alias mv='mv -i'
alias cp='cp -i'

alias dnsflush='dscacheutil -flushcache'

# Git alias'
alias git="nocorrect git"
alias gc='m ~/.gitconfig'
alias ghit='git'
alias bit='git'
alias got='git'
alias gut='git'
alias gti='git'
alias gtu='git'
alias gto='git'
alias giot='git'
alias hit='git'
alias tgit='git'
alias tgi='git'
alias gt='git'
alias gi='git'
alias it='git'
alias g='git'
alias t='git'
alias ggit='git'
alias fit='git'
alias igt='git'
alias ti='git'
alias tit='git'
alias gits='git'

alias gitst='git st'
alias gtst='git st'

# ZSH nocorrect's
alias aping='nocorrect aping'
alias aptitude='nocorrect aptitude'
