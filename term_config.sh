#############################################
# generics aliases
#############################################
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# docker aliases
alias dcs="docker ps -a --format '{{.Names}}'"

# required within docker for comment transparent background
export TERM=screen-256color
export SHELL=/usr/bin/zsh

#############################################
# git aliases
#############################################
alias pullall="ls | xargs -I{} git -C {} pull"

alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'

alias ga="git add"
alias gaa="git add ."
alias gap='ga -p'
alias gcm="git commit -m"
alias gcam="git commit -am"

alias gpl="git pull"
alias gph="git push"

alias gco="git checkout"
alias gcb="git checkout -b"
alias gbd="git branch -d"
alias gbm="git branch -m"
alias gbr='git branch -v'

alias ghc="gh copilot explain"

alias gs="git status"
alias s="git status -sb"

alias gch='git cherry-pick'
alias gf='git fetch'term

# Helper function.
git_current_branch() {
  cat "$(git rev-parse --git-dir 2>/dev/null)/HEAD" | sed -e 's/^.*refs\/heads\///'
}

alias glog='git log --date-order --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='glog --graph'
alias gla='gl --all'

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

alias gpthis='gph origin $(git_current_branch)'
alias gpthis!='gph --set-upstream origin $(git_current_branch)'

alias grb='git rebase -p'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'

alias gr='git reset'
alias grh='git reset --hard'
alias grsh='git reset --soft HEAD~'

alias grv='git remote -v'

alias gs='git show'
alias gs.='git show --color-words="."'

alias gst='git stash'
alias gstp='git stash pop'

git-new() {
  [ -d "$1" ] || mkdir "$1" &&
  cd "$1" &&
  git init &&
  touch .gitignore &&
  git add .gitignore &&
  git commit -m "Add .gitignore."
}

# Query `glog` with regex query.
gls() {
  query="$1"
  shift
  glog --pickaxe-regex "-S$query" "$@"
}

# Checkout git-smart gem for more infos.
# More infos: https://github.com/geelen/git-smart
alias gup='git smart-pull'

# Create your own git alias, reusing other git shortcuts.
alias gpstaging='export PREVIOUS_BRANCH=$(git_current_branch) ; gco -B staging ; gpthis -f ; gco $PREVIOUS_BRANCH ; gbr -D staging'

# Create pull-request from command line (uses gh gem).
alias gpr='gpthis; git pull-request'
