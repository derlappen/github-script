#!/bin/bash

CUR_DATE="date +%Y%m%d_%H%M%S"

echo ""
sleep 0.25
echo "----------------------------------"
echo "Copy SSH-key to Github repository:"
echo "----------------------------------"
echo ""
sleep 0.8
cat $HOME/.ssh/id_rsa.pub

sleep 1
echo ""
echo "---------------------------------------"
echo "---------------------------------------"
echo "when done, provide repository ssh path:"
read giturl

echo ".git" > .gitignore

git init
git add *
git commit -m "initial commit"
git branch -M main
git remote add origin $giturl
git push -u origin main
