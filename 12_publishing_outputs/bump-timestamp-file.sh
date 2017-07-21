#!/bin/sh

set -e # fail fast
set -x # print commands

cd resource-tutorial/12_publishing_outputs/
ls -R
ls -la
git clone resource-tutorial/12_publishing_outputs/ updated-gist

cd updated-gist
ls -R
ls -la
PACKAGE_VERSION=$(cat package.json \
| grep version \
| head -1 \
| awk -F: '{ print $2 }' \
| sed 's/[",]//g' \
| tr -d '[[:space:]]')
echo "current package version:${PACKAGE_VERSION}"
echo $(PACKAGE_VERSION) > bumpme

git config --global user.email "dande@miraclesoft.com"
git config --global user.name "dhaneshande"

git add .
git commit -m "Bumped date"
