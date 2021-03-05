#!/bin/bash

# get the argument message
message="$1"

# stage all changes
git add .

# add commit
git commit -m "$message"

# get current branch and push
current_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git push origin "$current_branch"
