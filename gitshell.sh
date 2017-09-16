#!/bin/bash
# merge
git checkout -b branch001 origin/branch001
git checkout master
git merge -Xtheirs --squash branch001 -m "v${version}"

# commit
git commit -m "v${version}"

# tag
git tag v${version} -m "v${version}"

# push
git push origin v${version}
