#!/bin/sh

# git push frea to repo bolgenos script

dated=`date +%Y-%m-%d-%H%M%S`

git add .
echo run git push on ${dated}
git commit -m 'some fix on '${dated}
git push -u origin master

