#!/bin/zsh

# SSH stuff
alias ssht='ssh -D 8080 -f -C -q -N'

## Rails stuff
alias edev='RAILS_ENV=development'
alias etest='RAILS_ENV=test'
alias ecuke='RAILS_ENV=cucumber'
alias estaging='RAILS_ENV=staging'
alias eproduction='RAILS_ENV=production'
alias eprod="eproduction"

alias be="bundle exec"

alias rcap=$(whence -p cap)

alias gvg='grep -v grep'

alias rc='mate ~/.zshrc ~/.oh-my-zsh'
alias so='source ~/.zshrc && echo "Sourced ~/.zshrc"'
alias sshc='mate -w ~/.ssh/config'
alias irbrc='mate -w ~/.irbrc'
alias gitrc='mate -w ~/.gitconfig'

# alias nt="iterm_clone_tab"
alias nt="terminal_clone_tab"

alias cur='clear && pwd && ls'

## Top Stuff
alias cpu='top -o cpu'
alias ram='top -o rsize'

# Encrypted disk images
alias cl="open_and_cd_to_disk_image Clients"
alias bb="open_and_cd_to_disk_image Brightbox && cd src"
alias pp="open_and_cd_to_disk_image PizzaPowered && cd src"

alias same='open .'

## My nifty stuff for copying/pasting dir paths
alias copypath='echo `pwd` | pbcopy'
alias cdpath='cd "`pbpaste`"'


## Textmate alias'
alias mate='/Users/caius/bin/mate -r'
alias m='mate -r'
alias matew='mate -rw'
alias mw='mate -rw'
alias m.='mate .'

# XcodeBuild with network builds
alias buildNetwork='xcodebuild build -bonjourbuildhosts -project '
alias buildLocal='xcodebuild build  -project '
# Open xcode projects named after the folder you're in
# alias xcode='open `pwd | sed -e "s/^\/.*\///g"`.xcodeproj'
# Open all .xcodeproj files in the current folder
alias xcode='open *.xcodeproj'

# General ones
alias scn='svn'
alias df='df -Hl'
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
alias mv='mv -i'
alias cp='cp -i'
#alias rm='rm -i'

alias dnsflush='dscacheutil -flushcache'

# Git alias'
alias git="nocorrect git"
alias bitx='gitx'
alias gc='m ~/.gitconfig'
alias ghit='git'
alias bit='git'
alias gib='git'
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

alias gme='gem'

alias rkae='rake'

alias culerity='irb -rculerity-boot'
alias celerity='jruby -S irb -rcelerity-boot'

alias js="java org.mozilla.javascript.tools.shell.Main"

alias mysqlstart='sudo mysqld_safe &'
alias mysqlstop='mysqladmin -u root -p shutdown'
alias sqlite='sqlite3'

alias postgresstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgresstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# ZSH nocorrect's
alias aping='nocorrect aping'
alias port='nocorrect port'
alias brew='nocorrect brew'
alias iplayer="get_iplayer --isodate"
alias scp="nocorrect scp"

# Override ZSH's built ins
alias time="$(whence -p time)"

# bbcloud cli
alias bb-accounts="brightbox-accounts"
alias bb-acc="brightbox-accounts"
alias bb-config="brightbox-config"
alias bb-servers="brightbox-servers"
alias bb-srvs="brightbox-servers"
alias bb-users="brightbox-users"
alias bb-cloudips="brightbox-cloudips"
alias bb-cips="brightbox-cloudips"
alias bb-images="brightbox-images"
alias bb-imgs="brightbox-images"
alias bb-types="brightbox-types"
alias bb-typs="brightbox-types"
alias bb-zones="brightbox-zones"

autoload zmv
