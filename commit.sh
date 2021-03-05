#!/bin/bash

# get the argument message
message="$1"

cd /home/ubuntu/android_cpi_builder

# stage all changes
git add .

# add commit
git commit -m "$message"

# get current branch and push
current_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git push origin "$current_branch"
