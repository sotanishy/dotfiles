#!/bin/bash

for f in .??*
do
	[[ "$f" == ".git" ]] && continue

	ln -s "$(cd "$(dirname "$0")" && pwd)"/$f ~/$f
	echo $f
done
