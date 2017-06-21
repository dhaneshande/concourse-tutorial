#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
echo $(date) > bumpme

git config --global user.email "dande@miraclesoft.com"
git config --global user.name "github123"

git add .
git commit -m "Bumped date"
