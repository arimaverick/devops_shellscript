#!/bin/bash
cd ~
git clone "$1"
name=$(echo `basename "git@github.com:arimaverick/devops_shellscript.git"` | cut -f 1 -d '.')
cd $name
mv index.html index_jenkins.html
git add .
git commit -a -m "$2"
git push
