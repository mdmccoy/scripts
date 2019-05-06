#!/usr/bin/env bash

# gets the current git branch
function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' | sed 's/[*]//'
}

GIT_BRANCH=$(parse_git_branch)

#echo "${GIT_BRANCH} - ${1}"

git add . && git commit -m  "${GIT_BRANCH} - ${1}"
