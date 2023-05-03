#!/bin/bash

d=`date +%Y-%m-%d-%H-%M`
echo $d

git add *
git commit -m "commit $d"
git push -u origin main


