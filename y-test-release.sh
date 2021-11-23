#!/bin/sh

t=$(date "+%Y%m%dt%H%M")

git --no-pager show
git status

read -p "Push tag $t? [y/n] " ok && [ "$ok" = "y" ] || exit 1

git tag test-v$t
git push origin ystack-test test-v$t