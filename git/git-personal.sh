#!/bin/bash

PROJECT_PATH=$(git rev-parse --show-toplevel)
PROJECT_NAME=$(basename $PROJECT_PATH)

BRANCH_NAME=$(git branch | sed -n '/\* /s///p')
BRANCH_NAME=$(echo $BRANCH_NAME | awk '{printf("%s%s\n",toupper(substr($0,1,1)),substr($0,2))}')
COMMITS_AHEAD=$(git rev-list origin..HEAD 2>/dev/null | wc -l)
COMMITS_AHEAD=$(echo $COMMITS_AHEAD | tr -d ' ')
BASE_HASH=$(git rev-parse HEAD~$COMMITS_AHEAD)
pulse personal -r $PROJECT_NAME-$BRANCH_NAME -e $BASE_HASH 
