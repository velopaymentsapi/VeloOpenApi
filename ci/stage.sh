#!/bin/bash

set -ue

BRANCH=$1

rm -rf version/$BRANCH
rm -rf swagger
GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git fetch git@github.com:velopaymentsapi/VeloOpenApi.git gh-pages
git checkout gh-pages
GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git pull
mkdir -p version/$BRANCH
mkdir -p swagger
cp -R tmp/redoc/* version/$BRANCH/
cp -R tmp/swagger/* swagger/

if [ "$BRANCH" = 'master' ];
then
  ln -sf ./version/$BRANCH/index.html index.html
  git add index.html
fi

cp -R spec/* version/$BRANCH/
git add swagger
git add version
sed -i "s/^index.html$//g" .gitignore
