!/usr/bin/env sh

set -e

yarn docs:build

cd docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:stack-admin/docs.git main:gh-pages

cd -
