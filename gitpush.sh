#!/bin/bash

CUR_DATE="date +%Y%m%d_%H%M%S"

git add *
git commit -m "commit $CUR_DATE"
git push -u origin main
