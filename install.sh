#!/bin/bash

BASEDIR="$(cd "$(dirname "$SOURCE")" && pwd)"

# vim
ln -si $BASEDIR/.vimrc ~/.vimrc
ln -si $BASEDIR/.vim ~/.vim

# bash
ln -si $BASEDIR/.bashrc ~/.bashrc

# zsh
ln -si $BASEDIR/.zshrc ~/.zshrc

# git
ln -si $BASEDIR/.gitconfig ~/.gitconfig

# others
ln -si $BASEDIR/.inputrc ~/.inputrc
