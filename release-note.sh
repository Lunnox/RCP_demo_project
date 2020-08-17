
#!/bin/bash

tag=$(git describe --tags `git rev-list --tags --max-count=1`)
echo "RCP demo project $tag" > release-note.txt 
git log --pretty=format:"%s"| grep -i -E "*" >> release-note.txt
