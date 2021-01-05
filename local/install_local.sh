#!/bin/bash

BASEDIR="$(cd "$(dirname "$SOURCE")" && pwd)"

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue

    ln -si $BASEDIR/$f ~/$f
    echo $f
done
