#!/bin/sh

set -e

curl -L "https://github.com/php/doc-ru/pull/$1.patch" | git am
git commit --amend -m "$(git log --format=%B -n 1)" -m "Closes GH-$1"
git push origin master
