#!/bin/bash

BASEDIR="$(cd "$(dirname "$SOURCE")" && pwd)"

# git settings
ln -si "$BASEDIR/.gitconfig" ~/.gitconfig

# bash settings
ln -si "$BASEDIR/.bashrc" ~/.bashrc
ln -si "$BASEDIR/.bash_aliases" ~/.bash_aliases

# zsh settings
if [ ! -d ~/.zplug ]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
ln -si "$BASEDIR/.zshrc" ~/.zshrc
ln -si "$BASEDIR/.zsh_aliases" ~/.zsh_aliases
