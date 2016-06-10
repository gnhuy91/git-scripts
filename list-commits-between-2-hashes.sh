#!/bin/bash
git log \
    --pretty=format:"\`%h\` %s - %an, %ar" \
    --since="$(git show -s --format=%ci ${git_commit_current})" \
    --until="$(git show -s --format=%ci ${git_commit_new})" \
    | head -n -1 > GIT_CHANGELOG
