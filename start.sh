#!/bin/sh
set -e

INPUT_BRANCH=${INPUT_BRANCH:-master}

echo "Push to branch $INPUT_BRANCH";
[ -z "${INPUT_GITHUB_TOKEN}" ] && {
    echo 'Missing input "github_token: ${{ secrets.GITHUB_TOKEN }}".';
    exit 1;
};

remote_repo="https://${GITHUB_ACTOR}:${INPUT_GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

git checkout -B ${INPUT_BRANCH}
git push "${remote_repo} ${INPUT_BRANCH}

