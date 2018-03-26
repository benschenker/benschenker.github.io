#!/bin/bash
# borrowed from https://gist.github.com/cobyism/4730490#gistcomment-1928142
set -e # stop on error

echo bulid client ...
hexo generate
echo check out branch dist ...
git checkout -b dist
echo add public folder
git add -f public
echo commit changes
git commit -m "deploy to gh-pages"
echo push to remote gh-pages
git push origin `git subtree split --prefix public`:master --force
echo checkout branch src
git checkout src
echo delete branch dist
git branch -D dist
echo All done!
