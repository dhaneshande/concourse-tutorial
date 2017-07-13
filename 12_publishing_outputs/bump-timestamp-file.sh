#!/bin/sh

set -e # fail fast
set -x # print commands

pwd
ls -R
PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')
  
echo $ PACKAGE_VERSION
