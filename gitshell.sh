#!/bin/bash
cd ~
git clone "$1"
name=$(echo `basename "$1"` | cut -f 1 -d '.')
cd $name
mv index.html index_jenkins.html
git add .
git commit -a -m "$2"
git push
