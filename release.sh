#! /bin/bash

git checkout releases
git reset --hard master
npm run build
rm -rf src
git add -f lib
git commit -m 'Release build'
git push -f
git checkout master
