#!/bin/bash

dotfiles_root="$(cd "$(dirname "$SOURCE")" && pwd)"

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".gitignore" ]] && continue

	ln -si $dotfiles_root/$f ~/$f
	echo $f
done
