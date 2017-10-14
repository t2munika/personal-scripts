#!/bin/bash

# View branches in a graph
alias sl='git log --graph --decorate'

# change branches
alias up='git checkout'

# update master
alias rebase='git fetch && git rebase master'

# create branch
function nb() {
  upstream="$2"
  if [ -z upstream ]; then
    upstream="origin/master"
  fi
  git branch $1 $upstream
}

# list branches
alias gb='git branch'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

