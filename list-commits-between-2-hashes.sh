#!/bin/bash
git log \
    --pretty=format:"\`%h\` %s - %an - %ar" \
    --since="$(git show -s --format=%ci $(cat GIT_COMMIT_CURRENT))" \
    --until="$(git show -s --format=%ci $(cat GIT_COMMIT_NEW))" \
    | head -n -1 > GIT_CHANGELOG
